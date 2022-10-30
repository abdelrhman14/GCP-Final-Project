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
### images deployed on GKE must come from GCR or Artifacts registry 
    1.1
        ~ docker build -t django-python-app
        ~ docker tag django-python-app gcr.io/abdelrahmantarek-project/python-app
        ~ docker push gcr.io/my-project/python-app
        
    1.2
        ~ docker tag redis gcr.io/abdelrahmantarek-project/abdo-redis
        ~ docker push gcr.io/my-project/abdo-redis
### Connect to private cluster through private vm
 1. ~ gcloud compute ssh iti-instance --tunnel-through-iap
 2. ~ gcloud auth login
 3. ~ sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin && gcloud container clusters get-credentials iti-cluster --zone us-east1-b

 ![ahly3](https://user-images.githubusercontent.com/42601017/198861741-509329a9-1606-480a-bc73-33694bdaf392.png)
 
### All YML File we will deployment
![ahly21](https://user-images.githubusercontent.com/42601017/198861825-13e808cb-9053-4564-aa07-8cc68c583eaa.png)
1. ~ kubectl apply -f redis-service.yml
2. ~ kubectl apply -f redis-deploy.yml
3. ~ kubectl apply -f app-deploy.yml
4. ~ kubectl apply -f config.yml
5. ~ kubectl apply -f load-balancer.yml

### ----> Result
![ok](https://user-images.githubusercontent.com/42601017/198861980-a1c50492-df20-4655-850b-eb53ae1a5935.png)

