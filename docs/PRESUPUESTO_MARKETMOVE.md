# PRESUPUESTO PROFESIONAL

## Desarrollo de Aplicación Móvil MarketMove

---

**Cliente:** MarketMove S.L.  
**Desarrollador:** Koldo Uruburu  
**Fecha:** 11 de Diciembre de 2024  
**Versión:** 1.0  

---

# A. INTRODUCCIÓN

## ¿Qué vamos a desarrollar?

Estimado cliente,

Le presentamos la propuesta para el desarrollo de **MarketMove App**, una aplicación móvil diseñada específicamente para facilitar la gestión diaria de su pequeño comercio.

### ¿Qué podrá hacer con esta aplicación?

La aplicación le permitirá:

- **Registrar sus ventas** de forma rápida y sencilla desde su móvil o tablet
- **Controlar sus gastos** organizados por categorías (proveedores, alquiler, suministros, etc.)
- **Gestionar su inventario** con alertas automáticas cuando un producto esté bajo de stock
- **Ver su balance en tiempo real** - sabrá en todo momento si está ganando o perdiendo dinero
- **Personalizar la apariencia** con tema claro u oscuro según su preferencia

### ¿Por qué Flutter?

Para el desarrollo utilizaremos **Flutter**, una tecnología moderna desarrollada por Google. Esto significa que:

| Ventaja | Beneficio para usted |
|---------|---------------------|
| **Una sola aplicación** | Funciona tanto en Android como en iPhone sin coste adicional |
| **Rapidez de desarrollo** | Menor tiempo de espera y menor coste |
| **Rendimiento excelente** | La app será rápida y fluida, como una aplicación nativa |
| **Fácil mantenimiento** | Actualizaciones futuras serán más económicas |
| **Diseño atractivo** | Interfaces modernas y profesionales |

### ¿Y los datos?

Sus datos estarán seguros en la nube gracias a **Supabase**, un servicio profesional de base de datos que garantiza:

- Acceso desde cualquier dispositivo
- Copias de seguridad automáticas
- Máxima seguridad y privacidad
- Disponibilidad 24/7

---

# B. FASES DEL PROYECTO

## Fase 1: Análisis y Toma de Requisitos

**Descripción:** Reuniones con el cliente para entender sus necesidades, flujos de trabajo actuales y expectativas del sistema.

**Entregables:**
- Documento de requisitos funcionales
- Lista de funcionalidades priorizadas
- Definición del alcance del proyecto

---

## Fase 2: Diseño UX/UI Básico

**Descripción:** Diseño de la experiencia de usuario y la interfaz visual de la aplicación.

**Entregables:**
- Wireframes de todas las pantallas
- Flujo de navegación
- Paleta de colores y tipografía
- Mockups de pantallas principales

---

## Fase 3: Arquitectura del Proyecto

**Descripción:** Definición de la estructura técnica del proyecto.

**Entregables:**
- Estructura de carpetas organizada:
  ```
  lib/
    src/
      core/          → Configuración base (tema, rutas, constantes)
      features/      → Módulos funcionales (ventas, gastos, productos...)
      shared/        → Componentes reutilizables
  ```
- Definición de proveedores de estado (Provider)
- Arquitectura de servicios y modelos de datos
- Esquema de base de datos

---

## Fase 4: Desarrollo del Frontend en Flutter

**Descripción:** Programación de todas las pantallas e interfaces de usuario.

**Módulos a desarrollar:**

| Módulo | Pantallas |
|--------|-----------|
| **Autenticación** | Login, Registro, Verificación de email |
| **Dashboard** | Resumen principal, Balance diario/mensual |
| **Ventas** | Listado, Registro de venta, Detalle |
| **Gastos** | Listado por categorías, Registro de gasto |
| **Productos** | Inventario, Altas/Bajas, Alertas stock |
| **Configuración** | Tema claro/oscuro, Perfil de usuario |

---

## Fase 5: Integración con Base de Datos (Supabase)

**Descripción:** Conexión de la aplicación con el backend en la nube.

**Entregables:**
- Configuración de proyecto Supabase
- Tablas de base de datos PostgreSQL
- Sistema de autenticación con verificación de email
- Reglas de seguridad (Row Level Security)
- APIs de conexión para cada módulo
- Plantillas de email personalizadas

---

## Fase 6: Pruebas Funcionales

**Descripción:** Verificación del correcto funcionamiento de todas las funcionalidades.

**Tipos de pruebas:**
- Pruebas unitarias de funciones críticas
- Pruebas de integración con Supabase
- Pruebas de usabilidad
- Pruebas en diferentes dispositivos (Android/iOS)
- Corrección de errores detectados

---

## Fase 7: Documentación Final

**Descripción:** Elaboración de toda la documentación técnica y de usuario.

**Entregables:**
- Manual de usuario
- Documentación técnica (README)
- Guía de instalación y configuración
- Documento de presupuesto (este documento)

---

## Fase 8: Entrega y Publicación (Mock)

**Descripción:** Preparación para la entrega final y simulación de publicación.

**Entregables:**
- APK firmado para Android
- Build para iOS (simulado)
- Repositorio Git con todo el código fuente
- Sesión de formación al cliente
- Periodo de soporte inicial (1 semana)

---

# C. ESTIMACIÓN DE HORAS

