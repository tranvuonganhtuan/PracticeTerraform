output "vpc_id" {
  value = aws_vpc.tuantran-vpc.id
}

#export the subnet public

output "public_subnet_id" {
  # value = data.aws_subnets.public.ids
  value = aws_subnet.public.*.id
}

output "private_subnet_id" {
  # value = data.aws_subnets.private.ids
  value = aws_subnet.private.*.id
}