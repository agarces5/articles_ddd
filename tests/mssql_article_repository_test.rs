use articles_ddd::article::domain::{article::Article, article_repository::ArticleRepository};
use articles_ddd::article::infrastructure::create_config::set_tcp_client;
use articles_ddd::article::infrastructure::mssql_article_repository::MssqlArticleRepository;

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
    let mut repo = create_repo().await.unwrap();

    let new_article = Article::new(
        repo.calc_new_id("0001").await.unwrap(),
        "ARTICULO DE PRUEBA",
        "0001",
    );

    let result = repo.save(&new_article).await;
    repo.remove(new_article.id())
        .await
        .unwrap_or_else(|e| eprintln!("{e}"));

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
