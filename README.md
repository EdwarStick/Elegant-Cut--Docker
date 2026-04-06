# 🐳 Elegant Cut - Docker + Aiven Cloud

Este repositorio orquesta todo el sistema **Elegant Cut** con Docker, conectado a una base de datos MySQL en la nube (**Aiven**).

---

## 🧠 ¿Cómo funciona la base de datos?

La base de datos **NO está en tu computador**. Está en un servidor en internet (Aiven Cloud). Esto significa:

- ✅ **Los datos se guardan automáticamente en la nube** cuando usas la app (registrar usuarios, crear citas, etc.).
- ✅ **No necesitas exportar ni importar nada** — cualquier cambio que hagas desde la app ya está en Aiven.
- ✅ **Desde cualquier dispositivo** con la misma configuración, verás los **mismos datos**.
- ✅ Puedes ver los datos directamente en [console.aiven.io](https://console.aiven.io/).

```
┌──────────────────────────────────────────────────────┐
│  TU PC (Docker)                                      │
│                                                      │
│  ┌───────────┐     ┌───────────┐                     │
│  │ Frontend  │────→│ Backend   │──── INTERNET ───→ ☁️ Aiven MySQL
│  │ React     │     │ NestJS    │                     │  (Los datos viven aquí)
│  │ :5173     │     │ :3001     │                     │
│  └───────────┘     └───────────┘                     │
└──────────────────────────────────────────────────────┘

Otro PC con la misma config ──→ Backend ──→ ☁️ Mismos datos en Aiven
```

---

## 📁 Estructura del Proyecto

Los 3 repositorios deben estar en la **misma carpeta padre**:

```
/elegant/
  ├── Elegant-Cut--Docker/            ← (Este Repo) Configuración Docker
  ├── Elegant-cut--flow/              ← Frontend (React + Vite)
  │   └── Elegant-Cut-vite/
  └── Elegant-cut--flow-backend/      ← Backend (NestJS + Prisma)
      └── elegant-cut-vite-back/
```

---

## 🛠️ Requisitos Previos

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) instalado y corriendo.
- [Git](https://git-scm.com/) para clonar los repositorios.

---

## 🚀 Iniciar en un Nuevo Dispositivo (Paso a Paso)

### Paso 1: Clonar los 3 repositorios

```bash
mkdir elegant && cd elegant
git clone https://github.com/EdwarStick/Elegant-Cut--Docker.git
git clone https://github.com/EdwarStick/Elegant-cut--flow.git
git clone https://github.com/EdwarStick/Elegant-cut--flow-backend.git
```

### Paso 2: Crear el archivo `.env`

```bash
cd Elegant-Cut--Docker
cp .env.example .env
```
> [!IMPORTANT]
> Abre el archivo `.env` y asegúrate de completar tus credenciales de **Cloudinary** y **Gmail** para que las imágenes y el envío de correos funcionen correctamente.

### 3. Iniciar el Proyecto
Levanta todos los servicios con Docker Compose:
```bash
docker compose -f docker-compose.dev.yml up --build
```

La primera vez tarda unos minutos. Cuando termine, los servicios estarán disponibles:

| Servicio | URL |
|---|---|
| **Frontend (App)** | http://localhost:5173 |
| **Backend (API)** | http://localhost:3001/api |
| **Swagger Docs** | http://localhost:3001/api/docs |

### ¡Listo! 🎉

No necesitas importar base de datos ni descargar archivos SQL. Los datos ya están en Aiven y el backend se conecta automáticamente.

---

## 💻 Comandos Útiles de Docker

### Gestión de Contenedores

```bash
# Iniciar servicios (en segundo plano)
docker compose -f docker-compose.dev.yml up -d

# Iniciar y reconstruir (después de cambios en código)
docker compose -f docker-compose.dev.yml up --build

# Detener servicios
docker compose -f docker-compose.dev.yml stop

# Detener y eliminar contenedores
docker compose -f docker-compose.dev.yml down

# Ver logs en tiempo real
docker compose -f docker-compose.dev.yml logs -f

# Ver logs solo del backend
docker compose -f docker-compose.dev.yml logs -f backend

# Reconstruir solo el backend
docker compose -f docker-compose.dev.yml up --build backend
```

### Gestión de la Base de Datos

```bash
# Ver datos con interfaz visual (Prisma Studio) en 2do plano
docker exec -d elegant_backend_app npx prisma studio --port 5555 --hostname 0.0.0.0
# Luego abre http://localhost:5555 en tu navegador

# Sincronizar esquema de Prisma con la BD en la nube
docker exec -it elegant_backend_app npx prisma db push

# Regenerar cliente de Prisma
docker exec -it elegant_backend_app npx prisma generate
```

---

## 🗄️ Base de Datos en la Nube (Aiven)

### ¿Dónde están mis datos?
Los datos están en **Aiven Cloud**. Puedes verlos de 3 formas:

1. **Prisma Studio** (recomendado):
   ```bash
   docker exec -d elegant_backend_app npx prisma studio --port 5555 --hostname 0.0.0.0
   ```
   Abre http://localhost:5555 en tu navegador.

2. **Consola Web de Aiven**: Entra a [console.aiven.io](https://console.aiven.io/) → tu servicio MySQL.

3. **Cliente MySQL** (DBeaver, MySQL Workbench, etc.) con estos datos:
   - **Host:** `mysql-elegantcut-elegant-cut.d.aivencloud.com`
   - **Puerto:** `11441`
   - **Usuario:** `avnadmin`
   - **Contraseña:** *(la de la Service URI)*
   - **Base de datos:** `defaultdb`
   - **SSL:** Requerido

### ¿Cuándo necesito exportar/importar manualmente?

**Casi nunca.** Solo en estos casos especiales:

- **Quieres un respaldo local** (por seguridad):
  ```bash
  # Exportar desde Aiven a un archivo local
  docker exec -it elegant_backend_app sh -c "apt-get update && apt-get install -y default-mysql-client && mysqldump -u avnadmin -pTU_PASSWORD -h TU_HOST -P 11441 defaultdb > /tmp/backup.sql" && docker cp elegant_backend_app:/tmp/backup.sql ./backup_local.sql
  ```

- **Quieres restaurar desde un backup al servicio de Aiven**:
  ```powershell
  # Desde PowerShell (Windows)
  Get-Content backup_elegantcut_utf8.sql | docker exec -i elegant_backend_app mysql -u avnadmin -pTU_PASSWORD -h TU_HOST -P 11441 defaultdb
  ```

---

## 🔧 Arquitectura del Sistema

```
Tu navegador (Chrome/Firefox)
     │
     ├── http://localhost:5173  →  Frontend (Vite dev server)
     │                                  │
     │                                  │ axios requests
     │                                  ▼
     └── http://localhost:3001  →  Backend (NestJS API)
                                        │
                                        │ Prisma ORM (SSL)
                                        ▼
                                   ☁️ Aiven MySQL
                                   (Base de datos en la nube)
```

> **NOTA**: El frontend hace las peticiones API desde el **navegador** (tu PC),
> no desde dentro del contenedor. Por eso `VITE_API_URL` usa `localhost`.

---

## ❓ Preguntas Frecuentes

### ¿Necesito MySQL instalado en mi PC?
**No.** Todo corre dentro de Docker. Solo necesitas Docker Desktop.

### ¿Si borro los contenedores pierdo los datos?
**No.** Los datos están en Aiven (internet), no en tu PC. Puedes hacer `docker compose down -v` sin miedo.

### ¿Puedo volver a usar MySQL local?
Sí. Descomenta la sección `db` en el `docker-compose.dev.yml` y cambia `DATABASE_URL` en el `.env` a `mysql://root:root@db:3306/elegantcut`.

### ¿Aiven tiene costo?
El plan **Free** es gratuito (1 CPU, 1GB RAM, 1GB disco). Es suficiente para desarrollo. Si el servicio se apaga por inactividad, puedes reactivarlo desde la consola de Aiven con un clic.