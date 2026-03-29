module "rg" {
  source = "../../Module/Resource_group"
  resource_group_name = var.resource_group_name
  location = var.location
}

module "vnet" {
  source = "../../Module/Vnet"

  vnet_name                = var.vnet_name
  address_space           = var.address_space
  location                = var.location
  resource_group_name     = var.resource_group_name
  subnet_name             = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
  depends_on = [module.rg]
}

module "nic" {
    depends_on = [ module.vnet, module.rg, ]
  source = "../../Module/Nic"
  nic_name = var.nic_name
  location = var.location
  resource_group_name = var.resource_group_name
  subnet_id = module.vnet.subnet_id
}   


