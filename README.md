# AWS-WAF-TF<br/>
AWS WAF CloudFront (Global scope) using TF code <br/>

<br/>

waf-terraform/<br/>
├── main.tf<br/>
├── variables.tf<br/>
├── outputs.tf<br/>
├── provider.tf<br/>
└── terraform.tfvars<br/>


<br/><br/>
Best Practices Followed<br/>
Modular Structure: Separate files for providers, variables, outputs, and main resources.<br/>
Clear Naming: Descriptive names for resources and variables (e.g., cloudfront_waf, metric_name).<br/>
Tagging: Added tags for resource identification and environment tracking.<br/>
Scope: Correctly set to CLOUDFRONT for global resources.<br/>
Metrics: Enabled CloudWatch metrics for monitoring and debugging.<br/>
Default Action: Set to allow with managed rules to block malicious traffic.<br/>
Priority: Assigned unique priorities to rules to avoid conflicts.<br/>
Error-Free: Validated syntax and compatibility with AWS WAFv2 API.<br/>
<br/>
<br/>
Notes<br/>
The WAF is created in us-east-1 as required for CloudFront scope.<br/>
The managed rule groups are free-tier AWS rules, ensuring no unexpected costs.<br/>
To associate this WAF with a CloudFront distribution, update the distribution’s configuration with the Web ACL ARN (output as web_acl_arn).<br/>
If you need logging, enable WAF logging separately and associate it with the CloudWatch log group or another destination (e.g., S3, Kinesis).<br/>

<br/>
<br/>
Below WAF rules are enabled:<br/>
<br/>
1. Admin protection<br/>
2. Amazon IP reputation list<br/>
3. Anonymous IP list<br/>
4. Core rule set<br/>
5. Known bad inputs<br/>
6. Linux operating system<br/>
7. POSIX operating system<br/>
8. SQL database<br/>
9. WordPress application<br/>
