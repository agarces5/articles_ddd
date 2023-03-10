use async_trait::async_trait;
use mockall::predicate::*;
use mockall::*;

use crate::article::domain::article::Article;

#[automock]
#[async_trait]
pub trait ArticleRepository {
    async fn save(&mut self, article: &Article) -> anyhow::Result<()>;
    async fn calc_new_id(&mut self, family_id: &str) -> anyhow::Result<i32>;
    async fn get_all_by_family(&mut self, family_id: &str) -> anyhow::Result<Vec<Article>>;
    async fn find_by_id(&mut self, id: i32) -> anyhow::Result<Article>;
    async fn find_by_subname(&mut self, name: &str) -> anyhow::Result<Vec<Article>>;
    async fn update(&mut self, id: i32, new_name: &str, new_family: &str) -> anyhow::Result<()>;
    async fn remove(&mut self, id: i32) -> anyhow::Result<()>;
}
