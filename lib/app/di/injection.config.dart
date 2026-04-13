// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../core/network/dio_module.dart' as _i673;
import '../../features/kanban/data/datasources/kanban_remote_data_source.dart'
    as _i142;
import '../../features/kanban/data/mappers/kanban_task_mapper.dart' as _i77;
import '../../features/kanban/data/repositories/kanban_repository_impl.dart'
    as _i1044;
import '../../features/kanban/data/services/kanban_api_module.dart' as _i508;
import '../../features/kanban/data/services/kanban_api_service.dart' as _i994;
import '../../features/kanban/domain/repositories/kanban_repository.dart'
    as _i492;
import '../../features/kanban/domain/usecases/apply_task_move_use_case.dart'
    as _i418;
import '../../features/kanban/domain/usecases/load_kanban_board_use_case.dart'
    as _i106;
import '../../features/kanban/domain/usecases/persist_task_move_use_case.dart'
    as _i753;
import '../../features/kanban/presentation/bloc/kanban_board_bloc.dart'
    as _i1021;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioModule = _$DioModule();
    final kanbanApiModule = _$KanbanApiModule();
    gh.factory<_i77.KanbanTaskMapper>(() => _i77.KanbanTaskMapper());
    gh.factory<_i418.ApplyTaskMoveUseCase>(
      () => const _i418.ApplyTaskMoveUseCase(),
    );
    gh.lazySingleton<_i361.Dio>(() => dioModule.dio());
    gh.lazySingleton<_i994.KanbanApiService>(
      () => kanbanApiModule.kanbanApiService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i142.KanbanRemoteDataSource>(
      () => _i142.KanbanRemoteDataSourceImpl(gh<_i994.KanbanApiService>()),
    );
    gh.lazySingleton<_i492.KanbanRepository>(
      () => _i1044.KanbanRepositoryImpl(
        gh<_i142.KanbanRemoteDataSource>(),
        gh<_i77.KanbanTaskMapper>(),
      ),
    );
    gh.factory<_i106.LoadKanbanBoardUseCase>(
      () => _i106.LoadKanbanBoardUseCase(gh<_i492.KanbanRepository>()),
    );
    gh.factory<_i753.PersistTaskMoveUseCase>(
      () => _i753.PersistTaskMoveUseCase(gh<_i492.KanbanRepository>()),
    );
    gh.factory<_i1021.KanbanBoardBloc>(
      () => _i1021.KanbanBoardBloc(
        gh<_i106.LoadKanbanBoardUseCase>(),
        gh<_i418.ApplyTaskMoveUseCase>(),
        gh<_i753.PersistTaskMoveUseCase>(),
      ),
    );
    return this;
  }
}

class _$DioModule extends _i673.DioModule {}

class _$KanbanApiModule extends _i508.KanbanApiModule {}
