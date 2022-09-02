#
# Hard-mandatory requires that the policy passes. If a policy fails, the run is halted and may not be applied until the failure is resolved.
#
# Soft-mandatory is similar to hard-mandatory, but allows an administrator to override policy failures on a case-by-case basis
# 
# Advisory will never interrupt the run, and instead will only surface policy failures as informational to the user.
 
policy "enforce-mandatory-tags" {
  source = "./enforce-mandatory-tags.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "restrict-ec2-instance-type" {
  source = "./restrict-ec2-instance-type.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "limit-proposed-monthly-cost" {
    source = "./limit-proposed-monthly-costs.sentinel"
    enforcement_level = "advisory"
}