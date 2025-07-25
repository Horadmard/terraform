# terraform
A hands-on practice

```
terraform-proxmox/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── providers.tf
├── versions.tf
├── modules/
│   └── vm/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       └── cloud-init/
│           ├── user-data.tpl
│           └── meta-data.tpl
└── environments/
    ├── dev/
    │   └── terraform.tfvars
    └── prod/
        └── terraform.tfvars
```


```
.
├── main.tf
├── outputs.tf
├── providers.tf
├── terraform.tf
└── variables.tf
```