# PLANS.md

## Task

Build a Flutter test assignment for KPI Drive:

- load tasks from backend
- display them on a Kanban board similar to Trello
- each column represents a folder/group based on parent_id
- each card represents a task
- support drag and drop:
  - across columns -> update parent_id
  - inside a column -> update order
  - across columns + position change -> update both parent_id and order
- save changes through backend API
- keep interface intuitive for non-technical users
- minimize clicks
- handle backend responses correctly
- protect against invalid or repeated user actions

---

## Required stack

Use only:

- Flutter
- Dart
- BLoC
- Dio
- Retrofit
- GetIt
- Injectable
- Freezed

Do not introduce:
- Hive
- Isar
- Firebase
- Sentry
- Secure Storage
- any extra state manager
- any extra architecture layer not justified by the task

---

## Delivery strategy

Work in two phases:

### Phase 1 — plan
Before implementation:
1. inspect repository structure
2. define feature structure
3. define API contract usage
4. define state model
5. define drag-and-drop and save behavior
6. define failure handling

### Phase 2 — implementation
After plan approval:
1. implement data layer
2. implement domain layer
3. implement presentation layer
4. implement board UI
5. implement drag-and-drop flow
6. implement save flow
7. implement defensive UX
8. verify result

---

## Feature structure

Preferred structure:

lib/
  app/
    di/
    router/
    theme/
  core/
    error/
    network/
    utils/
  features/
    kanban/
      data/
        datasources/
        dto/
        mappers/
        repositories/
        services/
      domain/
        entities/
        repositories/
        usecases/
      presentation/
        bloc/
        models/
        pages/
        widgets/

---

## Main feature responsibilities

### data layer
Responsible for:
- Dio setup
- Retrofit service declarations
- DTO models
- mapping DTO -> domain entities
- repository implementation
- request building
- response parsing

### domain layer
Responsible for:
- task entity
- column entity if needed
- repository contracts
- use cases:
  - load board
  - move task
  - persist task move

### presentation layer
Responsible for:
- board state
- drag-and-drop interaction
- rendering columns and cards
- loading/error/saving feedback
- user actions

---

## Domain model

Minimum entity set:

### KanbanTask
Fields:
- id
- parentId
- name
- order

### KanbanColumn
Fields:
- id
- title
- tasks

Notes:
- parentId maps to backend parent_id
- id maps to indicator_to_mo_id
- title should be human-readable
- if backend provides only parent_id and no folder title, use a user-friendly fallback like:
  - "Folder 318200"
  and never show raw id alone as the main UI label without context

---

## Repository contract

Suggested contract:

- Future<List<KanbanTask>> getTasks(...)
- Future<void> updateTaskParent(...)
- Future<void> updateTaskOrder(...)
- Future<void> updateTaskPosition(...)

Prefer one explicit method for move persistence if it simplifies save logic:
- Future<void> saveTaskPosition({
    required int taskId,
    required int parentId,
    required int order,
  })

---

## Use cases

Suggested use cases:

### GetKanbanBoardUseCase
Loads tasks and returns mapped board data.

### MoveTaskLocallyUseCase
Calculates new local board state after drag-and-drop.

### SaveTaskPositionUseCase
Sends backend updates for parent_id and order.

### RefreshKanbanBoardUseCase
Reloads board after unrecoverable failure or desync.

---

## API details

### Load tasks
POST
https://api.dev.kpi-drive.ru/_api/indicators/get_mo_indicators

Authorization:
Bearer token in header

Content type:
multipart/form-data

Fields:
- period_start: 2026-04-01
- period_end: 2026-04-30
- period_key: month
- requested_mo_id: 42
- behaviour_key: task,kpi_task
- with_result: false
- response_fields: name,indicator_to_mo_id,parent_id,order
- auth_user_id: 40

### Save task field
POST
https://api.dev.kpi-drive.ru/_api/indicators/save_indicator_instance_field

Authorization:
Bearer token in header

Content type:
multipart/form-data

Fields example:
- period_start: 2025-09-01
- period_end: 2025-09-30
- period_key: month
- indicator_to_mo_id: 319198
- field_name: parent_id
- field_value: 318200
- auth_user_id: 40

and for order:
- field_name: order
- field_value: 2

Important:
If backend requires two separate save requests for one move, implement that explicitly.
Never assume both fields can be saved in a single logical request unless verified in code or API behavior.

---

