# TurfRun 🏃‍♂️⚡
**Fitness Territory Game — Flutter Frontend**

A dark, neon-futuristic Flutter app where runners capture real-world zones.
This is the frontend-only starter: no backend, no GPS, all mock data.

---

## 🚀 Quick Start

```bash
# 1. Create a new Flutter project (skip if already done)
flutter create turfrun
cd turfrun

# 2. Replace lib/ and pubspec.yaml with the files in this project

# 3. Install dependencies
flutter pub get

# 4. Run on your device or emulator
flutter run
```

**Minimum Flutter version:** 3.0.0

---

## 📁 Folder Structure

```
lib/
├── main.dart                        # App entry point + route registration
│
├── theme/
│   └── app_theme.dart               # All colors, fonts, and ThemeData
│
├── routes/
│   └── app_routes.dart              # Named route constants ('/login', etc.)
│
├── models/                          # Data blueprints (no logic)
│   ├── user_model.dart              # Player profile structure
│   ├── activity_model.dart          # A completed run
│   └── territory_model.dart         # A capturable zone
│
├── data/
│   └── mock_data.dart               # All fake data — replace with API calls later
│
├── screens/                         # One file per screen
│   ├── splash_screen.dart           # Animated intro → auto-navigates to login
│   ├── login_screen.dart            # Email + password login
│   ├── signup_screen.dart           # New account creation
│   ├── main_shell.dart              # Bottom nav shell (tabs: Home, Activity, Profile)
│   ├── dashboard_screen.dart        # Home: stats, map, run button, recent runs
│   ├── activity_history_screen.dart # Weekly chart + all past runs
│   ├── activity_summary_screen.dart # Detail view of a single run
│   └── profile_screen.dart          # User profile, achievements, leaderboard
│
└── widgets/                         # Reusable UI components
    ├── neon_button.dart             # Glowing CTA button (multiple color variants)
    ├── stat_card.dart               # Single stat display card
    ├── xp_progress_bar.dart         # Animated XP level bar
    └── activity_tile.dart           # Row item for a run in a list
```

---

## 🎨 Design System

| Token | Value | Usage |
|-------|-------|-------|
| `background` | `#050A14` | Screen background |
| `surface` | `#0D1526` | Cards and panels |
| `neonCyan` | `#00F5FF` | Primary accent, CTAs |
| `neonGreen` | `#39FF14` | XP, territories, success |
| `neonOrange` | `#FF6B00` | Streaks, warnings |
| `neonPurple` | `#BF00FF` | Rank, special items |
| Font (display) | Orbitron | Labels, headings, numbers |
| Font (body) | Rajdhani | Descriptions, body text |

---

## 🗺️ Navigation Flow

```
SplashScreen (2s)
    ↓ auto
LoginScreen ──────────→ SignupScreen
    ↓ login               ↓ signup
    └─────────────────────┘
              ↓
         MainShell (bottom nav)
         ├── Tab 0: DashboardScreen
         │     └── tap run → ActivitySummaryScreen
         ├── Tab 1: ActivityHistoryScreen
         │     └── tap run → ActivitySummaryScreen
         └── Tab 2: ProfileScreen
```
