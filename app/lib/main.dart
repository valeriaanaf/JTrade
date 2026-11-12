import 'package:flutter/cupertino.dart';
import 'screens/main_shell.dart';
import 'theme/app_theme.dart';

void main() => runApp(const JTradeApp());

class JTradeApp extends StatelessWidget {
  const JTradeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'JTrade',
      theme: AppTheme.light,
      builder: (context, child) {
        final dark =
            MediaQuery.platformBrightnessOf(context) == Brightness.dark;
        return CupertinoTheme(
          data: dark ? AppTheme.dark : AppTheme.light,
          child: child!,
        );
      },
      home: const MainShell(),
    );
  }
}
