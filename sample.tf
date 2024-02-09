# output "terraform_URL"{
#     value="https://developer.hashicorp.com/terraform/language/values/outputs"
# }

# variables
# A variable can be accessed without ${} as well, if it's not accompanied in any sentence. If you just want to use it, you can directly refer it as `var.VariableName`


variable "Sample_vars"{
    default="This is demo on vars"
}

variable "string_type" {
 description = "This is a variable of type string"
 type        = string
 default     = "Default string value for this variable"
}

# output "vars_output"{
#     value=var.Sample_vars
# }

# output "string_vars_output"{
#     value=var.string_type
# }

variable "string_type_vars" {      # without description 
 type        = string
 default     = "Default string value for this variable"
}

# output "var_output"{
#     value=var.string_type_vars
# }

#Variable names must be unique within a module.

variable "num"{
    default=100
}

# output "num_output"{
#     value=var.num
# }

# list
variable "variables"{
    default=[
        "terraform",
        200,
        true
    ]
}

# output "list_output"{                                       # its an example to give the output of particular the nth item in the list
#     value= "first item is ${var.variables[0]} in the list"
# }

# output "list"{                # it prints the whole list 
#     value=var.variables
# }

# map
variable "map"{
    default={
        str="terraform basic",
        number=400,
        bool=true
    }
}

# output "map_output"{
#     value="string :${var.map["str"]}, num :${var.map["number"]} , boolean :${var.map["bool"]} are the examples of map type variables"
# }

# output "map"{
#     value=var.map
# }

#Object type : 
variable "object_type" {
    type= object({
    name= string
    age= number
    enabled=bool
 })
 default = {
   name="John Doe"
   age=30
   enabled=true
 }
}

# output "object"{
#     value=var.object_type
# }


#The list(object) is an ordered list of objects where each object is referred to using the index. 
variable "list_of_objects" {
   type=list(object({
   name=string
   age=number
   bool_val=bool
 }))
 default = [
    {
        name="John Doe"
        age=30
        bool_val=true
    },
    {
        name="mike"
        age=20
        bool_val=true
    }
    ]
}

# output "obj_lst"{
#     value=var.list_of_objects
# }

#Map of objects: 
variable "map_of_objects" {
    type = map(object({
    name = string,
    cidr = string
  }))
  default = {
    "subnet_a" = {       # here subnet is the key 
    name = "Subnet A",              # name and cidr are the values for the key 
    cidr = "10.10.1.0/24"
    },
  "subnet_b" = {
    name = "Subnet B",
    cidr = "10.10.2.0/24"
    },
  "subnet_c" = {
    name = "Subnet C",
    cidr = "10.10.3.0/24"
    }
  }
}

# output "mapOfObj"{
#     value=var.map_of_objects
# }

# Declaring an empty variable
variable "empty_var"{}

output "empty_output"{
    value=var.empty_var
}

output "empty_var_output" {
    value = "value is ${var.empty_var}"
}

# variable "numb" {}
variable "numb"{
    default=100
}

output "number_op" {
    value = "Number is ${var.numb}"
}

# This variable value will be supplied from the command line
variable "providername" {}

output "provider_name_op" {
    value = "Name of the provider is ${var.providername}"
}

