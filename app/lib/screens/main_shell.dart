import 'package:flutter/cupertino.dart';

class PlaceholderScreen extends StatelessWidget {
  final String title;
  const PlaceholderScreen(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text(title)),
      child: Center(child: Text(title)),
    );
  }
}

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _index = 0;

  void _onTap(int i) {
    if (i == 2) {
      Navigator.of(context).push(
        CupertinoPageRoute(
          fullscreenDialog: true,
          builder: (_) => const PlaceholderScreen('Tambah Trade'),
        ),
      );
    } else {
      setState(() => _index = i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _index,
              children: const [
                PlaceholderScreen('Dashboard'),
                PlaceholderScreen('Jurnal'),
                SizedBox.shrink(),
                PlaceholderScreen('Kalender'),
                PlaceholderScreen('Lainnya'),
              ],
            ),
          ),
          CupertinoTabBar(
            currentIndex: _index,
            onTap: _onTap,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.square_grid_2x2),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.book),
                label: 'Jurnal',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.add_circled_solid, size: 38),
                label: 'Tambah',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.calendar),
                label: 'Kalender',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.ellipsis),
                label: 'Lainnya',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
