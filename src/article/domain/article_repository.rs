use async_trait::async_trait;

use crate::article::domain::article::Article;

#[async_trait]
pub trait ArticleRepository {
    async fn save(&self, article: Article) -> anyhow::Result<()>;
    async fn calc_new_id(&self, family_id: String) -> anyhow::Result<String>;
    async fn get_all(&mut self) -> anyhow::Result<Vec<Article>>;
    async fn find_by_id(&self, id: String) -> anyhow::Result<Article>;
    async fn find_by_subname(&self, name: String) -> anyhow::Result<Article>;
    async fn update_name(&self, id: String, new_name: String) -> anyhow::Result<()>;
    async fn update_family(&self, id: String, new_family: String) -> anyhow::Result<()>;
    async fn remove(&self, id: String) -> anyhow::Result<()>;
}
