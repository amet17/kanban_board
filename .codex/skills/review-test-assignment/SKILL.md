---
name: review-test-assignment
description: Use when reviewing the finished KPI Drive test assignment for architecture, backend correctness, usability, and submission readiness.
---

## Goal

Review the implementation as a hiring test submission.

## Review checklist

### Architecture
- Clean Architecture is respected
- BLoC is used correctly
- layer boundaries are preserved
- DI is clean
- DTO/entity separation exists

### Backend
- requests match expected field names
- Dio and Retrofit integration is correct
- server responses are handled explicitly
- failed save does not corrupt board state

### UX
- board is intuitive
- minimum clicks
- readable labels
- empty/loading/error states are present
- repeated actions are prevented
- drag-and-drop is predictable

### Stability
- null and malformed payloads are handled
- save failures are visible
- no obvious crash paths
- Sentry integration is sensible

### Submission
- README exists
- launch steps are clear
- assignment criteria are covered
- GitHub readiness is acceptable

## Output format

Return:
1. what is done well
2. what must be fixed before submission
3. optional polish improvements if time remains