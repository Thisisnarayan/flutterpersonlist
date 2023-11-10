# flutterpersonlist

- Run `flutter pub get` commad to resolve all the dependencies.
- Run `flutter pub run build_runner build --delete-conflicting-outputs` to generate required code.
- Run `flutter pub run easy_localization:generate --source-dir assets/translations -f keys -o locale_keys.g.dart` to generate the localisation keys.


### This Flutter project utilizes various packages and technologies to build a cross-platform application for both mobile (Android and iOS) and web platforms. The application fetches and displays data from the FakerAPI, showcasing a list of persons with details like name, email, and image. Key features and technologies used include:

## Dependencies:

- easy_localization: Internationalization support for localization of the application.
- flutter_mobx: State management library to handle reactive programming.
- lottie: Integration for displaying Lottie animations.
- get_it & injectable: Dependency injection for managing and accessing dependencies.
- build_runner: Code generation for improved build-time performance.
- mobx & mobx_codegen: State management solution for reactive programming.
- injectable_generator: Code generation for dependency injection.
- flutter_gen_runner: Code generation for resource management.
- dio: HTTP client for making network requests.
- freezed_annotation & freezed: Code generation for immutable classes and unions.
- json_annotation: Serialization/deserialization of JSON data.
- provider: State management for sharing data between widgets.


## Application Features:

- Cross-Platform: Supports Android, iOS, and Web platforms.
- Data Fetching: Retrieves data from the FakerAPI in sets of 10 persons with initial loading and infinite scrolling.
- User Interface: Utilizes Flutter's Material UI to display a list of persons with name, email, and image.
- Pagination Handling: Implements custom pagination handling as the FakerAPI does not support it.
- Dark Mode/Light Mode: Incorporates a dynamic theme that supports both dark and light modes.
- page refresh handle for web and app (Android, iOS)

Check out the live web build [here](https://stirring-tulumba-4c43f3.netlify.app/).

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

