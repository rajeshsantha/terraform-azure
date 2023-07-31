# resource group name variable
variable "rsgname" {
  type        = string
  description = "resource group name"
  default     = "myTFResourceGroup"
}

# default location name variable
variable "location" {
  type        = string
  description = "default location for all azure services"
  default     = "eastus"
}


# storage account name name variable
variable "storgeaccname" {
  type        = string
  description = "storage account name"
}
