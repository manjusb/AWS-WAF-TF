variable "waf_name" {
  description = "Name of the WAF Web ACL"
  type        = string
  default     = "cloudfront-waf"
}

variable "cloudwatch_metrics_enabled" {
  description = "Enable CloudWatch metrics for WAF"
  type        = bool
  default     = true
}

variable "environment" {
  description = "Environment tag (e.g., prod, dev)"
  type        = string
  default     = "prod"
}
