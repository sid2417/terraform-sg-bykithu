variable "project_name" {
    type = string
      
}

variable "environment" {
    type = string
    default = "dev"
  
}

variable "sg_description" {
    type = string
    #default = "This is security g"
  
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

variable "ingress_block" {
    type = map(object({
        from_port        = number
        to_port          = number
        protocol         = string
        cidr_blocks      = list(string)
    }))
  
}

variable "egress_block" {
    type = map(object({
        from_port        = number
        to_port          = number
        protocol         = string
        cidr_blocks      = list(string)
    })) 
}