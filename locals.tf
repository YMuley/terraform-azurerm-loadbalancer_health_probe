locals {
  lb_probe = {for lb_probe in var.lb_health_probe_list : lb_probe.name =>lb_probe}
}