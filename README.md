## GCP Final Project

### Infrastructure Network Terraform 
#### 1- VPC
####  1.1 management_subnet
    1. we will create vpc [top-vpc]
    2. we will create the first subnet [management_subnet] (Public Subnet) 10.0.0.0/24
    3. we will create router [my-router]
    4. we will create NAT gateway [my-nat]
    5. we will create private VM  [iti-instance] ----> [hint] No Ip address so, internet connection through NAT
    6. we will create firewall rule to enforce the VM to be private by allowing access only through IAP [firewall-to-allow-iap]
#### 1.2 restricted subnet
    1. Private standard GKE cluster
    2. [hint] Only the private instance can access the private cluster
### Details 
    1.1 VPC network
    1.2 Two subnet [ management_subnet & restricted subnet ]
    1.3 NAT gateway
    1.4 private VM 
    1.5 firewall rule to enforce the VM to be private by allowing access only through  IAP
    1.6 creating our private cluster
    1.7 creating the node
 ![ahly7](https://user-images.githubusercontent.com/42601017/198861398-fc0f631a-eb27-455a-9d6f-740fae39c918.png)
    
    ~ terraform init
    ~ terraform plan
    ~ terraform apply

    
