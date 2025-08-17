terraform { 
  cloud { 
    
    organization = "raksha-terra-org" 

    workspaces { 
      name = "localfile" 
    } 
  } 
}
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
     }
   }
 }


provider "azurerm"{
  features{}
client_id="7f7f227d-6494-412a-9b90-3dd99fa461a5"
tenant_id="a1099c37-a63e-49aa-aae9-c1c91be6b89a"
subscription_id="972f43d4-e847-43f2-8efe-0f9c1507d61e"
client_secret="cmU8Q~zmApcyQ8oN9z3xhwGV-VTPqfm~8IlXRb5Z"
}

variable "rgname"{
   default = "terraformrgvcs"
}
variable "location"{
  default = "West US 2"
}
resource "azurerm_resource_group" "example"{
   name  =var.rgname
location =var.location
  }
