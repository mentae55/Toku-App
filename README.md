# 🎌 Toku

**Learn Japanese one tap at a time.**

Toku is a lightweight Flutter app for anyone taking their first steps into Japanese. No sign-up, no clutter — just pick a category, tap a word, and hear how it's actually pronounced.

## What it does

Toku breaks the basics down into four bite-sized sections:

| Category | What's inside |
|---|---|
| 🔢 **Numbers** | One through ten, with romanized pronunciation |
| 👨‍👩‍👧‍👦 **Family Members** | Father, mother, siblings, grandparents, and more |
| 🎨 **Colors** | Everyday colors like red, black, white, and brown |
| 💬 **Phrases** | Simple, useful phrases for real conversations |

Every entry pairs the Japanese word (romanized) with its English meaning, and a single tap plays the audio so you actually hear it instead of just guessing.

## Features

- 🔊 **Tap-to-listen audio** — every word and phrase has its own pronunciation clip
- 🎨 **Color-coded categories** — each section gets its own theme so it's easy to tell where you are
- 📱 **Simple, distraction-free UI** — built to help you learn, not scroll
- 🖼️ **Visual flashcards** — numbers, family members, and colors come with matching images

## Built with

- [Flutter](https://flutter.dev) & Dart
- [audioplayers](https://pub.dev/packages/audioplayers) for pronunciation playback

## Project structure

```
lib/
├── component/
│   └── widgets/
│       ├── Item.dart              # reusable card: image, word, play button
│       └── custom_container.dart  # home screen category tiles
├── model/
│   ├── content.dart                # model for numbers, colors, family members
│   └── phrases.dart                # model for phrases
├── screens/
│   ├── home_screen.dart
│   ├── number_screen.dart
│   ├── colors_screen.dart
│   ├── family_members_screen.dart
│   └── phrases_screen.dart
└── main.dart

assets/
├── images/     # flashcard images per category
└── sounds/     # pronunciation clips per category
```

## Getting started

Make sure you have the [Flutter SDK](https://docs.flutter.dev/get-started/install) set up, then:

```bash
git clone https://github.com/mentae55/Toku-App.git
cd Toku-App
flutter pub get
flutter run
```

## What's next

A few ideas on the roadmap:

- Quiz mode to test what you've learned
- A "favorites" list for words you want to revisit
- More categories (days of the week, greetings, food)
- Progress tracking

## Contributing

Found a bug or want to add a feature? PRs and issues are welcome — this is very much a learning project, so feedback helps.

---

Made with ☕ and a lot of Flutter widgets.
