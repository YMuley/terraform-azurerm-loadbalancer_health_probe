resource "azurerm_lb_probe" "lb_health_probe" {
  for_each = local.lb_probe
  name = each.value.name
  loadbalancer_id = var.load_balancer_output[each.value.load_balancer_name].id
  protocol = each.value.protocol
  port = each.value.port
  probe_threshold = each.value.probe_threshold
  request_path = each.value.request_path
  interval_in_seconds = each.value.interval_in_seconds
  number_of_probes = each.value.number_of_probes
}