import 'package:flutter/material.dart';


class AppAlerts {
  const AppAlerts._();

  static displaySnackbar(BuildContext context, String message) {
    final theme = Theme.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: theme.textTheme.bodyMedium,
        ),
        backgroundColor: theme.colorScheme.onSecondary,
      ),
    );
  }
}
