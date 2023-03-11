use async_trait::async_trait;
use bigdecimal::BigDecimal;
use std::collections::HashMap;
use tiberius::{numeric::Numeric, Client, Query};

use crate::article::domain::{article::Article, article_repository::ArticleRepository};

use crate::article::infrastructure::create_config::set_tcp_client;

use crate::article::infrastructure::utils::get_row_value;

type SqlClient = Client<tokio_util::compat::Compat<tokio::net::TcpStream>>;

pub struct MssqlArticleRepository {
    client: SqlClient,
}

impl MssqlArticleRepository {
    pub fn new(client: SqlClient) -> Self {
        Self { client }
    }
}

#[async_trait]
impl ArticleRepository for MssqlArticleRepository {
    async fn save(&mut self, article: &Article) -> anyhow::Result<()> {
        let query =
            "INSERT INTO Articulo (Articulo, Nombre, Familia) VALUES (@id, @name, @family_id)";
        let id: i32 = article.id().parse()?;
        let id = Numeric::new_with_scale(id as i128, 0);
        let name = String::from(article.name());
        let family_id = String::from(article.family_id());

        // Execute the query throught &self
        self.client
            .execute(query, &[&id, &name, &family_id])
            .await?;
        Ok(())
    }
    async fn calc_new_id(&self, family_id: String) -> anyhow::Result<String> {
        Ok(String::new())
    }
    async fn get_all(&mut self) -> anyhow::Result<Vec<Article>> {
        let mut articles = vec![];
        let query = "SELECT * FROM [WTPV_CALEIA_TEST].[dbo].[TP_ARTICULO]";
        let rows = self.client.query(query, &[]).await?;

        for row in rows.into_first_result().await? {
            let id = row.try_get::<&str, &str>("Articulo")?.unwrap();
            let name = row.try_get::<&str, &str>("Nombre")?.unwrap();
            let family_id = row.try_get::<&str, &str>("Familia")?.unwrap();
            let article = Article::new(id.into(), name.into(), family_id.into());
            articles.push(article);
        }

        Ok(articles)
    }
    async fn find_by_id(&self, id: String) -> anyhow::Result<Article> {
        Ok(Article::default())
    }
    async fn find_by_subname(&self, name: String) -> anyhow::Result<Article> {
        Ok(Article::default())
    }
    async fn update_name(&self, id: String, new_name: String) -> anyhow::Result<()> {
        Ok(())
    }
    async fn update_family(&self, id: String, new_family: String) -> anyhow::Result<()> {
        Ok(())
    }
    async fn remove(&self, id: String) -> anyhow::Result<()> {
        Ok(())
    }
}
