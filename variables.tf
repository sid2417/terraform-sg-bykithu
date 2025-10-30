variable "project_name" {
    type = string
      
}

variable "environment" {
    type = string
    default = "dev"
  
}

# Here sg_name is our project preference, for unique approach
variable "sg_name" {  
    type = string
      
}

variable "sg_description" {
    type = string
    
  
}

variable "vpc_id" {
    type = string
    
}

variable "common_tags" {
    type = map(string)
    
}

variable "sg_tags" {
    type = map(string)
    default = {}
  
}

# variable "ingress_block" {
#     type = map(object({
#         from_port        = number
#         to_port          = number
#         protocol         = string
#         cidr_blocks      = list(string)
#     }))
  
# }



variable "ingress_block" {
    type = map(object({}))
  
}

variable "egress_block" {
    type = map(object({
        from_port        = number
        to_port          = number
        protocol         = string
        cidr_blocks      = list(string)
    })) 
}


# variable "egress_block" {
#   type = list
#   default = [
#     {
#         from_port = 0
#         to_port = 0
#         protocol = "-1" # all protocols
#         cidr_blocks = ["0.0.0.0/0"]
#     }
#   ]
# }


# variable "ingress_block" {
#   type = list
#   default = []
# }