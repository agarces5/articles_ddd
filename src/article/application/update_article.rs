use anyhow::Result;

use crate::article::domain::{article::Article, article_repository::ArticleRepository};

pub struct UpdateArticleUseCase {
    repository: Box<dyn ArticleRepository>,
}

impl UpdateArticleUseCase {
    pub fn new(repository: Box<dyn ArticleRepository>) -> Self {
        Self { repository }
    }

    pub async fn execute(
        &mut self,
        id: i32,
        new_name: Option<&str>,
        new_family: Option<&str>,
    ) -> Result<()> {
        let new_article = match (new_name, new_family) {
            (None, None) => self.repository.find_by_id(id).await?,
            (None, Some(new_family)) => {
                let old_article = self.repository.find_by_id(id).await?;
                Article::new(id, old_article.name(), new_family)
            }
            (Some(new_name), None) => {
                let old_article = self.repository.find_by_id(id).await?;
                Article::new(id, new_name, old_article.name())
            }
            (Some(new_name), Some(new_family)) => Article::new(id, new_name, new_family),
        };
        self.repository
            .update(id, new_article.name(), new_article.family_id())
            .await?;
        Ok(())
    }
}
