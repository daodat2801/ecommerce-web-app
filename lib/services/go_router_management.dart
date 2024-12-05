import 'package:ecommerce_web_app/commons/constants/route_path.dart';
import 'package:ecommerce_web_app/pages/about/about_screen.dart';
import 'package:ecommerce_web_app/pages/contact/contact_screen.dart';
import 'package:ecommerce_web_app/pages/header/header_view_model.dart';
import 'package:ecommerce_web_app/pages/home/home_screen.dart';
import 'package:ecommerce_web_app/pages/login/login_screen.dart';
import 'package:ecommerce_web_app/pages/pricing/pricing_screen.dart';
import 'package:ecommerce_web_app/pages/product_detail/product_detail_screen.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen/shop_screen.dart';
import 'package:ecommerce_web_app/pages/team/team_screen.dart';
import 'package:ecommerce_web_app/services/authentication_management.dart';
import 'package:ecommerce_web_app/services/view_model_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';

class GoRouterManagement {
  GoRouterManagement._();

  static GoRouter? _previousRouter;
  static final routerProvider = Provider<GoRouter>((ref) {
    final nonAuthenRedirectRoutes = [RoutePath.product, RoutePath.shop];
    final authenState = ref.watch(authenManagerProvider);
    return _previousRouter = GoRouter(
      initialLocation: _previousRouter?.state?.fullPath,
      redirect: (context, state) {
        final isExpired = authenState.user == null;
        final currentRoute = state.fullPath;
        if (isExpired && nonAuthenRedirectRoutes.contains(currentRoute)) {
          final headerViewModel =
              ref.read(ViewModelProvider.headerVMProvider.notifier);
          _resetHeader(headerViewModel);
          return RoutePath.login;
        }

        return null;
      },
      routes: [
        GoRoute(
            path: RoutePath.home,
            builder: (context, state) => const HomeScreen()),
        GoRoute(
            path: RoutePath.login, builder: (context, state) => LoginScreen()),
        GoRoute(
            path: RoutePath.about,
            builder: (context, state) => const AboutScreen()),
        GoRoute(
            path: RoutePath.contact,
            builder: (context, state) => const ContactScreen()),
        GoRoute(
            path: RoutePath.pricing,
            builder: (context, state) => const PricingScreen()),
        GoRoute(
            path: RoutePath.product,
            builder: (context, state) => const ProductDetailScreen()),
        GoRoute(
            path: RoutePath.shop,
            builder: (context, state) => const ShopScreen()),
        GoRoute(
            path: RoutePath.team,
            builder: (context, state) => const TeamScreen())
      ],
    );
  });
}

void _resetHeader(HeaderViewModel headerViewModel) {
  Future.microtask(() {
    headerViewModel.resetState();
  });
}
