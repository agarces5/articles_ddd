#[derive(Debug, Clone, Default, PartialEq)]
pub struct Article {
    id: String,
    name: String,
    family_id: String,
}

impl Article {
    pub fn new(id: &str, name: &str, family_id: &str) -> Self {
        Self {
            id: id.to_string(),
            name: name.to_string(),
            family_id: family_id.to_string(),
        }
    }
    pub fn id(&self) -> &str {
        &self.id
    }
    pub fn name(&self) -> &str {
        &self.name
    }
    pub fn family_id(&self) -> &str {
        &self.family_id
    }
}

impl ToString for Article {
    fn to_string(&self) -> String {
        format!(
            "Articulo: {},\t Nombre: {},\t Familia: {})",
            self.id, self.name, self.family_id
        )
    }
}
