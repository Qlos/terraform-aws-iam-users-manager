module "labels" {
  source      = "Infrastrukturait/tagger/null"
  version     = "0.1.0"
  environment = var.environment
  extra_tags  = var.tags
}


