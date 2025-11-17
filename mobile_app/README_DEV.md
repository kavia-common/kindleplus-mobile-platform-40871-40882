# Bookztron Mobile (Flutter) — Developer Guide

Commands
- Run on Android/iOS:
  flutter pub get
  flutter run

- Run tests:
  flutter test

- Build APK (debug):
  flutter build apk --debug

Environment
- Copy `.env.example` to `.env` and set:
  - API_BASE_URL (e.g. https://<backend-host>:3001)
  - APP_ENV (development|staging|production)

Packages
- Routing: go_router
- Networking: http
- Secure Storage: flutter_secure_storage
- State Management: provider
- Env: flutter_dotenv
- Cached image: cached_network_image
- Google: google_sign_in
- Launcher: url_launcher

Notes
- DELETE requests do not send bodies, and 204 No Content is handled gracefully by ApiClient.
- For Flutter web builds (if you run `flutter run -d chrome`), prefer CanvasKit renderer:
  flutter run -d chrome --web-renderer canvaskit
  This improves text rendering in the card-heavy UI.
