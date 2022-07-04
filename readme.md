
Automated docker to create a port-forward between localhost and a VPC resource using a bastion host

# SSH Tunnel 

## Syntax 1:

```
ssh -i <identity_file> -f -l <bastion-host-username> -L 
<local-port-you-connect-to>:<rds-endpoint>:<rds:listening-port>
<bastion-host-public-ip> -v
```

Example:
```
ssh -i "private_key.pem" -f -l ec2-user -L 5432:172.31.39.62:5432  3.133.141.189 -v
```

Command:
```
ssh -i "bastion-southeast-1.pem" -fN -l ec2-user -L 5000:xxxxx.xxxxx.ap-southeast-1.rds.amazonaws.com:5432  18.139.145.56 -v
```

## Syntax 2:

```
ssh -i "Private_key.pem" -f -N -L 5433:RDS_Instance_Endpoint:5432 ec2-user@EC2-Instance_Endpoint -v
```

Example:
```
ssh -i "bastion.pem" -f -N -L
5000:xxxx.xxxx.us-east-2.rds.amazonaws.com:5432
ec2-user@ec2-xxxx-xxx9.us-east-2.compute.amazonaws.com -v
```

Command:
```
ssh -i "private.pem" -f -N -L
5433:pg115.xxxx.us-east-2.rds.amazonaws.com:5432
ec2-user@ec2-xxxx-xxx9.us-east-2.compute.amazonaws.com -v
```

# Execution

```
cp .env.example .env

# copy .pem to current folder

# change variables in .env

sh ./start_proxy.sh
```

# Troubleshooting
chmod 400 xxx.pem
chmod 400 xxx.pem