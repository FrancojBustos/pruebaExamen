# Instalaciones necesarias para el funcionamiento:

Dentro del directorio del proyecto ejecutar:

```bash
npm install
npm install sequelize mysql2 dotenv
```

> > ### Requiere de una base de datos MySQL.

Variables de entorno:

```bash
PORT=
DB_NAME=
DB_USER=
DB_PASSWORD=
DB_HOST=
DB_PORT=
DB_DIALECT=
SECRET_KEY=clave-secreta-de-desarrollo
```

Ejecutar el proyecto en modo desarrollo:

```bash
npm run dev
```

Ejecutar el proyecto en modo producción:

```bash
npm run start
```
