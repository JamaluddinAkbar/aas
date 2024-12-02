import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bolu Kukus"),
        backgroundColor: const Color.fromARGB(255, 136, 45, 142),
      ),
      body: Row(
        children: [
          // Left Column
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Bolu Kukus",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Bolu kukus adalah salah satu jenis kue tradisional Indonesia yang sangat populer. Kue ini memiliki tekstur yang lembut dan sedikit berpori-pori, serta rasa manis yang pas. Cara pembuatannya pun cukup sederhana, sehingga sering dibuat di rumah maupun dijual di pasar-pasar tradisional.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.purple),
                      Icon(Icons.star, color: Colors.purple),
                      Icon(Icons.star, color: Colors.purple),
                      Icon(Icons.star, color: Colors.purple),
                      Icon(Icons.star_border, color: Colors.purple),
                      SizedBox(width: 8),
                      Text("170 Reviews", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInfoColumn(Icons.timer, "Prep", "25 min"),
                      _buildInfoColumn(Icons.kitchen, "Cook", "1 hr"),
                      _buildInfoColumn(Icons.group, "Feeds", "4-6"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Right Image
          Expanded(
            flex: 3,
            child: Image.asset(
              'assets/bolukukus.jpg', // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to create information columns
  static Column _buildInfoColumn(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.purple),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}