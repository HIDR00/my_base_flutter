import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
@LazySingleton()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    /// routes go here
    AutoRoute(page: Route1.page),
    AutoRoute(page: HomeRoute.page,initial: true)
  ];
}