## Board state model

Use Freezed for bloc state.

Suggested state shape:

- status: initial / loading / success / failure
- columns: list of columns
- isSaving: bool
- savingTaskIds: set/list of task ids currently being saved
- errorMessage: nullable
- lastAction: optional metadata for UI feedback

Possible events:

- started
- refreshed
- taskMovedLocally
- taskMoveCommitted
- taskMoveRollbackRequested
- retryRequested

Important:
- local move and server save should be separate concerns
- pending save state must be visible in state
- duplicate save for same task must be prevented

---

## Drag-and-drop behavior

When a card is dropped:

1. determine source column
2. determine destination column
3. determine destination index
4. create a new local board state
5. recalculate order values in affected columns
6. update UI immediately or near-immediately
7. persist moved task changes
8. if save fails:
   - rollback local change or
   - trigger corrective refresh
   - show user-friendly error

Rules:
- dropping into empty column must work
- reordering in same column must work
- moving across columns must update parent_id
- order must stay deterministic and stable
- avoid index corruption

---

## Order strategy

Use deterministic order generation.

Preferred simple strategy:
- after any move, rebuild order values in the affected column(s)
- assign sequential order values starting from 1

If backend expects 0-based order, adapt consistently.
Do not leave duplicated or skipped order values unless backend explicitly supports it.

When moving across columns:
- recalculate source column orders
- recalculate destination column orders
- persist at least the moved task correctly
- if needed, also persist affected neighboring tasks, depending on backend behavior

Important:
Before assuming only the moved task needs saving, verify whether UI consistency and backend ordering remain correct.
If backend ordering depends on all changed tasks, save all affected tasks.

---

## Persistence strategy

Preferred strategy:
- optimistic local update
- guarded save request
- rollback or full refresh on failure

For each move:
1. apply local state update
2. mark task as saving
3. send save request(s)
4. on success:
   - clear saving marker
5. on failure:
   - restore previous state or reload board
   - show error message
   - clear saving marker

Do not allow repeated move submissions for the same task while previous save is pending.

---

## Error handling

Must handle:
- empty response
- missing name
- missing parent_id
- missing order
- invalid numeric values
- network timeout
- non-200 HTTP response
- malformed backend payload
- save failure after local move
- repeated drag while save is pending
- board refresh failure

User-facing error messages must be simple and non-technical.

Examples:
- "Could not load tasks. Please try again."
- "Could not save task position. The board was restored."
- "This task is still being updated. Please wait."

---

## UX requirements

The UI should feel like a lightweight Trello-style board.

Required:
- readable columns
- readable cards
- stable spacing
- clear drag targets
- low visual noise
- loading state
- empty state
- retry action on error
- visible save progress for moved card if relevant
- no raw backend ids as main visible labels without explanation
- no confusing technical text

Avoid:
- modal-heavy flow
- extra clicks
- debug labels in production UI
- cluttered card content
- tiny drag handles if full-card drag is possible

---

## Routing and page scope

Suggested page structure:
- KanbanBoardPage
- KanbanBoardView
- KanbanColumnWidget
- KanbanTaskCard

Keep widgets small.
Do not place reorder business logic inside widget build methods.

---

## Dependency injection

Use GetIt + Injectable.

Register:
- Dio
- Retrofit service
- repository implementation
- use cases
- bloc factory

Keep DI explicit.
Do not instantiate repository or service inside UI.

---

## DTO guidance

Suggested API DTO:
- name
- indicator_to_mo_id
- parent_id
- order

Mapper rules:
- convert null/invalid values safely
- map to domain entity explicitly
- keep DTO classes in data layer only

---

## Definition of done

The implementation is done only if:

1. board loads tasks from backend
2. tasks are grouped into columns by parent_id
3. cards render correctly
4. drag-and-drop works inside a column
5. drag-and-drop works across columns
6. parent_id is persisted correctly
7. order is persisted correctly
8. invalid repeated actions are blocked
9. backend failures do not break the board
10. UI is understandable to a non-technical user
11. architecture follows Clean Architecture + BLoC
12. README explains setup and run

---

## Final review checklist

Before submission verify:

- no direct Dio calls from widgets/bloc
- no DTO usage in presentation
- no business logic in widgets
- no silent exception swallowing
- loading/error/empty/saving states exist
- drag to empty column works
- failure after move is handled
- code is readable
- no unnecessary packages
- project is easy to run