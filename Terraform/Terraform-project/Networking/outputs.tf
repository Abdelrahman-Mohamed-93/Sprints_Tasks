output "myvpc-id"{
    value = aws_vpc.myvpc.id
}

output "myvpc-cidr_block"{
    value = aws_vpc.myvpc.cidr_block
}

output "public_subnet_1_id"{
    value = aws_subnet.public_1.id
}

output "public_subnet_2_id"{
    value = aws_subnet.public_2.id
}

output "private_subnet_1_id"{
    value = aws_subnet.private_1.id
}

output "private_subnet_2_id"{
    value = aws_subnet.private_2.id
}