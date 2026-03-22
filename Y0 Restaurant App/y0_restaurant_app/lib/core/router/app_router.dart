import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Route constants for the Y0 Restaurant App
class AppRoutes {
  const AppRoutes._();

  // Root route
  static const String splash = '/';
  
  // Authentication routes
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  
  // Main app routes
  static const String tables = '/tables';
  static const String menu = '/menu';
  static const String orders = '/orders';
  static const String kitchen = '/kitchen';
  static const String invoices = '/invoices';
  
  // Settings and profile
  static const String settings = '/settings';
  static const String profile = '/profile';
  
  // Detail routes
  static const String tableDetail = '/tables/:tableId';
  static const String menuItemDetail = '/menu/:itemId';
  static const String orderDetail = '/orders/:orderId';
  static const String invoiceDetail = '/invoices/:invoiceId';
  
  // Management routes
  static const String tableManagement = '/tables/management';
  static const String menuManagement = '/menu/management';
  static const String staffManagement = '/staff/management';
  static const String reports = '/reports';
}

/// Splash screen widget (stub)
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Y0 Logo placeholder
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.shadow.withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Y0',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Restaurant',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Management System',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 48),
            SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// App router configuration
class AppRouter {
  const AppRouter._();

  static final GoRouter _router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      // Splash screen
      GoRoute(
        path: AppRoutes.splash,
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      
      // Authentication routes (stubs)
      GoRoute(
        path: AppRoutes.login,
        name: 'login',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Login')),
          body: const Center(
            child: Text('Login Screen - Coming Soon'),
          ),
        ),
      ),
      
      GoRoute(
        path: AppRoutes.register,
        name: 'register',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Register')),
          body: const Center(
            child: Text('Register Screen - Coming Soon'),
          ),
        ),
      ),
      
      GoRoute(
        path: AppRoutes.forgotPassword,
        name: 'forgot-password',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Forgot Password')),
          body: const Center(
            child: Text('Forgot Password Screen - Coming Soon'),
          ),
        ),
      ),
      
      // Main app routes (stubs)
      GoRoute(
        path: AppRoutes.tables,
        name: 'tables',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Tables')),
          body: const Center(
            child: Text('Tables Screen - Coming Soon'),
          ),
        ),
      ),
      
      GoRoute(
        path: AppRoutes.menu,
        name: 'menu',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Menu')),
          body: const Center(
            child: Text('Menu Screen - Coming Soon'),
          ),
        ),
      ),
      
      GoRoute(
        path: AppRoutes.orders,
        name: 'orders',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Orders')),
          body: const Center(
            child: Text('Orders Screen - Coming Soon'),
          ),
        ),
      ),
      
      GoRoute(
        path: AppRoutes.kitchen,
        name: 'kitchen',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Kitchen')),
          body: const Center(
            child: Text('Kitchen Screen - Coming Soon'),
          ),
        ),
      ),
      
      GoRoute(
        path: AppRoutes.invoices,
        name: 'invoices',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Invoices')),
          body: const Center(
            child: Text('Invoices Screen - Coming Soon'),
          ),
        ),
      ),
      
      GoRoute(
        path: AppRoutes.settings,
        name: 'settings',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Settings')),
          body: const Center(
            child: Text('Settings Screen - Coming Soon'),
          ),
        ),
      ),
      
      GoRoute(
        path: AppRoutes.profile,
        name: 'profile',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Profile')),
          body: const Center(
            child: Text('Profile Screen - Coming Soon'),
          ),
        ),
      ),
      
      // Detail routes (stubs)
      GoRoute(
        path: AppRoutes.tableDetail,
        name: 'table-detail',
        builder: (context, state) {
          final tableId = state.pathParameters['tableId'];
          return Scaffold(
            appBar: AppBar(title: Text('Table $tableId')),
            body: Center(
              child: Text('Table Detail Screen - ID: $tableId\nComing Soon'),
            ),
          );
        },
      ),
      
      GoRoute(
        path: AppRoutes.menuItemDetail,
        name: 'menu-item-detail',
        builder: (context, state) {
          final itemId = state.pathParameters['itemId'];
          return Scaffold(
            appBar: AppBar(title: Text('Menu Item $itemId')),
            body: Center(
              child: Text('Menu Item Detail Screen - ID: $itemId\nComing Soon'),
            ),
          );
        },
      ),
      
      GoRoute(
        path: AppRoutes.orderDetail,
        name: 'order-detail',
        builder: (context, state) {
          final orderId = state.pathParameters['orderId'];
          return Scaffold(
            appBar: AppBar(title: Text('Order $orderId')),
            body: Center(
              child: Text('Order Detail Screen - ID: $orderId\nComing Soon'),
            ),
          );
        },
      ),
      
      GoRoute(
        path: AppRoutes.invoiceDetail,
        name: 'invoice-detail',
        builder: (context, state) {
          final invoiceId = state.pathParameters['invoiceId'];
          return Scaffold(
            appBar: AppBar(title: Text('Invoice $invoiceId')),
            body: Center(
              child: Text('Invoice Detail Screen - ID: $invoiceId\nComing Soon'),
            ),
          );
        },
      ),
      
      // Management routes (stubs)
      GoRoute(
        path: AppRoutes.tableManagement,
        name: 'table-management',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Table Management')),
          body: const Center(
            child: Text('Table Management Screen - Coming Soon'),
          ),
        ),
      ),
      
      GoRoute(
        path: AppRoutes.menuManagement,
        name: 'menu-management',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Menu Management')),
          body: const Center(
            child: Text('Menu Management Screen - Coming Soon'),
          ),
        ),
      ),
      
      GoRoute(
        path: AppRoutes.staffManagement,
        name: 'staff-management',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Staff Management')),
          body: const Center(
            child: Text('Staff Management Screen - Coming Soon'),
          ),
        ),
      ),
      
      GoRoute(
        path: AppRoutes.reports,
        name: 'reports',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Reports')),
          body: const Center(
            child: Text('Reports Screen - Coming Soon'),
          ),
        ),
      ),
    ],
    
    // Error handling
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.red,
            ),
            const SizedBox(height: 16),
            Text(
              'Page not found',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              'The requested page could not be found.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.go(AppRoutes.splash),
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    ),
  );

  /// Get the router instance
  static GoRouter get router => _router;
}
