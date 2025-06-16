locals {
  config_path           = "${path.module}/../${var.environment}/${var.environment}-configuration.json"
  infrastructure_config = jsondecode(file(local.config_path))
}

module "role_assignment" {
  source               = "../modules/role_assignment"
  for_each             = local.infrastructure_config.role_assignment
  role_definition_name = each.value.role_definition_name
  object_id            = each.value.object_id
}