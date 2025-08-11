import 'package:flutter/material.dart';
import 'package:ppkd_d_3/tugas_7/tugas_7.dart';

class TugasDelapan extends StatefulWidget {
  const TugasDelapan({super.key});

  @override
  State<TugasDelapan> createState() => _TugasDelapanState();
}

class _TugasDelapanState extends State<TugasDelapan> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [const TugasTujuh(), const AboutPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff21BDCA),
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Tentang'),
        ],
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          Text(
            'Tentang Aplikasi',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xff21BDCA),
            ),
          ),

          SizedBox(height: 16),
          Text(
            'plikasi ini dikembangkan untuk memenuhi tugas Flutter 7 & 8, dengan fitur formulir interaktif yang dapat diakses melalui Drawer, serta navigasi bawah yang memanfaatkan BottomNavigationBar.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          Text('Developer: Manda', style: TextStyle(fontSize: 16)),
          Text(
            'Versi: 1.0.0',
            style: TextStyle(fontSize: 16, color: Color(0xff21BDCA)),
          ),
        ],
      ),
    );
  }
}
