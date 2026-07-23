# Delivery App UI

Interfaz de una app de delivery de comida construida en Flutter. Prototipo funcional que cubre el flujo de autenticación y la experiencia principal de exploración, con validación de formularios y navegación por tabs conectadas de punta a punta.

## Funcionalidades

- **Pantalla de bienvenida** con fondo borroso y dos vías de acceso
- **Autenticación**: login, registro y recuperación de contraseña, todos con validación de formularios
- **Navegación por tabs**: Explore, My Order, Favorite y Profile
- **Explorar**: carrusel de tarjetas sobre `PageView` para descubrir lugares
- **Diseño responsive** adaptado a dispositivos móviles

## Construido con

- **[Flutter](https://flutter.dev/)** — SDK 3.10.3
- **[Dart](https://dart.dev/)** — ^3.10.3
- **[cupertino_icons](https://pub.dev/packages/cupertino_icons)** — iconos iOS

## Pantallas

| Pantalla | Ruta | Descripción |
|---|---|---|
| Welcome | `welcome` | Landing con branding y acceso a login/registro |
| Login | `login` | Formulario de inicio de sesión con validación |
| Sign Up | `sign-up` | Formulario de registro con validación y date picker |
| Forgot Password | `forgot-password` | Recuperación de contraseña por correo, con validación |
| Tabs (Main) | `tabs` | Navegación principal con bottom tabs |

## Estructura

```
lib/
├── main.dart                          # Punto de entrada de la app
└── src/
    ├── assets/                        # Recursos estáticos (imágenes, iconos)
    ├── colors/
    │   └── colors.dart                # Paleta de colores global
    ├── features/
    │   └── presentation/
    │       ├── welcome_page/          # Pantalla de bienvenida
    │       ├── login_page/            # Inicio de sesión
    │       ├── sign_up_page/          # Registro
    │       ├── forgot_password_page/  # Recuperación de contraseña
    │       ├── tabs/                  # Navegación principal
    │       │   ├── explore_tabs/      # Descubrir lugares
    │       │   ├── favorite_tab/      # Favoritos (placeholder)
    │       │   ├── my_order_tab/      # Pedidos (placeholder)
    │       │   ├── profile_tab/       # Perfil (placeholder)
    │       │   └── tabs_page/         # Bottom navigation bar
    │       └── widget/                # Widgets reutilizables
    └── routes/
        └── routes.dart                # Definición de rutas
```

## Cómo empezar

Requiere Flutter SDK 3.10.3 o superior.

```bash
git clone https://github.com/albertfsalapi/delivery-app-ui
cd delivery-app-ui
flutter pub get
flutter run
```

## Tests

Hay tests de widget para el renderizado de la pantalla de bienvenida y la navegación de Welcome a Login.

```bash
flutter test
```

## Estado

Prototipo de interfaz. Las tabs de Favoritos, Pedidos y Perfil son placeholders; no hay backend.
