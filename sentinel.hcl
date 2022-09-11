#
# Hard-mandatory requires that the/Users/chunw/Code/sandbox/terraform/enforce-terraform-policies/restrict-ec2-instance-type.sentinel policy passes. If a policy fails, the run is halted and may not be applied until the failure is resolved.
#
# Soft-mandatory is similar to hard-mandatory, but allows an administrator to override policy failures on a case-by-case basis
# 
# Advisory will never interrupt the run, and instead will only surface policy failures as informational to the user.

policy "limit-proposed-monthly-cost" {
    //source = "./limit-proposed-monthly-costs.sentinel"
    enforcement_level = "advisory"
}

policy "allowed-terraform-version" {
    enforcement_level = "soft-mandatory"
}