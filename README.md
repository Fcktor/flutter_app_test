# Delivery App UI

A food delivery app interface built in Flutter. Working prototype covering the authentication flow and the main browsing experience, with form validation and tab navigation wired up end to end.

## Features

- **Welcome screen** with blurred background and two entry paths
- **Authentication**: login, sign up and password recovery, all with form validation
- **Tab navigation**: Explore, My Order, Favorite and Profile
- **Explore**: card carousel built on `PageView` for discovering places
- **Responsive layout** adapted to mobile devices

## Built with

- **[Flutter](https://flutter.dev/)** — SDK 3.10.3
- **[Dart](https://dart.dev/)** — ^3.10.3
- **[cupertino_icons](https://pub.dev/packages/cupertino_icons)** — iOS icons

## Screens

| Screen | Route | Description |
|---|---|---|
| Welcome | `welcome` | Landing page with branding and access to login/signup |
| Login | `login` | Sign-in form with validation |
| Sign Up | `sign-up` | Registration form with validation and date picker |
| Forgot Password | `forgot-password` | Email-based password recovery with validation |
| Tabs (Main) | `tabs` | Main navigation with bottom tabs |

## Project structure

```
lib/
├── main.dart                          # App entry point
└── src/
    ├── assets/                        # Static resources (images, icons)
    ├── colors/
    │   └── colors.dart                # Global color palette
    ├── features/
    │   └── presentation/
    │       ├── welcome_page/          # Welcome screen
    │       ├── login_page/            # Sign in
    │       ├── sign_up_page/          # Registration
    │       ├── forgot_password_page/  # Password recovery
    │       ├── tabs/                  # Main tab navigation
    │       │   ├── explore_tabs/      # Discover places
    │       │   ├── favorite_tab/      # Favorites (placeholder)
    │       │   ├── my_order_tab/      # Orders (placeholder)
    │       │   ├── profile_tab/       # Profile (placeholder)
    │       │   └── tabs_page/         # Bottom navigation bar
    │       └── widget/                # Reusable widgets
    └── routes/
        └── routes.dart                # Route definitions
```

## Getting started

Requires Flutter SDK 3.10.3 or higher.

```bash
git clone https://github.com/albertfsalapi/delivery-app-ui
cd delivery-app-ui
flutter pub get
flutter run
```

## Tests

Widget tests cover welcome screen rendering and navigation from Welcome to Login.

```bash
flutter test
```

## Status

UI prototype. Favorites, Orders and Profile tabs are placeholders; there is no backend.
