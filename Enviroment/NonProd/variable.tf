variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "address_space" {
  description = "The address space of the virtual network"
  type        = list(string)
}

variable "subnet_address_prefixes" {
  description = "The address prefixes of the subnet"
  type        = list(string)    
  
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string  
}

variable "location" {
  description = "The location of the resource group"
  type        = string  
}

variable "nic_name" {
  description = "The name of the network interface"
  type        = string
}

