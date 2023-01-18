variable "rgname" {
  type        = string
  default     = "diskrg"
  description = "This is resource group for managed disk"
}
variable "loc" {

  default = "West Europe"

}
variable "diskname" {
  type        = string
  default     = "disk2"
  description = "This is disk2"
}
variable "disksize" {}
variable "satype" {}
