# 🐳 Elegant Cut - Docker Infrastructure

Este repositorio orquesta todo el sistema **Elegant Cut** con Docker:

| Servicio | Tecnología | Puerto |
|----------|-----------|--------|
| Frontend | React + Vite | `5173` |
| Backend | NestJS + Prisma | `3001` |
| Database | MySQL 8 | `3306` |

---

## 📁 Estructura requerida

Los 3 repositorios deben estar en la **misma carpeta padre**:

```
/elegant/
  ├── Elegant-Cut--Docker/          ← Este repositorio (docker-compose)
  ├── Elegant-cut--flow/            ← Frontend (React + Vite)
  │   └── Elegant-Cut-vite/
  └── Elegant-cut--flow-backend/    ← Backend (NestJS + Prisma)
      └── elegant-cut-vite-back/
```

---

## 📦 Requisitos

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) instalado y corriendo

---

## 🚀 Cómo ejecutar

### 1. Clonar los 3 repositorios en la misma carpeta

```bash
mkdir elegant && cd elegant
git clone <url-Elegant-Cut--Docker>
git clone <url-Elegant-cut--flow>
git clone <url-Elegant-cut--flow-backend>
```

### 2. Configurar variables de entorno

```bash
cd Elegant-Cut--Docker
cp .env.example .env
# Editar .env con tus valores reales (especialmente CLOUDINARY_API_SECRET)
```

### 3. Levantar todo

```bash
docker compose -f docker-compose.dev.yml up --build
```

### 4. Verificar que todo funciona

| Servicio | URL |
|----------|-----|
| Frontend | http://localhost:5173 |
| Backend API | http://localhost:3001/api |
| Swagger Docs | http://localhost:3001/api/docs |

---

## 🛑 Comandos útiles

```bash
# Detener todos los contenedores
docker compose -f docker-compose.dev.yml down

# Detener y BORRAR todos los datos (MySQL)
docker compose -f docker-compose.dev.yml down -v

# Ver logs en tiempo real
docker compose -f docker-compose.dev.yml logs -f

# Ver logs de un servicio específico
docker compose -f docker-compose.dev.yml logs -f backend

# Reconstruir un servicio específico
docker compose -f docker-compose.dev.yml up --build backend

# Ejecutar Prisma migrations manualmente
docker compose -f docker-compose.dev.yml exec backend npx prisma db push
```

---

## 🔧 Cómo funciona

```
Tu navegador (Chrome/Firefox)
     │
     ├── http://localhost:5173  →  Frontend (Vite dev server)
     │                                  │
     │                                  │ axios requests
     │                                  ▼
     └── http://localhost:3001  →  Backend (NestJS API)
                                        │
                                        │ Prisma ORM
                                        ▼
                                   MySQL (Docker)
                                   Puerto 3306
```

> **NOTA**: El frontend hace las peticiones API desde el **navegador** (tu PC),
> no desde dentro del contenedor. Por eso `VITE_API_URL` usa `localhost`.