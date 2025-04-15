# AWS-WAF-TF
AWS WAF CloudFront (Global scope) using TF code 



waf-terraform/
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
└── terraform.tfvars



Best Practices Followed
Modular Structure: Separate files for providers, variables, outputs, and main resources.
Clear Naming: Descriptive names for resources and variables (e.g., cloudfront_waf, metric_name).
Tagging: Added tags for resource identification and environment tracking.
Scope: Correctly set to CLOUDFRONT for global resources.
Metrics: Enabled CloudWatch metrics for monitoring and debugging.
Default Action: Set to allow with managed rules to block malicious traffic.
Priority: Assigned unique priorities to rules to avoid conflicts.
Error-Free: Validated syntax and compatibility with AWS WAFv2 API.
Notes
The WAF is created in us-east-1 as required for CloudFront scope.
The managed rule groups are free-tier AWS rules, ensuring no unexpected costs.
To associate this WAF with a CloudFront distribution, update the distribution’s configuration with the Web ACL ARN (output as web_acl_arn).
If you need logging, enable WAF logging separately and associate it with the CloudWatch log group or another destination (e.g., S3, Kinesis).
