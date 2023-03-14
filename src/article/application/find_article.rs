use crate::article::domain::{article::Article, article_repository::ArticleRepository};

pub struct FindArticleUseCase {
    repository: Box<dyn ArticleRepository>,
}

impl FindArticleUseCase {
    pub fn new(repository: Box<dyn ArticleRepository>) -> Self {
        Self { repository }
    }

    pub async fn find_by_id(&mut self, id: i32) -> anyhow::Result<Article> {
        self.repository.find_by_id(id).await
    }
    pub async fn find_by_subname(&mut self, subname: &str) -> anyhow::Result<Vec<Article>> {
        self.repository.find_by_subname(subname).await
    }
}
