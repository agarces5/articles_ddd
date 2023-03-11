use articles_ddd::article::domain::{article::Article, article_repository::ArticleRepository};
use articles_ddd::article::infrastructure::create_config::set_tcp_client;
use articles_ddd::article::infrastructure::mssql_article_repository::MssqlArticleRepository;
use tokio::test;

#[test]
async fn test_get_all() -> anyhow::Result<()> {
    // Creamos una conexión a una base de datos de prueba
    let client = set_tcp_client().await?;

    // Creamos un repositorio de artículos utilizando la conexión a la base de datos de prueba
    let mut article_repo = MssqlArticleRepository::new(client);

    // Creamos algunos artículos de prueba en la base de datos
    let article1 = Article::new("10", "Test 1", "0101");
    let article2 = Article::new("11", "Test 2", "0101");
    article_repo.save(&article1).await?;
    article_repo.save(&article2).await?;

    // Obtenemos todos los artículos de la base de datos utilizando el método get_all()
    let articles = article_repo.get_all().await?;

    // Verificamos que el resultado sea correcto
    assert_eq!(articles.len(), 2);
    assert_eq!(articles[0].id(), "10");
    assert_eq!(articles[0].name(), "Test 1");
    assert_eq!(articles[0].family_id(), "0101");
    assert_eq!(articles[0].id(), "11");
    assert_eq!(articles[0].name(), "Test 2");
    assert_eq!(articles[0].family_id(), "0101");

    Ok(())
}
