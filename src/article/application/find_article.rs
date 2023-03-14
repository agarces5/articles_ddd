use anyhow::Result;

use crate::article::domain::article_repository::ArticleRepository;

pub struct FindArticleUseCase {
    repository: Box<dyn ArticleRepository>,
}

impl FindArticleUseCase {
    pub fn new(repository: Box<dyn ArticleRepository>) -> Self {
        Self { repository }
    }

    pub async fn find_by_id(&mut self, id: i32) -> Result<()> {
        self.repository.find_by_id(id).await?;
        Ok(())
    }
    pub async fn find_by_subname(&mut self, subname: &str) -> Result<()> {
        self.repository.find_by_subname(subname).await?;
        Ok(())
    }
}
