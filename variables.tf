variable "name" {
  type        = string
  description = "the resource name of the NSG being created"
}

variable "resourceGroupName" {
  type        = string
  description = "the name of the resource group in which to deploy the resource groups"
}

variable "priority" {
  type        = number
}

variable "direction" {
  type        = string
}

variable "access" {
  type        = string
  default = ""
}

variable "protocol" {
  type        = string
  default = ""
}

variable "sourcePortRange" {
  type        = string
  default = null
}

variable "sourcePortRanges" {
  type        = list
  default = null
}

variable "destinationPortRange" {
  type        = string
  default = null
}

variable "destinationPortRanges" {
  type        = list
  default = null
}

variable "sourceAddressPrefix" {
  type        = string
  default = null
}

variable "sourceAddressPrefixes" {
  type        = list
  default = null
}

variable "destinationAddressPrefix" {
  type        = string
  default = null
}

variable "destinationAddressPrefixes" {
  type        = list
  default = null
}
variable "networkSecurityGroupName" {
  type        = string
  default = ""
}