variable "vpc_id" {
  default = ""
}

variable "bucket_name" {
    type = string
    default = ""
    description = "Informe o nome do Bucket criado para armazenar os arquivos tfstate"
}