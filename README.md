# KPI Drive Kanban Board (Flutter Test Assignment)

A Trello-like Kanban board built with the required stack only:
- Flutter
- Dart
- BLoC (`flutter_bloc`)
- Dio
- Retrofit
- GetIt
- Injectable
- Freezed

## What it does

- Loads tasks from KPI Drive backend
- Groups tasks by `parent_id` (one column per `parent_id`)
- Shows cards with readable task names
- Supports drag and drop:
  - within a column (reorder)
  - across columns (updates `parent_id` + `order`)
  - into empty columns
- Persists changes through backend API
- Handles backend responses explicitly (`MESSAGES.error`, `STATUS`, HTTP code)
- Prevents invalid repeated actions while save is in progress
- Rolls back local optimistic move and refreshes board if save fails

## Project structure

```text
lib/
  app/
    app.dart
    di/
  core/
    error/
    network/
  features/
    kanban/
      data/
      domain/
      presentation/
```

## Setup

1. Install Flutter (project uses SDK `^3.10.4`).
2. Install dependencies:

```bash
flutter pub get
```

3. Generate code:

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Run

```bash
flutter run
```

## Verify

Static analysis:

```bash
flutter analyze
```

Tests:

```bash
flutter test
```

## API configuration used

Configured in:
- `lib/features/kanban/data/constants/kanban_request_defaults.dart`

Includes:
- base URL
- bearer token
- period and user parameters for load/save APIs

## Notes

- Save logic uses separate field saves (`parent_id` and `order`) as required.
- Widgets are passive: business logic stays in use cases and BLoC.
- DTOs are kept in the data layer only.
