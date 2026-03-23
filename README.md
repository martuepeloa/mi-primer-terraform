# Mi Primer Terraform

Infraestructura en AWS creada con Terraform como código (IaC).

## ¿Qué hace este proyecto?

Crea una infraestructura completa en AWS usando módulos de Terraform:

- **VPC** con rango de IPs 10.0.0.0/16
- **Subnet pública** con acceso a internet
- **Internet Gateway** para conectar la VPC a internet
- **Route Table** para enrutar el tráfico
- **Security Group** con acceso SSH (puerto 22)
- **EC2** (Ubuntu 20.04, t3.micro) dentro de la VPC
- **Remote State** almacenado en S3

## Arquitectura
```
Internet
    ↓
Internet Gateway
    ↓
Subnet pública (10.0.1.0/24)
    ↓
Security Group (puerto 22)
    ↓
EC2 - Ubuntu 20.04
```

## Estructura del proyecto
```
mi-primer-terraform/
├── main.tf              # módulo raíz
├── variables.tf         # variables globales
├── .gitignore
└── modules/
    ├── EC2/             # módulo de instancia
    │   ├── main.tf
    │   └── variables.tf
    └── VPC/             # módulo de red
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

## Tecnologías

- Terraform
- AWS (EC2, VPC, S3, DynamoDB)

## Cómo usarlo

1. Configurar credenciales de AWS
```bash
aws configure
```

2. Inicializar Terraform
```bash
terraform init
```

3. Ver los cambios antes de aplicar
```bash
terraform plan
```

4. Crear la infraestructura
```bash
terraform apply
```

5. Destruir la infraestructura
```bash
terraform destroy
```