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

output "var_output"{
    value=var.string_type_vars
}

variable "string" {
 description = "This is a variable of type string"
 type        = string
 default     = "Default string value for this variable"
}

#Variable names must be unique within a module.

variable "num"{
    default=100
}

output "num_output"{
    value=var.num
}

# list
variable "variables"{
    default=[
        "terraform",
        200,
        true
    ]
}

output "list_output"{
    value= "first item is ${var.variables[0]} in the list"
}

output "list"{
    value=var.variables
}

# map
variable "map"{
    default={
        str="terraform basic",
        number=400,
        bool=true
    }
}

output "map_output"{
    value="string :${var.map["str"]}, num :${var.map["number"]} , boolean :${var.map["bool"]} are the examples of map type variables"
}

output "map"{
    value=var.map
}

