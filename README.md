cloudcoreo-vpc-public
=====================

## Description
This [CloudCoreo](http://www.cloudcoreo.com) repository will create a VPC with public subnets.

## Categories

1. Network

<h3>OVERRIDE OPTIONAL VARIABLES</h3>
* <b>VPC_NAME:</b>
  * required: true
  * description: this is the name of your vpc as defined by your [CloudCoreo](http://www.cloudcoreo.com) setup
* <b>VPC_OCTETS:</b>
  * required: true
  * description: the octets for the vpc ip range - i.e. xxx.xxx.xxx.xxx
* <b>PUBLIC_SUBNET_NAME:</b>
  * required: true
  * description: the [CloudCoreo](http://www.cloudcoreo.com) name of the public vpc subnets
  * default: my-public-subnet
* <b>PUBLIC_ROUTE_NAME:</b>
  * required: true
  * description: the name to give to the public route
  * default: my-public-route

## Diagram
![alt text](https://raw.githubusercontent.com/CloudCoreo/cloudcoreo-vpc-public/master/images/vpc-public-only.png "Public VPC across 3 subnets")

## Tags
1. Network
1. VPC
1. Public Subnet
