
#---------------Common Project Variable Inputs
aws_region     = "us-east-2"
ss_keyname     = "newkeyname"
aws_profile    = "awsloniyi"
environment    = "DevOps"
project_name   = "theatre"
company_name  = "Dramatazz"
public_keypath = "/Users/admin/shadowsoft/project/.aws/newkeyname.pub"


#---------------Networking Variable Inputs------
vpc_cidr               = "10.20.0.0/16"
accessip               = "0.0.0.0/0"
domain_name            = "dramatazz" 
elb_timeout            = "3"
elb_interval           = "30"
#delegation_set         = "N35M7HUCLORURJ"
elb_healthythreshold   = "2"
elb_unhealthythreshold = "2"

public_cidrs   = [
    "10.20.1.0/24",
    "10.20.2.0/24",
    "10.20.3.0/24"]
private_cidrs  = [
    "10.20.11.0/24",
    "10.20.12.0/24",
    "10.20.13.0/24"]
database_cidrs = [
    "10.20.21.0/24",
    "10.20.22.0/24",
    "10.20.23.0/24"]

#----------------Compute Servers Variable Inputs-------
volume_size       = "10"
volume_type       = "gp2"
instance_type     = "t2.micro"
availability_zone = "us-east-2a"

#---BastionHost Server Variable Inputs
bastionhost_minsize          = "1"
bastionhost_maxsize          = "1"
bastionhost_desiredcapacity  = "1"
bastionhost_enablemonitoring = "false"

#---Rocketchat Server Variable Inputs
rocketchat_privateip = "10.20.11.110"


#---Jenkins Server Variable Inputs
jenkins_privateip = "10.20.11.120"


#---Vault Server Variable Inputs
vault_privateip = "10.20.11.130"


#---Gitlab Server Variable Inputs
gitlab_privateip    = "10.20.11.140"
gitlab_instancetype = "t2.large" 


#---Application Server Variables
app_asghct      = "EC2"
app_asggrace    = "300"
app_asgminsize  = "1"   
app_asgmaxsize  = "1"     
app_asgcapacity = "1"


#----------------MySQL Database Variable Inputs-------

db_name		    = "ssprojectname"
db_engine	    = "mysql"
db_version	    = "5.7.19"
db_username	    = "ssprojectdb"
db_password	    = "ssprojectpass"
db_instanceclass    = "db.t2.micro"
db_allocatedstorage = "5"
