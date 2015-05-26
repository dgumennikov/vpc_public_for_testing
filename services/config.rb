######################################################################
## variables
##   PUBLIC_ROUTE_NAME
##   PUBLIC_SUBNET_NAME
##   VPC_NAME
##   VPC_OCTETS
######################################################################

######################################################################
## Create a vpc, igw and attach the igw to the vpc
######################################################################
coreo_aws_vpc_vpc "${VPC_NAME}" do
  action :find_or_create
  cidr "${VPC_OCTETS}/16"
  internet_gateway true
end


######################################################################
## create a routetable for the public subnet, route everything
## to the internet gateway
######################################################################
coreo_aws_vpc_routetable "${PUBLIC_ROUTE_NAME}" do
  action :sustain
  vpc "${VPC_NAME}"
  routes [
             { :from => "0.0.0.0/0", :to => "${VPC_NAME}", :type => :igw },
        ]
end


######################################################################
## number_of_zones
##   cidr will be split up among all zones specified in "number_of_zones"
## percent_of_vpc_allocated
##   split, but use only this percentage of the entire vpc range
######################################################################
coreo_aws_vpc_subnet "${PUBLIC_SUBNET_NAME}" do
  action :sustain
  number_of_zones 3
  percent_of_vpc_allocated 15
  route_table "${PUBLIC_ROUTE_NAME}"
  vpc "${VPC_NAME}"
  map_public_ip_on_launch true
end
