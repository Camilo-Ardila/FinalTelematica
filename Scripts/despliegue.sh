#!/bin/bash
set -e

# Variables
TERRAFORM_DIR="./Terraform"

echo "🚀 Inicializando Terraform..."
cd "$TERRAFORM_DIR"
terraform init

echo "📦 Aplicando la infraestructura..."
terraform apply -auto-approve

PUBLIC_IP=$(terraform output -raw public_ip)
echo "🌍 IP pública de la instancia: $PUBLIC_IP"

echo "✅ Despliegue completado, espere un par de minutos antes de acceder a la instancia."
