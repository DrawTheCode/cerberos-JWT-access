# Cerberos: Microservicio de Login con JWT

## Descripción
Cerberos es un microservicio diseñado para gestionar la autenticación mediante JWT (JSON Web Token). Utiliza Node.js con TypeScript para proporcionar una base segura, escalable y moderna para aplicaciones que requieren un sistema de login robusto.

### Características principales:
- **Autenticación segura:** Uso de JWT para la generación y validación de tokens.
- **Modularidad:** Arquitectura basada en microservicios para facilitar la integración.
- **Escalabilidad:** Implementado con tecnologías modernas como Node.js y TypeScript.

## Comandos disponibles
A continuación se describen los comandos definidos en el archivo `package.json`:

### Comandos generales

- **`npm run test`**
  Ejecuta las pruebas definidas en el proyecto. Actualmente, este comando muestra un mensaje indicando que no hay pruebas especificadas.

  ```bash
  npm run test
  ```

- **`npm run lint`**
  Ejecuta ESLint para verificar que el código cumple con las reglas definidas en `eslint.config.js`.

  ```bash
  npm run lint
  ```

- **`npm run lint:fix`**
  Ejecuta ESLint e intenta corregir automáticamente los problemas encontrados.

  ```bash
  npm run lint:fix
  ```

- **`npm run build`**
  Compila el código TypeScript a JavaScript utilizando el compilador `tsc`.

  ```bash
  npm run build
  ```

- **`npm start`**
  Inicia la aplicación en modo de producción utilizando el archivo compilado en `dist/main.js`.

  ```bash
  npm start
  ```

- **`npm run start:dev`**
  Inicia la aplicación en modo de desarrollo utilizando `nodemon` para la recarga automática del servidor.

  ```bash
  npm run start:dev
  ```

### Comandos de Docker

- **`npm run docker`**
  Inicia el contenedor Docker para el entorno de producción.

  ```bash
  npm run docker
  ```

- **`npm run docker:init`**
  Construye la imagen Docker para producción y la inicia.

  ```bash
  npm run docker:init
  ```

- **`npm run docker:build`**
  Construye la imagen Docker para producción.

  ```bash
  npm run docker:build
  ```

- **`npm run docker:dev`**
  Inicia el contenedor Docker para el entorno de desarrollo.

  ```bash
  npm run docker:dev
  ```

- **`npm run docker:dev:build`**
  Construye la imagen Docker para desarrollo.

  ```bash
  npm run docker:dev:build
  ```

- **`npm run docker:dev:init`**
  Construye la imagen Docker para desarrollo y la inicia.

  ```bash
  npm run docker:dev:init
  ```

## Requisitos previos
- **Node.js**: Versión 22 o superior.
- **Docker**: Para ejecutar los comandos relacionados con contenedores.

## Instalación
1. Clona el repositorio:

   ```bash
   git clone git@github.com:DrawTheCode/cerberos-JWT-access.git
   cd cerberos
   ```

2. Instala las dependencias:

   ```bash
   npm install
   ```

3. Compila el proyecto:

   ```bash
   npm run build
   ```

4. Inicia el entorno de desarrollo:

   ```bash
   npm run start:dev
   ```

## Contribución
Si deseas contribuir al proyecto, asegúrate de seguir las reglas de estilo definidas y ejecutar los comandos de lint antes de enviar un pull request:

```bash
npm run lint
npm run lint:fix
```

## Autor
Desarrollado por **DrawingTheCode**.

## Licencia
Este proyecto está bajo la licencia ISC.

