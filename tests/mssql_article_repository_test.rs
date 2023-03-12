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

async fn create_repo_and_article() -> anyhow::Result<(MssqlArticleRepository, Article)> {
    let client = set_tcp_client().await.unwrap();
    let mut repo = MssqlArticleRepository::new(client);

    let family_id = "0101";
    let name = "ARTICULO DE PRUEBA";
    let id = repo.calc_new_id(family_id).await.unwrap();

    let new_article = Article::new(&id, name, family_id);

    Ok((repo, new_article))
}

#[tokio::test]
async fn test_save_article() {
    let (mut repo, new_article) = create_repo_and_article().await.unwrap();

    assert!(repo.save(&new_article).await.is_ok());
    repo.remove(new_article.id()).await.unwrap();
}
#[tokio::test]
async fn test_calc_id() {
    let (mut repo, new_article) = create_repo_and_article().await.unwrap();

    repo.save(&new_article).await.unwrap();

    let id: i32 = repo
        .calc_new_id(new_article.family_id())
        .await
        .unwrap()
        .parse()
        .unwrap();
    assert_eq!(new_article.id(), (id - 1).to_string());

    repo.remove(new_article.id()).await.unwrap();
}

#[tokio::test]
async fn test_find_article_by_id() {
    let (mut repo, new_article) = create_repo_and_article().await.unwrap();

    repo.save(&new_article).await.unwrap();
    assert_eq!(
        repo.find_by_id(new_article.id()).await.unwrap(),
        new_article.clone()
    );
    repo.remove(new_article.id()).await.unwrap();
}
#[tokio::test]
async fn test_remove_article() {
    let (mut repo, new_article) = create_repo_and_article().await.unwrap();

    repo.save(&new_article).await.unwrap();

    assert!(repo.remove(new_article.id()).await.is_ok());
    assert!(repo.find_by_id(new_article.id()).await.is_err());
}
