variable "lb_health_probe_list" {
  type = list(any)
  default = []
  description = "health probe list"
}

variable "load_balancer_output" {
  type = map(any)
  default = { }
  description = "load balancer object output"
}