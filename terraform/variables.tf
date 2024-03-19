variable "common_tags" {
  default = {
    project = "roboshop"
    terraform = "true"
    environment = "dev"
   }
}
variable "tags" {
  default = {
   component = "catalogue"
  }

}

variable "project_name" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "zone_name" {
  default = "gopisri.cloud"
}

variable app_version {
  
}

# variable "iam_instance_profile" {
#   default = "shellscriptrolefroroboshop"
# }