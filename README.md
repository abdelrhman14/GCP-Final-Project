### GCP-Final-Project

## Infrastructure Network Terraform 
# VPC
# [Point 1: management_subnet]
1. we will create vpc [top-vpc]
2. we will create the first subnet [management_subnet] (Public Subnet) 10.0.0.0/24
3. we will create router [my-router]
4. we will create NAT gateway [my-nat]
5. we will create private VM  [iti-instance] ----> No Ip address so, internet connection through NAT
6. we will create firewall rule to enforce the VM to be private by allowing access only through IAP [firewall-to-allow-iap]
