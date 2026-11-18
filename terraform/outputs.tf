output "data_lake_bucket" {
  description = "Nombre del bucket S3 creado"
  value       = aws_s3_bucket.data_lake.id
}

output "domain_catalogs" {
  description = "Diccionario de bases de datos creadas en Glue Data Catalog por dominio"
  value       = { for k, v in aws_glue_catalog_database.domains : k => v.name }
}

output "floci_endpoint" {
  description = "Endpoint local de Floci utilizado"
  value       = "http://localhost:4566"
}