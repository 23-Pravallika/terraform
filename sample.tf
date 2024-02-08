output "terraform_URL"{
    value="https://developer.hashicorp.com/terraform/language/values/outputs"
}

# variables


variable "Sample_vars"{
    default="This is demo on vars"
}

variable "string_type" {
 description = "This is a variable of type string"
 type        = string
 default     = "Default string value for this variable"
}

output "vars_output"{
    value=var.Sample_vars
}

output "string_vars_output"{
    value=var.string_type
}

variable "string_type_vars" {
 type        = string
 default     = "Default string value for this variable"
}

output "vars_output"{
    value=var.Sample_vars
}

variable "string_type" {
 description = "This is a variable of type string"
 type        = string
 default     = "Default string value for this variable"
}