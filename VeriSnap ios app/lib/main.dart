import 'package:flutter/material.dart';

void main() {
  runApp(const VeriSnapApp());
}

class VeriSnapApp extends StatelessWidget {
  const VeriSnapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VeriSnap',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF22543D)),
        useMaterial3: true,
      ),
      home: const RootTabsPage(),
    );
  }
}

class RootTabsPage extends StatefulWidget {
  const RootTabsPage({super.key});

  @override
  State<RootTabsPage> createState() => _RootTabsPageState();
}

class _RootTabsPageState extends State<RootTabsPage> {
  int index = 0;

  static const pages = <Widget>[
    HomePage(),
    ScanPage(),
    EducationPage(),
    HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (value) => setState(() => index = value),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.qr_code_scanner_outlined), selectedIcon: Icon(Icons.qr_code_scanner), label: 'Scan'),
          NavigationDestination(icon: Icon(Icons.menu_book_outlined), selectedIcon: Icon(Icons.menu_book), label: 'Education'),
          NavigationDestination(icon: Icon(Icons.history_outlined), selectedIcon: Icon(Icons.history), label: 'History'),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('VeriSnap', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(height: 4),
          const Text('Check a claim. Check an image. Know what’s real.'),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: () {},
            child: const Text('Check News'),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.text_fields),
                  label: const Text('Text Claim'),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.image_search),
                  label: const Text('Image / Video'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Card(
            child: ListTile(
              leading: Icon(Icons.auto_awesome),
              title: Text('Daily Myth vs Fact'),
              subtitle: Text('Hydration myths: what is true vs misleading'),
            ),
          ),
        ],
      ),
    );
  }
}

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text('Scan: Text Claim + Image/Video tabs'),
      ),
    );
  }
}

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text('Education Hub'),
      ),
    );
  }
}

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text('Local History'),
      ),
    );
  }
}
