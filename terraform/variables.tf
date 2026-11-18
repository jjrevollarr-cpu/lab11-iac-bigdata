variable "aws_region" {
  description = "Región de AWS emulada localmente"
  type        = string
  default     = "us-east-1"
}

variable "data_lake_bucket" {
  description = "Nombre del bucket S3 principal del Data Lake"
  type        = string
  default     = "ucv-data-platform"
}

variable "environment" {
  description = "Entorno de despliegue"
  type        = string
  default     = "dev"
}

variable "catalog_id" {
  description = "ID de cuenta AWS ficticio para Glue Data Catalog en Floci"
  type        = string
  default     = "000000000000"
}

variable "domains" {
  description = "Dominios de negocio del Data Lake"
  type        = set(string)
  default = [
    "sales",
    "customers",
    "products",
    "marketing"
  ]
}

variable "layers" {
  description = "Capas de la arquitectura Medallion"
  type        = list(string)
  default     = ["bronze", "silver", "gold"]
}