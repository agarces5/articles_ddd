use tokio::test;

#[test]
async fn test_get_all() -> anyhow::Result<()> {
    // Creamos una conexión a una base de datos de prueba
    let mut client = set_tcp_client()?;

    // Creamos un repositorio de artículos utilizando la conexión a la base de datos de prueba
    let mut article_repo = MssqlArticleRepository::new();

    // Creamos algunos artículos de prueba en la base de datos
    let article1 = Article::new(
        1,
        String::from("Título 1"),
        String::from("Contenido 1"),
        chrono::Utc::now(),
        chrono::Utc::now(),
    );
    let article2 = Article::new(
        2,
        String::from("Título 2"),
        String::from("Contenido 2"),
        chrono::Utc::now(),
        chrono::Utc::now(),
    );
    article_repo.create(&article1).await?;
    article_repo.create(&article2).await?;

    // Obtenemos todos los artículos de la base de datos utilizando el método get_all()
    let articles = article_repo.get_all().await?;

    // Verificamos que el resultado sea correcto
    assert_eq!(articles.len(), 2);
    assert_eq!(articles[0].id(), 1);
    assert_eq!(articles[0].title(), "Título 1");
    assert_eq!(articles[0].content(), "Contenido 1");
    assert_eq!(articles[1].id(), 2);
    assert_eq!(articles[1].title(), "Título 2");
    assert_eq!(articles[1].content(), "Contenido 2");

    Ok(())
}