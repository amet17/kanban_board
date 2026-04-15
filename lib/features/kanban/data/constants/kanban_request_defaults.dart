abstract final class KanbanRequestDefaults {
  static const String baseUrl = 'https://api.dev.kpi-drive.ru';
  static const String token = '5c3964b8e3ee4755f2cc0febb851e2f8';
  static const String authHeader = 'Bearer $token';

  static const String periodStart = '2026-04-01';
  static const String periodEnd = '2026-04-30';
  static const String periodKey = 'month';
  static const int requestedMoId = 2;
  static const String behaviourKey = 'task,kpi_task';
  static const String withResult = 'false';
  static const String responseFields =
      'name,indicator_to_mo_id,parent_id,order';
  static const int authUserId = 40;
}
