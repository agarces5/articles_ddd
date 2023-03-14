use async_trait::async_trait;
use tiberius::{numeric::Numeric, Client};

use crate::article::domain::{article::Article, article_repository::ArticleRepository};

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
        let query = "INSERT [WTPV_CALEIA_TEST].[dbo].[TP_ARTICULO] (Articulo, Nombre, Familia, Usuario) VALUES (@P1, @P2, @P3, @P4)";
        let id = article.id();
        let name = String::from(article.name());
        let family_id = String::from(article.family_id());

        // Execute the query throught &self
        self.client
            .execute(query, &[&id, &name, &family_id, &"sa"])
            .await?;
        Ok(())
    }
    async fn calc_new_id(&mut self, family_id: &str) -> anyhow::Result<i32> {
        let query = "SELECT TOP(1) Articulo FROM [WTPV_CALEIA_TEST].[dbo].[TP_ARTICULO] WHERE Familia=@P1 ORDER BY Articulo DESC";
        let row = self.client.query(query, &[&family_id]).await?;
        let row = row.into_row().await?;
        let res = match row {
            Some(row) => {
                (row.try_get::<Numeric, &str>("Articulo")?
                    .unwrap()
                    .int_part()
                    + 1) as i32
            }
            None => format!("{family_id}00001")
                .parse()
                .expect("Failed to convert Article id"),
        };
        Ok(res)
    }
    async fn get_all(&mut self) -> anyhow::Result<Vec<Article>> {
        let mut articles = vec![];
        let query = "SELECT * FROM [WTPV_CALEIA_TEST].[dbo].[TP_ARTICULO]";
        let rows = self.client.query(query, &[]).await?;

        for row in rows.into_first_result().await? {
            let id = row
                .try_get::<Numeric, &str>("Articulo")?
                .unwrap()
                .int_part();
            let name = row.try_get::<&str, &str>("Nombre")?.unwrap();
            let family_id = row.try_get::<&str, &str>("Familia")?.unwrap();
            let article = Article::new(id as i32, name, family_id);
            articles.push(article);
        }

        Ok(articles)
    }
    async fn find_by_id(&mut self, id: i32) -> anyhow::Result<Article> {
        let query = "SELECT * FROM [WTPV_CALEIA_TEST].[dbo].[TP_ARTICULO] WHERE Articulo=@P1";
        let row = self.client.query(query, &[&id]).await?;

        let res = row
            .into_row()
            .await?
            .ok_or_else(|| anyhow::Error::msg("Not found!"))?;

        let id = res
            .try_get::<Numeric, &str>("Articulo")?
            .unwrap()
            .int_part();
        let name = res.try_get::<&str, &str>("Nombre")?.unwrap();
        let family_id = res.try_get::<&str, &str>("Familia")?.unwrap();
        let article = Article::new(id as i32, name, family_id);

        Ok(article)
    }
    async fn find_by_subname(&mut self, _name: &str) -> anyhow::Result<Article> {
        Ok(Article::default())
    }
    async fn update_name(&mut self, _id: i32, _new_name: &str) -> anyhow::Result<()> {
        Ok(())
    }
    async fn update_family(&mut self, _id: i32, _new_family: &str) -> anyhow::Result<()> {
        Ok(())
    }
    async fn remove(&mut self, id: i32) -> anyhow::Result<()> {
        let query = "DELETE FROM [WTPV_CALEIA_TEST].[dbo].[TP_ARTICULO] WHERE Articulo=@P1";

        // Execute the query throught &self
        self.client.execute(query, &[&id]).await?;
        Ok(())
    }
}
