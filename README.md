# Note App

## Overview
The **Note App** is a Flutter-based application that allows users to create, manage, and store notes efficiently. It utilizes **Cubit** for state management and **Hive** for local data storage, providing a smooth user experience.

## Features
- **Create Notes**: Users can create new notes with titles and content.
- **View Notes**: Displays a list of all saved notes.
- **Delete Notes**: Users can delete notes they no longer need.
- **Persistent Storage**: Uses Hive for storing notes locally on the device.
- **State Management**: Employs Cubit to manage the application's state effectively.

## Technologies Used
- **State Management**: Cubit (from the `flutter_bloc` package)
- **Local Storage**: Hive for efficient data storage.
- **Theming**: Flutter's **ThemeData** for a consistent UI.
- **Dependency Management**: Pub (Flutter's package manager)

## How It Works
1. **User Input**: Users can enter a title and content for their notes.
2. **Data Storage**: The app uses Hive to store notes locally on the device.
3. **State Management**: The **Cubit** manages the state of the app, including loading, success, and error states.
4. **Display Data**: The saved notes are displayed in a list format for easy interaction.
5. **Delete Functionality**: Users can delete notes, which updates the state and the displayed list.

## Installation
1. Ensure you have Flutter installed. If not, follow the [Flutter installation guide].
2. Create a new Flutter project:
   ```bash
   flutter create note_app
   cd note_app
3. Add dependencies to your pubspec.yaml:
   ```yaml
   dependencies:
    flutter:
     sdk: flutter
    flutter_bloc: ^8.0.0
    hive: ^2.0.0
    hive_flutter: ^1.0.0
4.Run the following command to get the packages:
   ```bash
   flutter pub get
