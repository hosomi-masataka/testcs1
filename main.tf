terraform {
  cloud {
    organization = "PANASONIC-CONNECT-IaC"
    
    workspaces {
      name = "testcs1"
    }
  }
}
 
#リージョンの設定
provider "aws" {
  region = "ap-northeast-1"
}
 
#VPC作成
resource "aws_vpc" "main" {
  cidr_block              = "10.0.0.0/16"
  enable_dns_hostnames = true
 
  tags = {
    Name = "terraformcloud_vpc"
  }
}
