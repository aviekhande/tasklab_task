import 'package:auto_route/auto_route.dart';
import 'package:demmy_app_tasklabs/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: DashbordRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page, initial: false),
    AutoRoute(page: UserDataRoute.page, initial: false),
  ];
}
