# Registro de Decisiones Arquitectónicas (ADR): Elección de Node.js + TypeScript para el Microservicio de Login

## Contexto

Al diseñar un microservicio de login con JWT (JSON Web Token) y Passport para la autenticación, era crucial elegir una tecnología que se alineara con los requisitos del proyecto en términos de escalabilidad, experiencia del desarrollador y soporte del ecosistema. Después de evaluar varias tecnologías, incluyendo PHP, Rust y Python, el equipo optó por usar **Node.js** con **TypeScript**.

## Decisión

Elegimos Node.js con TypeScript para el desarrollo del microservicio de login.

## Justificación

### 1. **Rendimiento y Escalabilidad**
Node.js está construido sobre el motor V8 de JavaScript, que ofrece un excelente rendimiento para operaciones intensivas de entrada/salida, como el manejo de solicitudes HTTP y consultas a bases de datos. Su modelo de bucle de eventos no bloqueante y monohilo lo hace ideal para manejar tareas de alta concurrencia típicas en microservicios.

- **Generación y validación de JWT:** Node.js sobresale en el manejo de operaciones criptográficas ligeras, una parte clave de la autenticación basada en JWT.
- **Capacidades en tiempo real:** Si el servicio de autenticación necesita integrarse con sistemas en tiempo real más adelante, Node.js proporciona soporte sin problemas a través de WebSockets y bibliotecas como Socket.IO.

### 2. **Rico Ecosistema y Bibliotecas**
El ecosistema de Node.js incluye una amplia gama de bibliotecas y frameworks diseñados para el desarrollo web. Passport.js, un middleware ampliamente utilizado para la autenticación, se integra fácilmente con Node.js, simplificando la implementación de flujos de login.

- Disponibilidad de bibliotecas probadas para JWT (`jsonwebtoken`), bcrypt (`bcrypt`) y otras tareas relacionadas con la autenticación.
- Una comunidad activa y actualizaciones regulares garantizan viabilidad a largo plazo.

### 3. **Productividad del Desarrollador con TypeScript**
TypeScript introduce tipado estático en JavaScript, lo que reduce significativamente los errores en tiempo de ejecución y mejora la confianza del desarrollador.

- **Calidad del código:** TypeScript ayuda a prevenir errores comunes al imponer seguridad en los tipos.
- **Escalabilidad:** El sistema de tipado estático facilita la gestión de bases de código en crecimiento.
- **Herramientas:** Los IDE modernos (p. ej., VSCode) ofrecen ricas integraciones con TypeScript, mejorando la velocidad de desarrollo y la refactorización del código.

### 4. **Experiencia del Equipo y Curva de Aprendizaje**

- Node.js y TypeScript se alinean con las habilidades existentes del equipo, reduciendo el tiempo de incorporación.
- Ciclos de implementación más rápidos gracias a la familiaridad con JavaScript/TypeScript.
- Una amplia documentación y soporte comunitario para ambos simplifican la resolución de problemas.

### 5. **Comparación con Otras Tecnologías**

| Tecnología   | Pros | Contras |
|---------------|------|---------|
| **PHP**       | Madura, excelente para aplicaciones web; frameworks bien soportados como Laravel. | Sincrónica por defecto; menos adecuada para microservicios de alta concurrencia. |
| **Rust**      | Rendimiento excepcional y seguridad de memoria; ideal para programación de bajo nivel. | Curva de aprendizaje más pronunciada; desarrollo más lento para servicios web. |
| **Python**    | Sintaxis simple; bibliotecas maduras para frameworks web como Django y Flask. | Rendimiento inferior en operaciones de alta concurrencia en comparación con Node.js. |
| **Node.js**   | Alto rendimiento; diseñado de manera asincrónica; rico ecosistema. | La naturaleza monohilo puede presentar desafíos para tareas intensivas en CPU (aunque no es relevante para este microservicio). |

### 6. **Consideraciones Futuras**
Node.js + TypeScript garantiza que el servicio pueda evolucionar fácilmente con nuevos requisitos:
- Integración con otros microservicios basados en Node.js.
- Despliegue en entornos containerizados (p. ej., Docker).
- Potencial para arquitecturas serverless con plataformas como AWS Lambda o Azure Functions.

## Consecuencias

### Resultados Positivos
- Velocidad de desarrollo mejorada y mayor confiabilidad del código gracias a TypeScript.
- Alta escalabilidad y rendimiento del microservicio.
- Fuerte soporte comunitario y un extenso ecosistema de bibliotecas.

### Compromisos
- Uso de memoria ligeramente mayor en comparación con Rust.
- Dependencia del ecosistema de JavaScript/TypeScript.

## Estado
Esta decisión está **aprobada** y se volverá a evaluar si los requisitos del proyecto cambian significativamente.

## Referencias
- [Documentación de Node.js](https://nodejs.org/)
- [Documentación de TypeScript](https://www.typescriptlang.org/)
- [Documentación de Passport.js](http://www.passportjs.org/)

