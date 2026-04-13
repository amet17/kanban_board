# AGENTS.md

## Project goal

Build a Flutter test assignment:
- load tasks from KPI Drive backend
- show them on a Trello-like Kanban board
- each column is a folder/group based on parent_id
- support drag and drop across columns and inside a column
- persist changes to backend
- keep UI intuitive for non-technical users
- keep visual style clean and modern, close to KPI Drive / Trello simplicity

## Technical stack

Required stack:
- Flutter
- Dart
- flutter_bloc
- Clean Architecture
- Dio
- Retrofit
- GetIt
- Injectable
- Freezed
- Hive and/or Isar where useful
- Flutter Secure Storage
- REST API
- Firebase Analytics
- Sentry

Use only what is justified by the assignment size.
Do not add unnecessary dependencies.

## Working mode

For non-trivial tasks:
1. inspect current codebase
2. propose a short plan
3. define architecture and folder structure
4. implement
5. verify result

Do not jump into code before clarifying:
- data flow
- state flow
- API contracts
- failure handling
- drag-and-drop save strategy

## Architecture rules

Use Clean Architecture with feature-first organization.

Preferred structure:

lib/
  app/
  core/
  features/
    kanban/
      data/
      domain/
      presentation/

### Layer boundaries

- presentation depends on domain only
- domain must not depend on Flutter UI or Dio or Retrofit
- data implements domain contracts
- DTO models stay in data layer
- domain entities stay in domain layer
- do not leak DTOs into presentation
- repositories are declared in domain and implemented in data
- use cases coordinate business actions
- blocs must depend on use cases, not on datasources directly

## State management

Use BLoC.

Rules:
- one feature-oriented bloc or a small set of focused blocs/cubits
- events represent user intent
- states are immutable
- side effects go through use cases
- widgets stay passive
- async failures must be converted into explicit UI states
- prevent duplicate submissions while save request is pending

## API rules

Use Dio + Retrofit.

Rules:
- all API requests go through Retrofit service interfaces
- request/response mapping must be isolated from UI
- handle backend errors explicitly
- do not ignore server responses
- never assume request success without checking response

## Dependency injection

Use GetIt + Injectable.

Rules:
- dependencies are registered centrally
- do not instantiate repositories/services inside widgets/blocs
- prefer constructor injection
- keep module registration explicit and minimal

## Local persistence

Use local storage only when it improves robustness:
- Secure Storage for token or sensitive values
- Hive or Isar only if needed for temporary caching, optimistic rollback, or offline-friendly state

Do not build a full offline-first system unless the assignment requires it.

## Analytics and monitoring

- Firebase Analytics only for meaningful user events
- Sentry for error capture and unexpected failures
- avoid noisy instrumentation

Track only useful events, e.g.:
- board_opened
- task_moved
- task_move_saved
- task_move_failed

## UI/UX rules

The board is for ordinary users, not programmers.

Required:
- never expose raw technical ids as primary labels in UI
- show human-readable names
- columns must have readable titles
- cards must show task name clearly
- empty columns must still accept drops
- UI must minimize clicks
- drag and drop should feel predictable
- loading, empty, error states must be present
- saving state must be visible when relevant
- block invalid repeated actions
- preserve stable UI if backend save fails
- show user-friendly error messages
- avoid clutter

## Drag and drop behavior

When task is moved:
- moving across columns changes parent_id
- moving inside or across columns updates order
- order must be recalculated deterministically
- backend save must be triggered after local reorder logic is calculated
- failed save must not leave UI in a corrupted state
- rollback or corrective refresh must be explicit

## Defensive behavior

Implement protection against user mistakes:
- prevent multiple simultaneous save operations for the same card
- prevent broken order calculations
- handle empty responses
- handle null and missing fields
- handle unexpected backend payloads
- handle slow network
- handle save failure with retry option or rollback
- handle drag to empty column
- do not crash on malformed items

## Coding conventions

- write code comments in English
- public method and class names in English
- prefer small focused classes
- avoid giant widgets and giant blocs
- avoid unrelated refactors
- keep diffs small
- match existing project conventions where possible

## Testing and verification

At minimum verify:
- API loading flow
- task grouping into columns
- reorder calculation
- parent_id update logic
- order update logic
- failure handling for save action
- mapper correctness
- basic bloc behavior

Prefer:
- unit tests for use cases
- bloc tests for main board interactions
- mapper tests when DTO/entity mapping is added

## Definition of done

The task is complete only when:
1. tasks are loaded from backend
2. columns are rendered from parent_id grouping
3. cards can be moved within a column and across columns
4. parent_id and order are saved correctly
5. backend failures are handled gracefully
6. UI remains usable for non-technical users
7. code follows Clean Architecture
8. README explains how to run the project
9. final review checks the solution against assignment criteria

## Do not

- do not place business logic inside widgets
- do not call Dio directly from UI
- do not expose raw backend ids as user-facing labels unless there is no alternative
- do not ignore backend errors
- do not silently swallow exceptions
- do not overengineer the project
- do not add packages without a clear reason
- do not rewrite unrelated parts of the codebase