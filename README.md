lib/
├── main.dart                   # Entry point
├── app.dart                    # App widget, routes, theme
├── constants/                  # App constants (colors, strings, URLs)
│   ├── app_colors.dart
│   ├── api_endpoints.dart
│   └── app_strings.dart
├── models/                     # Data models
│   ├── ride.dart
│   ├── user.dart
│   └── vehicle.dart
├── services/                   # API calls, location services, payment
│   ├── api_service.dart
│   ├── auth_service.dart
│   ├── location_service.dart
│   └── payment_service.dart
├── provider/                   # State management (Provider/ChangeNotifier)
│   ├── auth_provider.dart
│   ├── ride_provider.dart
│   └── location_provider.dart
├── screens/                    # App screens / pages
│   ├── auth/                   # Login, signup
│   │   ├── login_screen.dart
│   │   └── signup_screen.dart
│   ├── home/                   # Main app screens
│   │   ├── home_screen.dart
│   │   ├── map_screen.dart
│   │   └── ride_detail_screen.dart
│   └── profile/
│       └── profile_screen.dart
├── widgets/                    # Reusable widgets
│   ├── custom_button.dart
│   ├── ride_card.dart
│   └── location_search_field.dart
├── utils/                      # Helpers, extensions
│   ├── extensions.dart
│   ├── validators.dart
│   └── location_utils.dart
├── routes/                     # App routing
│   └── app_routes.dart
└── l10n/                       # Localization files
    └── app_localizations.dart
# technova
