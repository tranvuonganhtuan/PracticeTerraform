output "vpc_id" {
  value = aws_vpc.tuantranvpc.id
}

#export the subnet public

output "public_subnet_id" {
  value = data.aws_subnet.public.id
}

output "private_subnet_id" {
  value = data.aws_subnet.private.id
}

output "vpcid" {
  value = aws_vpc.tuantranvpc.id
}
