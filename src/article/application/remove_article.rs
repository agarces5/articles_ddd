use anyhow::Result;

use crate::article::domain::article_repository::ArticleRepository;

pub struct RemoveArticleUseCase {
    repository: Box<dyn ArticleRepository>,
}

impl RemoveArticleUseCase {
    pub fn new(repository: Box<dyn ArticleRepository>) -> Self {
        Self { repository }
    }

    pub async fn execute(&mut self, id: i32) -> Result<()> {
        self.repository.remove(id).await?;
        Ok(())
    }
}
