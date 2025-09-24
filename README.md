
DocBook Flutter scaffold
========================

What's included
- Flutter project scaffold with multiple screens (login, patient home, doctor list, doctor detail, booking form, appointment history, doctor dashboard).
- Fake local backend: assets/data/doctors.json read by services/fake_api.dart
- No external network calls; simple navigation and UI elements to match provided designs.

How to run
1. Install Flutter SDK (https://flutter.dev)
2. From the project root run: flutter pub get
3. Run on an emulator or device: flutter run

Notes / To extend
- This is a scaffold focusing on structure and flows. You'll want to:
  - Add persistent user/auth state
  - Replace fake_api with real REST API
  - Polish UI to precisely match design
  - Add localization, validation, and tests
