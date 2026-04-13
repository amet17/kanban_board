import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'kanban_api_service.dart';

@module
abstract class KanbanApiModule {
  @lazySingleton
  KanbanApiService kanbanApiService(Dio dio) => KanbanApiService(dio);
}
