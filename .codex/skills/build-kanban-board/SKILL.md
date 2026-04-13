---
name: build-kanban-board
description: Use when implementing a Trello-like Kanban board in Flutter with backend loading, drag-and-drop, persistence, and defensive UX.
---

## Goal

Build the KPI Drive test assignment as a clean, production-like Flutter feature.

## Required workflow

1. Read AGENTS.md
2. Inspect the repository and current conventions
3. Use flutter-architect thinking first
4. Define:
   - entities
   - repository contracts
   - use cases
   - BLoC state model
   - drag-and-drop ordering strategy
   - save/rollback behavior
5. Implement the data layer:
   - Dio client
   - Retrofit service
   - DTOs
   - mappers
   - repository implementation
6. Implement the domain layer:
   - entities
   - repository contracts
   - use cases
7. Implement the presentation layer:
   - bloc/cubit
   - events/states
   - board page
   - column widgets
   - card widgets
   - loading/error/empty states
8. Add persistence and protection:
   - prevent duplicate saves
   - rollback or corrective refresh after failed move
9. Add useful instrumentation:
   - Firebase Analytics events
   - Sentry error capture
10. Add tests for main logic
11. Review result with reviewer agents

## Constraints

- keep UI intuitive for non-technical users
- minimize clicks
- never put business logic in widgets
- never let failed save silently corrupt local state
- keep code small and maintainable
- follow Clean Architecture strictly

## Output expectations

Before coding:
- summarize implementation plan
- list files to create

After coding:
- summarize key decisions
- list risks and trade-offs
- verify against assignment acceptance criteria