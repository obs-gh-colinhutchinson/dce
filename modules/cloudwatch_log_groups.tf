module "cloudwatch_log-group" {
  source   = "terraform-aws-modules/cloudwatch/aws//modules/log-group"
  version  = "~=3.41.0"
  for_each = local.cloudwatch_log_groups_list

  name              = each.value
  create            = false
  retention_in_days = 7
}