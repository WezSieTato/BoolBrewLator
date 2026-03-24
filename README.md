# BoolBrewLator

A comprehensive Flutter application designed for enthusiasts and professionals in the brewing, cider-making, wine-making, and distillation industries. This app aids users by providing essential calculators for a smooth and precise production process.

**[Live Demo](https://WezSieTato.github.io/BoolBrewLator/)**

## Features

### :candy: Sugar Syrup Weight Calculator

 Calculate the weight of syrup needed based on its sugar content

 ### :wrench: Work in progress :wrench:

Stay tuned for more features in the future!

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK (>=3.0.0)

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd boolbrewlator
```

2. Install dependencies:
```bash
flutter pub get
```

3. Generate translation files (required before running):
```bash
dart run slang
```

### Running the App

After installing dependencies and generating translations, you can run the app:

```bash
# For development
flutter run

# For web
flutter run -d chrome

# For Android
flutter run -d android

# For iOS
flutter run -d ios
```

### Development Workflow

When working with translations:

1. **Add new translations** - Edit `lib/i18n/strings.i18n.json`
2. **Generate translation files** - Run `dart run slang`
3. **Use translations in code**

**Important**: Always run `dart run slang` after modifying translation files to regenerate the necessary Dart code.

## Contributing

Pull requests are welcome. For major changes or feature suggestions, please open an issue first to discuss what you'd like to change. You can also reach out to discuss potential features or get clarifications.

## License

This project is licensed under the MIT license. See the [LICENSE](LICENSE) file for more information.
