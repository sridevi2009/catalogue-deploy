bucket = "gopisri-dev"
key    = "catalogue"
region = "us-east-1"
dynamodb_table = "gopisri-locking-dev"




# terraform init -backend-config=dev/backend.tf {for the first time}
# terraform plan -var-file=dev/dev.tfvars
# terraform apply -var-file=dev/dev.tfvars

# terraform init -reconfigure -backend-config=dev/backend.tf


# terraform init -reconfigure -backend-config=prod/backend.tf
# terraform plan -var-file=prod/prod.tfvars
# terraform apply -var-file=prod/prod.tfvars
# terraform apply -var-file=prod/prod.tfvars -auto-approve
