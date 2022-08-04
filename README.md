# Repository for learning Terraform
This repository has been created for learning how to use the data source `terraform_remote_state` to get the state from another workspace inside the same organization on TFC

## This Repository creates a Random provider with Terraform

## Instructions

### Prerequisites

- [X] [Terraform](https://www.terraform.io/downloads)

## How to Use this Repo

- Clone this repository:
```shell
git clone git@github.com:dlavric/terraform-random-pet.git
```

- Go to the directory where the repo is stored and make sure the `main.tf` file is there too:
```shell
cd terraform-random-pet
```

- Go to the branch `remote-state`
```shell
git checkout remote-state
```

- Login into TFC
```shell
terraform login
```

- Run `terraform init`, to download any external dependency
```shell
terraform init
```

This is the output of initializing the Terraform code:
```shell
Initializing the backend...

Successfully configured the backend "remote"! Terraform will automatically
use this backend unless the backend configuration changes.

Initializing provider plugins...
- terraform.io/builtin/terraform is built in to Terraform

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

- Apply the changes with Terraform
```shell
terraform apply
```

This is the output for applying the changes:
```shell
Running apply in the remote backend. Output will stream here. Pressing Ctrl-C
will cancel the remote apply if it's still pending. If the apply started it
will stop streaming the logs, but will not stop the apply running remotely.

Preparing the remote apply...

To view this run in a browser, visit:
https://app.terraform.io/app/daniela-org/remote-random-pet/runs/run-2ndJXhBPXEyJfSRz

Waiting for the plan to start...

Terraform v1.2.6
on linux_amd64
Initializing plugins and modules...
data.terraform_remote_state.random-pet: Reading...
data.terraform_remote_state.random-pet: Read complete after 0s

Changes to Outputs:
  + from_other = "solely-select-dolphin"

You can apply this plan to save these new output values to the Terraform
state, without changing any real infrastructure.

------------------------------------------------------------------------

Cost estimation:

Resources: 0 of 0 estimated
           $0.0/mo +$0.0

------------------------------------------------------------------------

Do you want to perform these actions in workspace "remote-random-pet"?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

from_other = "solely-select-dolphin"
```



## Reference Documentation
- [Terraform Remote State](https://www.terraform.io/language/state/remote-state-data)
- [Accessing states from other workspaces](https://www.terraform.io/cloud-docs/workspaces/state#accessing-state-from-other-workspaces)
