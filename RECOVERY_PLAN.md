# Spotify-App-clone Recovery Plan

## Executive Summary

Spotify-App-clone is a Flutter UI clone of the Spotify onboarding flow — 26 Dart files, 4 screens (Splash, GetStarted, ChooseMode, SignUpOrSignIn). Firebase and just_audio are declared but never imported/used. Theme persistence works via HydratedBloc. Sign-in/SignUp buttons are empty no-ops. Zero tests. No home screen exists.

## Tracking Table

| ID | Area | Severity | Planned action | Status | Verification |
|---|---|---|---|---|---|
| SP-01 | Firebase API keys committed | Blocker | Rotate keys, restrict access | Not started | Keys restricted |
| SP-02 | Firebase not initialized | Blocker | Add Firebase.initializeApp() | Not started | Firebase works |
| SP-03 | Empty app_urls.dart | Critical | Delete or implement | Not started | No empty files |
| SP-04 | 5 unused dependencies | Critical | Remove unused packages | Not started | No unused deps |
| SP-05 | Sign-in/SignUp buttons no-op | High | Wire to Firebase Auth | Not started | Auth works |
| SP-06 | Social login icons no-op | High | Implement or remove | Not started | Working or removed |
| SP-07 | Missing iOS GoogleService-Info.plist | High | Add file | Not started | iOS Firebase works |
| SP-08 | No tests | High | Add test suite | Not started | Tests pass |
| SP-09 | Function type not VoidCallback | Medium | Fix type | Not started | Correct type |
| SP-10 | 9x Color.withOpacity deprecated | Medium | Migrate to withValues | Not started | No deprecation warnings |
| SP-11 | com.example bundle IDs | Medium | Change to real IDs | Not started | Unique IDs |
| SP-12 | CustomDivider returns Expanded | Medium | Fix widget structure | Not started | No crash risk |
| SP-13 | Light-mode text color wrong | Medium | Fix contrast | Not started | Readable text |
| SP-14 | Button height inconsistency | Medium | Harmonize | Not started | Consistent sizing |
| SP-15 | No router | Medium | Add go_router | Not started | Declarative routing |
| SP-16 | No INTERNET permission | Low | Add to manifest | Not started | Network works |
| SP-17 | Default README | Low | Write project docs | Not started | Setup instructions |

## Phased Recovery Plan

### Phase 1: Stabilize (1-2 days)
- Remove unused dependencies
- Fix CustomDivider Expanded issue
- Fix light-mode text color
- Update app title
- **Acceptance:** Clean analysis, no crashes

### Phase 2: Firebase Integration (2-3 days)
- Add Firebase.initializeApp()
- Add iOS GoogleService-Info.plist
- Create AuthCubit
- Wire SignIn/SignUp forms to Firebase Auth
- Add form validation
- **Acceptance:** Auth flow works end-to-end

### Phase 3: Home Screen + Features (1-2 weeks)
- Create home screen with bottom nav
- Add profile, search, library screens
- Implement just_audio player
- Create data models and repositories
- Add go_router for navigation
- **Acceptance:** Full app flow works

### Phase 4: Quality & Polish (1 week)
- Add tests
- Migrate deprecated APIs
- Add CI/CD
- Change bundle IDs
- Update README
- **Acceptance:** Production-ready quality
