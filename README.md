# 🚀 Proyecto Final Telemática

**Autor:** Camilo José Ardila Restrepo  
**Proyecto Final Telemática**  
**Fecha:** 29/05/2025  

---

## 📌 Descripción

Este proyecto automatiza el despliegue de una aplicación web (el clásico juego **Flappy Bird** en JavaScript) usando:

- **Terraform** para crear la infraestructura en **AWS**
- **Docker** para contenerizar y ejecutar la aplicación
- **Nginx** como servidor web

La aplicación se clona automáticamente desde el repositorio:

👉 https://github.com/aaarafat/JS-Flappy-Bird

---

## 📁 Estructura del Repositorio

```
DockerTerraform/
├── Docker/               # Contiene el Dockerfile personalizado
├── Scripts/              # Script de despliegue automatizado
│   └── despliegue.sh
└── Terraform/            # Código Terraform para crear la infraestructura
    └── main.tf
```

---

## ✅ Requisitos

- 🟢 Cuenta activa en [AWS](https://aws.amazon.com/)
- 🟢 [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) configurado
- 🟢 Acceso a una terminal (recomendado: **Git Bash** en Windows)
- 🟢 [Terraform](https://developer.hashicorp.com/terraform/downloads) instalado
- 🟢 [Git](https://git-scm.com/) instalado

> 💡 **Importante:** Asegúrate de tener **espacio disponible** en las VPC de AWS. Si ya tienes muchas subredes, gateways o tablas de rutas creadas por otros laboratorios (como en Vocareum), **elimínalas primero** o utiliza una región con recursos disponibles.

---

## 🔐 Configuración de credenciales

Puedes configurar tus credenciales de AWS de dos maneras:

### Opción 1: Exportar desde terminal

```bash
export AWS_ACCESS_KEY_ID=TU_ACCESS_KEY
export AWS_SECRET_ACCESS_KEY=TU_SECRET_KEY
export AWS_DEFAULT_REGION=us-east-1
```

### Opción 2: Usar el archivo `.aws/credentials`

Si estás usando Vocareum, puedes copiar las credenciales que se te proporciona en el laboratorio directamente en:

```
~/.aws/credentials
```

---

## 🚀 Instrucciones de despliegue

### 1️⃣ Clona este repositorio

```bash
git clone https://github.com/Camilo-Ardila/DockerTerraform.git
cd DockerTerraform
```

### 2️⃣ Ejecuta el script de despliegue

```bash
./Scripts/despliegue.sh
```

Este script hará lo siguiente:

- Inicializa y aplica Terraform
- Crea una instancia EC2 con Docker
- Clona automáticamente el repositorio del juego
- Construye el contenedor con Nginx y el juego
- Ejecuta el contenedor y expone el puerto HTTP (80)
- Muestra la **IP pública** de acceso

---

## 🌐 Acceder al juego

Una vez desplegado, verás en consola un mensaje como:

```
🌍 IP pública de la instancia: 3.123.456.78
```

Abre esa IP en tu navegador:

```
http://3.123.456.78
```

¡Y juega Flappy Bird directamente desde la nube! 🐦💻

---

## ⚠️ Notas adicionales

- El contenedor usa `nginx:alpine` como base
- La aplicación se sirve desde `/usr/share/nginx/html`
- El puerto `80` está **habilitado en el Security Group**
- Se recomienda tener solo una VPC por región activa en Vocareum

---