| Fase | Descripción | Horas Estimadas |
|------|-------------|-----------------|
| 1 | Análisis y Toma de Requisitos | 8 horas |
| 2 | Diseño UX/UI Básico | 12 horas |
| 3 | Arquitectura del Proyecto | 6 horas |
| 4 | Desarrollo Frontend Flutter | 40 horas |
| 5 | Integración con Supabase | 16 horas |
| 6 | Pruebas Funcionales | 10 horas |
| 7 | Documentación Final | 6 horas |
| 8 | Entrega y Publicación | 4 horas |
| | | |
| **TOTAL** | | **102 horas** |

### Desglose del Desarrollo Frontend (40 horas)

| Módulo | Horas |
|--------|-------|
| Autenticación (Login/Registro) | 6 |
| Dashboard y Resumen | 8 |
| Módulo de Ventas | 8 |
| Módulo de Gastos | 6 |
| Módulo de Productos/Stock | 8 |
| Sistema de Temas (claro/oscuro) | 4 |
| **Total Frontend** | **40** |

---

# D. PRECIO

## Tarifa por Hora

| Concepto | Valor |
|----------|-------|
| **Precio/hora desarrollador Junior** | 25,00 € |

## Cálculo del Precio Total

| Concepto | Cálculo | Importe |
|----------|---------|---------|
| Horas totales | 102 horas × 25,00 €/hora | 2.550,00 € |
| | | |
| **SUBTOTAL** | | **2.550,00 €** |
| IVA (21%) | | 535,50 € |
| | | |
| **TOTAL CON IVA** | | **3.085,50 €** |

---

## Forma de Pago Propuesta

| Momento | Porcentaje | Importe |
|---------|------------|---------|
| Al inicio del proyecto | 30% | 925,65 € |
| Entrega de diseño UX/UI | 20% | 617,10 € |
| Entrega de desarrollo funcional | 30% | 925,65 € |
| Entrega final | 20% | 617,10 € |
| **TOTAL** | **100%** | **3.085,50 €** |

---

## Observaciones Importantes

### Incluido en el presupuesto:
- Desarrollo completo de la aplicación móvil
- Diseño UX/UI personalizado con tema claro/oscuro
- Configuración inicial de Supabase (base de datos)
- Sistema de autenticación con verificación de email
- Plantillas de email personalizadas
- Documentación técnica y de usuario
- Código fuente completo
- 1 semana de soporte post-entrega

### NO incluido en el presupuesto:
- **Mantenimiento mensual** - Se puede contratar aparte (consultar)
- **Hosting de Supabase** - El cliente asume los costes del plan elegido (~25€/mes aprox.)
- **Publicación en tiendas** - Cuenta de desarrollador Google Play (25€ único) / Apple (99€/año)
- **Nuevas funcionalidades** no contempladas en este documento

### Posibles Ampliaciones Futuras:
| Ampliación | Precio Estimado |
|------------|-----------------|
| Módulo de informes avanzados con gráficos | +400 € |
| Notificaciones push | +300 € |
| Exportación a Excel/PDF | +250 € |
| Multi-idioma (inglés) | +350 € |
| Modo offline | +500 € |
| Integración con TPV físico | A consultar |

---

# E. CRONOGRAMA

## Planning del Proyecto

**Duración total estimada: 1 semana (5 días laborables)**

```
LUNES
├── 09:00 - 12:00: Fase 1 - Análisis y Toma de Requisitos
└── 12:00 - 17:00: Fase 2 - Diseño UX/UI Básico

MARTES
├── 09:00 - 11:00: Fase 3 - Arquitectura del Proyecto
└── 11:00 - 17:00: Fase 4 - Desarrollo Frontend (Auth + Dashboard)

MIÉRCOLES
└── 09:00 - 17:00: Fase 4 - Desarrollo Frontend (Ventas + Gastos + Productos)

JUEVES
├── 09:00 - 13:00: Fase 4 - Desarrollo Frontend (Temas + Mejoras UI)
└── 13:00 - 17:00: Fase 5 - Integración con Supabase

VIERNES
├── 09:00 - 12:00: Fase 5 - Integración Supabase (finalización)
├── 12:00 - 14:00: Fase 6 - Pruebas Funcionales
├── 14:00 - 16:00: Fase 7 - Documentación Final
└── 16:00 - 17:00: Fase 8 - Entrega y Publicación
```

## Diagrama de Gantt Semanal

| Fase | LUN | MAR | MIÉ | JUE | VIE |
|------|:---:|:---:|:---:|:---:|:---:|
| 1. Análisis | ██ | | | | |
| 2. Diseño UX/UI | ██ | | | | |
| 3. Arquitectura | | █ | | | |
| 4. Desarrollo Flutter | | ██ | ██ | ██ | |
| 5. Integración Supabase | | | | █ | ██ |
| 6. Pruebas | | | | | █ |
| 7. Documentación | | | | | █ |
| 8. Entrega | | | | | █ |

---

# ACEPTACIÓN DEL PRESUPUESTO

Este presupuesto tiene una validez de **30 días** desde la fecha de emisión.

Para aceptar este presupuesto, por favor firme a continuación:

---

**Por el cliente (MarketMove S.L.):**

Nombre: _________________________________

Firma: _________________________________

Fecha: _________________________________

---

**Por el desarrollador:**

Nombre: **Koldo Uruburu**

Firma: _________________________________

Fecha: 11 de Diciembre de 2024

---

*Documento elaborado para el proyecto académico de desarrollo de aplicaciones móviles.*
