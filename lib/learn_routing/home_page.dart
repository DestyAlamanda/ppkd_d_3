import 'package:flutter/material.dart';
import 'package:ppkd_d_3/learn_routing/second_page.dart';
import 'package:ppkd_d_3/learn_routing/third_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      appBar: AppBar(title: Text('Contoh Navigasi'), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.navigation, size: 80, color: Colors.indigo),
            SizedBox(height: 20),
            Text(
              'Jenis Navigasi Flutter',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            SizedBox(height: 30),

            // Push
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text(
                  'Push ke Second Page',
                  style: TextStyle(color: Colors.indigo),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Push Named
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: Text(
                  'Push dengan Named Route',
                  style: TextStyle(color: Colors.indigo),
                ),
              ),
            ),

            SizedBox(height: 10),

            // Push Replacement
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text(
                  'Ganti dengan Second Page',
                  style: TextStyle(color: Colors.indigo),
                ),
              ),
            ),

            SizedBox(height: 10),

            // Push And Remove Until
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdPage()),
                    (route) => false,
                  );
                },
                child: Text(
                  'Hapus Semua & ke Third Page',
                  style: TextStyle(color: Colors.indigo),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
