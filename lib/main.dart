import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.green,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat)),
              Tab(icon: Icon(Icons.circle_outlined)),
              Tab(icon: Icon(Icons.call)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: const [
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Aji'),
                    subtitle: Text('Hai, apa kabar?'),
                    trailing: Text('2', style: TextStyle(color: Colors.green)),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Fathir'),
                    subtitle: Text('Jangan lupa tugas besok'),
                    trailing: Text('1', style: TextStyle(color: Colors.green)),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Nabila'),
                    subtitle: Text('Terima kasih ya!'),
                    trailing: Text('5', style: TextStyle(color: Colors.green)),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Siti'),
                    subtitle: Text('Nanti kita belajar bersama'),
                    trailing: Text('1', style: TextStyle(color: Colors.green)),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Raka'),
                    subtitle: Text('Aku sudah sampai'),
                    trailing: Text('3', style: TextStyle(color: Colors.green)),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Dimas'),
                    subtitle: Text('Oke, sampai jumpa'),
                    trailing: Text('1', style: TextStyle(color: Colors.green)),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Putri'),
                    subtitle: Text('Boleh kirim catatannya?'),
                    trailing: Text('4', style: TextStyle(color: Colors.green)),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Rizky'),
                    subtitle: Text('Siap, nanti aku kabari'),
                    trailing: Text('2', style: TextStyle(color: Colors.green)),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Andi'),
                    subtitle: Text('Terima kasih atas bantuannya'),
                    trailing: Text('1', style: TextStyle(color: Colors.green)),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Citra'),
                    subtitle: Text('Sampai ketemu besok'),
                    trailing: Text('6', style: TextStyle(color: Colors.green)),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Budi'),
                    subtitle: Text('Baik, aku mengerti'),
                    trailing: Text('1', style: TextStyle(color: Colors.green)),
                  ),
                ),
              ],
            ),
            ListView(
              children: const [
                ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.green,
                          child: Icon(Icons.add, size: 14, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  title: Text(
                    "Status Saya",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Ketuk untuk menambahkan pembaruan status"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: const Text(
                    'Pembaruan terkini',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.green,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                  ),
                  title: Text(
                    "Aji",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Hari ini, 08.20"),
                ),
              ],
            ),

            ListView(
              children: const [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text(
                    "Fathir",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.call_received, color: Colors.red, size: 16),
                      SizedBox(width: 4),
                      Text("Kemarin, 21.45"),
                    ],
                  ),
                  trailing: Icon(Icons.call, color: Colors.green),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text(
                    "Aji",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.call_made, color: Colors.green, size: 16),
                      SizedBox(width: 4),
                      Text("Hari ini, 11.00"),
                    ],
                  ),
                  trailing: Icon(Icons.videocam, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
