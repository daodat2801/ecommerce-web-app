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
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
          final headerViewModel = ref.read(ViewModelProvider.headerVMProvider.notifier);
          _resetHeader(headerViewModel);
          return RoutePath.login;
        }

        return null;
      },
      routes: [
        GoRoute(
          path: RoutePath.home,
          pageBuilder: (context, state) => _buildPageWithTransition(
            const HomeScreen(),
            state,
          ),
        ),
        GoRoute(
          path: RoutePath.login,
          pageBuilder: (context, state) => _buildPageWithFadeTransition(
            LoginScreen(),
            state,
          ),
        ),
        GoRoute(
          path: RoutePath.about,
          pageBuilder: (context, state) => _buildPageWithTransition(
            const AboutScreen(),
            state,
          ),
        ),
        GoRoute(
          path: RoutePath.contact,
          pageBuilder: (context, state) => _buildPageWithVerticalSlideTransition(
            const ContactScreen(),
            state,
          ),
        ),
        GoRoute(
          path: RoutePath.pricing,
          pageBuilder: (context, state) => _buildPageWithScaleTransition(
            const PricingScreen(),
            state,
          ),
        ),
        GoRoute(
          path: RoutePath.product,
          pageBuilder: (context, state) => _buildPageWithTransition(
            const ProductDetailScreen(),
            state,
          ),
        ),
        GoRoute(
          path: RoutePath.shop,
          pageBuilder: (context, state) => _buildPageWithSlideTransition(
            const ShopScreen(),
            state,
          ),
        ),
        GoRoute(
          path: RoutePath.team,
          pageBuilder: (context, state) => _buildPageWithTransition(
            const TeamScreen(),
            state,
          ),
        ),
      ],
    );
  });
}

CustomTransitionPage _buildPageWithFadeTransition(Widget child, GoRouterState state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    transitionDuration: const Duration(seconds: 1),
  );
}

CustomTransitionPage _buildPageWithVerticalSlideTransition(
    Widget child, GoRouterState state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final verticalSlideAnimation = Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(animation);

      return SlideTransition(
        position: verticalSlideAnimation,
        child: child,
      );
    },
    transitionDuration: const Duration(seconds: 1),
  );
}

CustomTransitionPage _buildPageWithScaleTransition(Widget child, GoRouterState state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
        CurvedAnimation(parent: animation, curve: Curves.easeInOut),
      );

      return ScaleTransition(
        scale: scaleAnimation,
        child: child,
      );
    },
    transitionDuration: const Duration(seconds: 1),
  );
}

CustomTransitionPage _buildPageWithSlideTransition(Widget child, GoRouterState state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final slideAnimation = Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(animation);

      return SlideTransition(
        position: slideAnimation,
        child: child,
      );
    },
    transitionDuration: const Duration(seconds: 1),
  );
}

CustomTransitionPage _buildPageWithTransition(Widget child, GoRouterState state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final rotationAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOut,
        ),
      );

      return RotationTransition(
        turns: rotationAnimation,
        child: FadeTransition(
          opacity: animation,
          child: child,
        ),
      );
    },
    transitionDuration: const Duration(seconds: 1),
  );
}

void _resetHeader(HeaderViewModel headerViewModel) {
  Future.microtask(() {
    headerViewModel.resetState();
  });
}
