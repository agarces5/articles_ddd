use articles_ddd::article::{
    application::{
        create_article::CreateArticleUseCase, find_article::FindArticleUseCase,
        remove_article::RemoveArticleUseCase, update_article::UpdateArticleUseCase,
    },
    domain::{article::Article, article_repository::MockArticleRepository},
};
use mockall::predicate::eq;

#[tokio::test]
async fn test_create_article_use_case() {
    let mut repo = MockArticleRepository::new();
    repo.expect_calc_new_id()
        .with(eq("0001"))
        .return_once(|_| anyhow::Ok(100001));
    repo.expect_save()
        .with(eq(Article::new(100001, "PRUEBA", "0001")))
        .returning(|_| Ok(()));
    let mut create_article_use_case = CreateArticleUseCase::new(Box::new(repo));
    assert!(create_article_use_case
        .execute("PRUEBA", "0001")
        .await
        .is_ok());
}

#[tokio::test]
async fn test_find_article_use_case() {
    let mut repo = MockArticleRepository::new();
    let article = Article::new(100001, "PRUEBA", "0001");
    repo.expect_find_by_id()
        .with(eq(100001))
        .returning(move |_| anyhow::Ok(article.clone()));
    let article = Article::new(100001, "PRUEBA", "0001");
    repo.expect_find_by_subname()
        .with(eq("PRUEBA"))
        .returning(move |_| anyhow::Ok(vec![article.clone()]));
    let mut find_article_use_case = FindArticleUseCase::new(Box::new(repo));

    let article = Article::new(100001, "PRUEBA", "0001");
    assert!(find_article_use_case.find_by_id(100001).await.is_ok());
    assert_eq!(
        find_article_use_case.find_by_id(100001).await.unwrap(),
        article
    );
    assert!(find_article_use_case
        .find_by_subname("PRUEBA")
        .await
        .is_ok());
    assert_eq!(
        find_article_use_case
            .find_by_subname("PRUEBA")
            .await
            .unwrap(),
        vec![article]
    );
}
#[tokio::test]
async fn test_update_article_use_case() {
    // TODO: Ver como se puede mockear el Option o si no usar el mssql
    let mut repo = MockArticleRepository::new();
    let article = Article::new(100001, "PRUEBA", "0101");

    repo.expect_find_by_id()
        .with(eq(100001))
        .returning(move |_| Ok(article.clone()));
    repo.expect_update()
        .with(eq(100001), eq("PRUEBA UPDATED"), eq("0001"))
        .returning(|_, _, _| Ok(()));
    // repo.expect_update()
    //     .with(eq(100001), eq("PRUEBA UPDATED"), eq("0001"))
    //     .returning(|_, _, _| Ok(()));
    // repo.expect_update()
    //     .with(
    //         eq(100001),
    //         eq("PRUEBA UPDATED"),
    //         function(|x: &str| x.is_empty()),
    //     )
    //     .returning(|_, _, _| Ok(()));

    let mut update_use_case = UpdateArticleUseCase::new(Box::new(repo));
    assert!(update_use_case
        .execute(100001, Some("PRUEBA UPDATED"), Some("0001"))
        .await
        .is_ok());
    // assert!(update_use_case
    //     .execute(100001, Some("PRUEBA UPDATED"), Some(""))
    //     .await
    //     .is_ok())
}
#[tokio::test]
async fn test_delete_article_use_case() {
    let mut repo = MockArticleRepository::new();
    repo.expect_remove()
        .with(eq(100001))
        .return_once(|_| anyhow::Ok(()));
    let mut remove_article_use_case = RemoveArticleUseCase::new(Box::new(repo));
    assert!(remove_article_use_case.execute(100001).await.is_ok());
}
