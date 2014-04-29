cloudcoreo-vpc-public
=====================

This [CloudCoreo](http://www.cloudcoreo.com) repository will create a VPC with public subnets. In addition, it will create and maintain a <b>mostly-avaialable</b> NAT instance in the publi subnets.

* <b>Mostly-Available</b> refers to the fact that the HA will go down in the event of its AZ outage, but autoscaling will relaunch in a different AZ ensuring minimum downtime of the NAT

<h3>OVERRIDE REQUIRED VARIABLES</h3>
* <b>VPC_NAME:</b>
  * required: true
  * description: this is the name of your vpc as defined by your [CloudCoreo](http://www.cloudcoreo.com) setup
* <b>VPC_OCTETS:</b>
  * required: true
  * description: the octets for the vpc ip range - i.e. xxx.xxx.xxx.xxx

<h3>OVERRIDE OPTIONAL VARIABLES</h3>
* <b>PUBLIC_SUBNET_NAME:</b>
  * required: true
  * description: the [CloudCoreo](http://www.cloudcoreo.com) name of the public vpc subnets
  * default: my-public-subnet
* <b>PUBLIC_ROUTE_NAME:</b>
  * required: true
  * description: the name to give to the public route
  * default: my-public-route