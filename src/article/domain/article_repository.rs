use async_trait::async_trait;
use mockall::predicate::*;
use mockall::*;

use crate::article::domain::article::Article;

#[automock]
#[async_trait]
pub trait ArticleRepository {
    async fn save(&mut self, article: &Article) -> anyhow::Result<()>;
    async fn calc_new_id(&mut self, family_id: &str) -> anyhow::Result<String>;
    async fn get_all(&mut self) -> anyhow::Result<Vec<Article>>;
    async fn find_by_id(&mut self, id: &str) -> anyhow::Result<Article>;
    async fn find_by_subname(&mut self, name: &str) -> anyhow::Result<Article>;
    async fn update_name(&mut self, id: &str, new_name: &str) -> anyhow::Result<()>;
    async fn update_family(&mut self, id: &str, new_family: &str) -> anyhow::Result<()>;
    async fn remove(&mut self, id: &str) -> anyhow::Result<()>;
}
