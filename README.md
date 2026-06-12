# Delivery App Test

Una aplicación móvil de delivery de comida desarrollada con Flutter. Prototipo funcional con navegación entre pantallas de autenticación y exploración de lugares.

## ✨ Features

- **Pantalla de bienvenida** con fondo borroso y dos opciones de acceso.
- **Autenticación**: Login, Sign Up y recuperación de contraseña con validación de formularios.
- **Navegación por tabs**: Explore, My Order, Favorite y Profile.
- **Exploración**: Carrusel de tarjetas con PageView para descubrir lugares.
- **Diseño responsive** adaptado a dispositivos móviles.

## 🛠 Built With

- **[Flutter](https://flutter.dev/)** — SDK 3.10.3
- **[Dart](https://dart.dev/)** — ^3.10.3
- **[cupertino_icons](https://pub.dev/packages/cupertino_icons)** — Iconos iOS

## 📁 Project Structure

```
lib/
├── main.dart                          # Entry point de la app
└── src/
    ├── assets/                        # Recursos estáticos (imágenes, iconos)
    │   ├── images/
    │   └── ...
    ├── colors/
    │   └── colors.dart                # Paleta de colores global
    ├── features/
    │   └── presentation/
    │       ├── forgot_password_page/  # Recuperación de contraseña
    │       ├── login_page/            # Inicio de sesión
    │       ├── sign_up_page/          # Registro de usuario
    │       ├── tabs/                  # Navegación principal con tabs
    │       │   ├── explore_tabs/      # Descubrir lugares
    │       │   ├── favorite_tab/      # Favoritos (placeholder)
    │       │   ├── my_order_tab/      # Pedidos (placeholder)
    │       │   ├── profile_tab/       # Perfil (placeholder)
    │       │   └── tabs_page/         # Bottom Navigation Bar
    │       ├── welcome_page/          # Pantalla de bienvenida
    │       └── widget/                # Widgets reutilizables
    │           └── back_button.dart   # Botón de retroceso
    └── routes/
        └── routes.dart                # Definición de rutas
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK 3.10.3 o superior
- Dart SDK 3.10.3 o superior

### Installation

```bash
# Clonar el repositorio
git clone <url-del-repositorio>

# Entrar al directorio
cd flutter_app_test

# Instalar dependencias
flutter pub get

# Ejecutar en modo debug
flutter run
```

### Running Tests

```bash
flutter test
```

## 📱 Screens

| Screen | Route | Description |
|---|---|---|
| Welcome | `welcome` | Landing page con branding y acceso a login/signup |
| Login | `login` | Formulario de inicio de sesión con validación |
| Sign Up | `sign-up` | Formulario de registro con validación y date picker |
| Forgot Password | `forgot-password` | Recuperación de contraseña vía email con validación |
| Tabs (Main) | `tabs` | Navegación principal con bottom tabs |

## 🧪 Testing

El proyecto incluye tests widget para:
- Renderizado correcto de la pantalla de bienvenida
- Navegación desde Welcome a Login

```bash
flutter test
```

## 📄 License

This project is private and not licensed for public distribution.
