import 'package:flutter/material.dart';

void main() {
  runApp(const PennyStockScannerApp());
}

class PennyStockScannerApp extends StatelessWidget {
  const PennyStockScannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Penny Stock Scanner',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const StockHomePage(),
    );
  }
}

class StockHomePage extends StatefulWidget {
  const StockHomePage({super.key});

  @override
  State<StockHomePage> createState() => _StockHomePageState();
}

class _StockHomePageState extends State<StockHomePage> {
  final List<String> stocks = [
    "ABC Industries - ₹2.30",
    "XYZ Finance - ₹3.50",
    "Demo Corp - ₹1.80"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Penny Stock Scanner")),
      body: ListView.builder(
        itemCount: stocks.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(stocks[index]),
              subtitle: const Text("Potential Multibagger Candidate"),
            ),
          );
        },
      ),
    );
  }
}
