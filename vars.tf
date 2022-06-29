variable region {
  type = string
  default = "eu-west-3"
  description = "La región a aplicar"
}
variable tipo_instancia {
  type = string
  default = "t2.micro"
  description = "El tipo de instancia que quiero"
}
variable ami_instancia {
  type = string
  default = "ami-021d41cbdefc0c994"
  description = "La imagen de la instancia"
}
variable prefijo {
  type = string
  default = "GGH"
  description = "Prefijo que le pondremos a los recursos"
}
variable key {
  type = string
  default = "GGH-MAC"
  description = "clave de la instancia"
}
