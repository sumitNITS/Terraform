# This Terraform script deploys single or multiple virtual machines of type (Linux/Windows) 
# Configure the VMware vSphere Provider.

provider "vsphere" {
  user           = "fill"
  password       = "fill"
  vsphere_server = "fill"

  # if you have a self-signed cert
  allow_unverified_ssl = true
}

# Deploy 1 or many linux VMs
module "vm" {
  source  = "Terraform-VMWare-Modules/vm/vsphere"
  version = "3.5.0"
  
  # insert the required variables here
  vmtemp    = "VM Template Name (Should Alrerady exist)"
  instances = 1
  staticvmname = "fill"

  #vmname  = "AdvancedVM"
  #vmnameformat = "%03d" #To use three decimal with leading zero vmnames will be AdvancedVM001,AdvancedVM002
  
  vmrp      = "VM Template Name (Should Alrerady exist)"
  network = {
    "Name of the Port Group in vSphere" = ["IP_of_the_Machine/CIDR"] # To use DHCP create Empty list ["",""]; You can also use a CIDR annotation;
  }
  vmgateway = "fill"
  dc        = "fill"
  datastore = "fill"
}