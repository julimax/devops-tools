# terraform-sanbox

# terraform commands

    terraform init
  
    terraform plan
  
    terraform apply

    terraform apply -auto-approve
       
    terraform destroy
    
    terraform destroy -target aws_instance.ec2
    
    terraform console
    
    export TF_LOG=TRACE
    
    export TF_LOG_PATH=/tmp/terraform-crash.log
    
    terraform fmt
    
    terraform validate
    
    terraform taint  aws_instance.ec2
    
    terraform graph > graph.dot && cat graph.dot | dot -Tsvg > graph.svg
    
    terraform plan -out=demo
    
    terraform apply demo
    
    terraform output iam_names
    
    terraform plan -refresh=false
    
    terraform plan -refresh=false -target=aws_security_group.allow_ssh_conn
    
    
    
    
    
