variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "tags" {
  type = map(string)
  default = {}
}

variable "sku" {
  type = object({
    name = string
  })
  default = {
    name = "basic" # "standard" or "basic", switching to basic for NOD dev testing to save money. See https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/search_service#sku-1
  }
}

variable "authOptions" {
  type = map(string)
  default = {}
}

variable "semanticSearch" {
  type = string
  default = "disabled"
}

variable "resourceGroupName" {
  type    = string
}

variable "azure_search_domain" {
  type = string  
}

variable "key_vault_name" { 
  type = string
}

variable "is_secure_mode" {
  type = bool
  default = false
}

variable "vnet_name" {
  type = string
}

variable "subnet_name" {
  type = string
  default = ""
}

variable "private_dns_zone_ids" {
  type = set(string)
}

variable "arm_template_schema_mgmt_api" {
  type = string
}