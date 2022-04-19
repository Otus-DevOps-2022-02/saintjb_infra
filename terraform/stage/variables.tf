variable "cloud_id" {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
}
variable "zone" {
  description = "Zone"
  default = "ru-central1-a"
}
variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "private_key_path" {
  description = "Path to the private key used for ssh access"
}
variable "image_id" {
  description = "Disk image"
}
variable "subnet_id" {
  description = "Subnet"
  default     = "e9bh9tugtt97uvs8ts8d"
}
variable "service_account_key_file" {
  description = "key.json"
}
variable "network_id" {
  description = "default network"
}
variable "region_id" {
  description = "region"
}
variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "mmpceqrfrjru1j33u0qm"
}
variable "db_disk_image" {
  description = "Disk image for reddit app"
  default     = "mmvpemf6b08pktajhs59e"
}
