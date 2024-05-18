import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dashboard'),
        backgroundColor: Colors.white70,
      ),

      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Eth_logo.png', height: 70, width: 70,),
                  const SizedBox( width: 20,),
                  const Text(
                    "10 Eth", 
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold), 
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Center(
                      child: Text(
                        '+ CREDIT', 
                        style: TextStyle(color: Colors.amber, fontSize: 20, fontWeight: FontWeight.bold), 
                      )
                    )
                  )
                ),

                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Center(
                      child: Text(
                        '- DEBIT', 
                        style: TextStyle(color: Colors.amber, fontSize: 20, fontWeight: FontWeight.bold), 
                      )
                    )
                  )
                ),
              ],
            ),

            const SizedBox(height: 20,),

            const Text("Transations", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),

            const SizedBox(height: 10,),

            Expanded(
              child: ListView(
                children: [
                  Container (
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/Eth_logo.png", height: 20, width: 40,),
                            const SizedBox(width: 10,),
                            const Text("1ETH",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10,),  

                        const Text("From Anonymous",
                          style: TextStyle(fontSize: 20),
                        ),

                        const Text("Reason",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}