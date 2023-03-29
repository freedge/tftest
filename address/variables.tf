variable "content" {
    type = list(object({
      name  = string
      description = string
    }))
}

