# MarketMove App

**Aplicación móvil para gestión de pequeños comercios**

Desarrollado para **MarketMove S.L.** - Sistema integral de control de ventas, gastos y stock para dueños de tiendas.

---

## 📋 Descripción del Proyecto

MarketMove es una aplicación móvil desarrollada en Flutter que permite a los propietarios de pequeños comercios:

- **Registrar ventas diarias** con detalle de productos y cantidades
- **Controlar gastos** por categorías
- **Gestionar inventario** con alertas de stock bajo
- **Visualizar balance** de ganancias vs gastos en tiempo real
- **Tema claro/oscuro** con persistencia de preferencias
- **Verificación por email** para nuevos usuarios

---

## 👥 Integrantes del Equipo

| Rol | Nombre |
|-----|--------|
| Desarrollador Principal | [Koldo_Uruburu] |
| Diseño UX/UI | [Koldo_Uruburu] |
| Backend/Supabase | [Koldo_Uruburu] |

---

## 🔧 Requisitos Técnicos

### Requisitos del Sistema
- **Flutter SDK**: ^3.9.2
- **Dart SDK**: ^3.9.2
- **Android**: SDK 21+ (Android 5.0 Lollipop o superior)
- **iOS**: 12.0+

### Dependencias Principales
```yaml
dependencies:
  supabase_flutter: ^2.8.0    # Backend y autenticación
  provider: ^6.1.2             # Gestión de estado
  go_router: ^14.6.0           # Navegación
  intl: ^0.19.0                # Formato de fechas y monedas
  shared_preferences: ^2.3.3   # Persistencia local (tema)
  fl_chart: ^0.69.2            # Gráficos
```

### Backend
- **Supabase** - Base de datos PostgreSQL + Autenticación + Email verification

---

## 🚀 Cómo Ejecutar el Proyecto

### 1. Clonar el repositorio
```bash
git clone https://github.com/tu-usuario/marketmove_app.git
cd marketmove_app
```

### 2. Instalar dependencias
```bash
flutter pub get
```

### 3. Configurar Supabase
Editar `lib/src/core/constants/app_constants.dart` con tus credenciales:
```dart
static const String supabaseUrl = 'TU_SUPABASE_URL';
static const String supabaseAnonKey = 'TU_ANON_KEY';
```

### 4. Ejecutar la base de datos
Ejecutar el script `database/schema.sql` en tu proyecto de Supabase.

### 5. Configurar verificación de email (opcional)
Ver plantillas en `database/email_templates.html` para personalizar emails de Supabase.

### 6. Ejecutar la aplicación
```bash
flutter run
```

---

## 📁 Estructura del Proyecto

```
lib/
  src/
    core/
      constants/      # Constantes de la app (URLs)
      theme/          # Tema visual (claro/oscuro)
      routes/         # Configuración de navegación
    features/
      auth/           # Autenticación (login, registro)
      ventas/         # Módulo de ventas
      gastos/         # Módulo de gastos
      productos/      # Módulo de productos/stock
      resumen/        # Dashboard y resumen
    shared/
      widgets/        # Componentes reutilizables (loading, buttons)
      models/         # Modelos de datos
      services/       # Servicios (Supabase, API)
      providers/      # Providers de estado (auth, theme)
database/
  schema.sql          # Esquema de base de datos
  email_templates.html # Plantillas de email para Supabase
```

---

## 🎨 Características Visuales

### Tema Claro/Oscuro
- Cambio de tema con un botón en la AppBar
- Persistencia del tema seleccionado
- Colores modernos con gradientes
- Animaciones suaves en transiciones

### Colores Principales
| Elemento | Color Claro | Color Oscuro |
|----------|-------------|--------------|
| Primario | #6366F1 (Índigo) | #818CF8 |
| Secundario | #8B5CF6 (Violeta) | #A78BFA |
| Éxito | #10B981 (Verde) | #34D399 |
| Error | #EF4444 (Rojo) | #F87171 |

---

## 📊 Fases del Proyecto

| Fase | Descripción | Estado |
|------|-------------|--------|
| 1. Análisis | Toma de requisitos con el cliente | ✅ Completado |
| 2. Diseño UX/UI | Wireframes y diseño visual | ✅ Completado |
| 3. Arquitectura | Estructura de carpetas y servicios | ✅ Completado |
| 4. Frontend | Desarrollo de pantallas en Flutter | ✅ Completado |
| 5. Backend | Integración con Supabase | ✅ Completado |
| 6. Mejoras UI | Tema oscuro, animaciones, gradientes | ✅ Completado |
| 7. Documentación | README y presupuesto | ✅ Completado |
| 8. Entrega | Publicación (mock) | ⏳ Pendiente |

---

## � Sistema de Usuarios

Todos los usuarios registrados tienen rol **staff** con acceso completo a:
- Gestión de ventas
- Gestión de gastos
- Gestión de productos e inventario
- Dashboard con balance y estadísticas

---

## � Verificación de Email

La aplicación utiliza verificación de email mediante Supabase:
1. El usuario se registra con email y contraseña
2. Recibe un correo de confirmación
3. Al confirmar, puede acceder a la app

Las plantillas de email personalizadas están en `database/email_templates.html`.

---

## 📝 Licencia

Este proyecto es privado y está desarrollado exclusivamente para MarketMove S.L.

---

## 📞 Contacto

Para soporte técnico o consultas:
- Email: soporte@marketmove.com
- Web: www.marketmove.com
