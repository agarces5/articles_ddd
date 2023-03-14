use std::thread;

use articles_ddd::article::application::create_article::CreateArticleUseCase;
use articles_ddd::article::domain::{article::Article, article_repository::ArticleRepository};
use articles_ddd::article::infrastructure::db::create_config::set_tcp_client;
use articles_ddd::article::infrastructure::db::mssql_article_repository::MssqlArticleRepository;

#[tokio::test]
async fn database_connection() {
    // Creamos una conexión a una base de datos de prueba
    let mut client = set_tcp_client().await.unwrap();
    let result = client
        .query(
            "SELECT DISTINCT 1
            FROM [WTPV_CALEIA_TEST].[dbo].[TP_ARTICULO]",
            &[],
        )
        .await
        .unwrap();
    let count: i32 = result.into_row().await.unwrap().unwrap().get(0).unwrap();
    assert_eq!(count, 1);
}
async fn create_repo() -> anyhow::Result<MssqlArticleRepository> {
    let client = set_tcp_client().await.unwrap();
    let repo = MssqlArticleRepository::new(client);

    Ok(repo)
}
#[tokio::test]
async fn test_save_article() {
    let mut repo = Box::new(create_repo().await.unwrap());
    let id = repo.calc_new_id("0001").await.unwrap();

    let mut create_article_use_case = CreateArticleUseCase::new(repo);
    let result = create_article_use_case
        .execute("ARTICULO DE PRUEBA", "0001")
        .await;

    let mut repo = Box::new(create_repo().await.unwrap());

    repo.remove(id).await.unwrap_or_else(|e| eprintln!("{e}"));

    assert!(result.is_ok());
}
#[tokio::test]
async fn test_calc_id() {
    let mut repo = create_repo().await.unwrap();

    let new_article = Article::new(
        repo.calc_new_id("0101").await.unwrap(),
        "PRUEBA DE CALC ID",
        "0101",
    );

    repo.save(&new_article)
        .await
        .unwrap_or_else(|e| eprintln!("{e}"));

    let id = new_article.id();
    let new_id: i32 = repo.calc_new_id(new_article.family_id()).await.unwrap();

    repo.remove(new_article.id())
        .await
        .unwrap_or_else(|e| eprintln!("{e}"));
    assert_eq!(id + 1, new_id);
}
#[tokio::test]
async fn test_find_article_by_id() {
    let mut repo = create_repo().await.unwrap();

    let new_article = Article::new(100, "PRUEBA DE FIND BY ID", "0001");

    repo.save(&new_article)
        .await
        .unwrap_or_else(|e| eprintln!("{e}"));
    let result = repo.find_by_id(new_article.id()).await;
    repo.remove(new_article.id())
        .await
        .unwrap_or_else(|e| eprintln!("{e}"));
    assert_eq!(result.unwrap(), new_article.clone());
}
#[tokio::test]
async fn test_remove_article() {
    let mut repo = create_repo().await.unwrap();

    let new_article = Article::new(200, "PRUEBA DE REMOVE", "0001");

    repo.save(&new_article)
        .await
        .unwrap_or_else(|e| eprintln!("{e}"));

    assert!(repo.remove(new_article.id()).await.is_ok());
    assert!(repo.find_by_id(new_article.id()).await.is_err());
}
#[tokio::test]
async fn test_get_all_by_family_id() {
    thread::spawn(move || async {
        let mut repo = create_repo().await.unwrap();
        let articles = vec![
            Article::new(301, "Articulo 1", "0001"),
            Article::new(302, "Articulo 2", "0001"),
            Article::new(303, "Articulo 3", "0001"),
            Article::new(304, "Articulo 4", "0001"),
            Article::new(305, "Articulo 5", "0001"),
        ];
        for article in &articles {
            repo.save(article)
                .await
                .expect(&("Failed to save ".to_string() + &article.to_string()));
        }

        let result = repo.get_all_by_family("0001").await.unwrap();

        for article in &articles {
            repo.remove(article.id())
                .await
                .expect(&("Failed to save ".to_string() + &article.to_string()));
        }
        assert_eq!(&result, &articles);
    });
}
#[tokio::test]
async fn test_find_article_by_subname() {
    thread::spawn(move || async {
        let mut repo = create_repo().await.unwrap();
        let articles = vec![
            Article::new(301, "Articulo 1", "0001"),
            Article::new(302, "Articulo 2", "0001"),
            Article::new(303, "Articulo 3", "0001"),
            Article::new(304, "Articulo 4", "0001"),
            Article::new(305, "Articulo 5", "0001"),
        ];
        for article in &articles {
            repo.save(article)
                .await
                .expect(&("Failed to save ".to_string() + &article.to_string()));
        }

        let result = repo.find_by_subname("articulo").await.unwrap();

        for article in &articles {
            repo.remove(article.id())
                .await
                .expect(&("Failed to save ".to_string() + &article.to_string()));
        }
        assert_eq!(&result, &articles);
    });
}
#[tokio::test]
async fn test_update_article() {
    thread::spawn(move || async {
        let mut repo = create_repo().await.unwrap();
        let articles = vec![
            Article::new(501, "ARTICULO 1", "0001"),
            Article::new(502, "ARTICULO 2", "0101"),
            Article::new(503, "ARTICULO 3", "0101"),
        ];
        for article in articles {
            repo.save(&article)
                .await
                .expect(&("Failed to save ".to_string() + &article.to_string()));
        }
        let articles_updated = vec![
            Article::new(501, "ARTICULO 1 UPDATED", "0001"),
            Article::new(502, "ARTICULO 2", "0001"),
            Article::new(503, "ARTICULO 3 UPDATED", "0001"),
        ];

        for article in articles_updated {
            assert!(repo
                .update(article.id(), article.name(), article.family_id())
                .await
                .is_ok());
            assert_eq!(repo.find_by_id(article.id()).await.unwrap(), article);
        }
    });
}
