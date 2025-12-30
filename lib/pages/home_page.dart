import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final heigh=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 16/ 16,
          child: Image.network(
        "https://m.media-amazon.com/images/I/71Ysf6HGZ1L._SX425_.jpg",fit: BoxFit.cover,
          ),
        ),
      ),
    );

  }
}
class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 10,
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10); // space between items
        // or Divider()
      },
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: const Icon(Icons.phone_android),
            title: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Mobile Item ${index + 1}"),
            ),
          ),
        );
      },
    );

  }
}
class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // more columns for tablets
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 12,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.blue.shade100,
          child: Center(
            child: Text(
              "Tablet Item ${index + 1}",
              style: const TextStyle(fontSize: 18),
            ),
          ),
        );
      },
    );
  }
}
