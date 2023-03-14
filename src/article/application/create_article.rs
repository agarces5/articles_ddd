use crate::article::domain::{article::Article, article_repository::ArticleRepository};

pub struct CreateArticleUseCase {
    repository: Box<dyn ArticleRepository>,
}

impl CreateArticleUseCase {
    pub fn new(repository: Box<dyn ArticleRepository>) -> Self {
        Self { repository }
    }

    pub async fn execute(&mut self, name: &str, family_id: &str) -> anyhow::Result<()> {
        let id = self.repository.calc_new_id(family_id).await?;
        let article = Article::new(id, name, family_id);
        self.repository.save(&article).await?;
        Ok(())
    }
}
