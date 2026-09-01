variable "rg_name" {
    description = "resource group name"
    type        = map(string)
      
}
variable "location" {
    description = "location of resource group"
    type        = map(string)
  
}
variable "stg" {
    description = "storage account name"
    type        = map(string)
    
  
}