# Spotify App Clone

A Flutter clone of the Spotify onboarding experience — splash screen, get-started landing, light/dark mode selection, and sign-up/sign-in screens with a persistent theme.

## Features

- **Splash** — logo + 2s auto-advance.
- **Get Started** — landing screen.
- **Choose Mode** — light/dark theme picker persisted across restarts (`HydratedCubit`).
- **Sign Up / Sign In** — form screens with social-icons placeholders (auth wiring planned).
- **Reusable components** — app bar, text field, buttons, dividers, icons.
- **Satoshi font family** bundled across 5 weights (300–900).

## Architecture

```
lib/
├── core/configs/     # theme, colors, strings, images/vectors
├── common/           # shared widgets, navigation helpers, is-dark-mode
├── features/presentation/
│   ├── splash, get_started, choose_mode
│   └── auth (signup / signin)
└── firebase_options.dart
```

- State: `flutter_bloc` + `hydrated_bloc` (theme persistence).
- Navigation: imperative Navigator helpers.

## Getting started

```bash
flutter pub get
flutter run
```

## Status & roadmap

⚠️ **Early prototype (onboarding only).** No home screen, music playback, or real auth yet; the `just_audio` player, Firebase Auth, and Firestore are declared but not wired.

Planned: Firebase Auth wiring → Home + library → audio playback (just_audio) → quality/tests/CI. Also on the list: rotate exposed Firebase configs, remove unused deps, add `firebase_options` initialization properly, INTERNET permission, and go_router migration — see `RECOVERY_PLAN.md` (SP-01…SP-17).

## License

All rights reserved. Portfolio demo.