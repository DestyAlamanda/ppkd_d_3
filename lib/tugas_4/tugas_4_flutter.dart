import 'package:flutter/material.dart';

class TugasEmpat extends StatelessWidget {
  const TugasEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(
          "Formulir",
          style: TextStyle(
            color: Colors.grey[100],
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.pink[200],
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              labelText: 'Nama Lengkap',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone),
              labelText: 'No Hp',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.notes),
              labelText: 'Deskripsi',
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
          ),
          SizedBox(height: 20),
          Text(
            "Daftar Produk",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          // List of items
          Card(
            color: Colors.pink[100],
            child: ListTile(
              leading: Image.asset(
                'assets/photos/taeri.png',
                width: 50,
                height: 50,
              ),
              title: Text(
                "Sepatu Taeri",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Rp140.000",
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Card(
            color: Colors.pink[200],
            child: ListTile(
              leading: Image.asset(
                'assets/photos/jeno.png',
                width: 50,
                height: 50,
              ),
              title: Text(
                "Sepatu Jeno",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Rp150.000",
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Card(
            color: Colors.pink[100],
            child: ListTile(
              leading: Image.asset(
                'assets/photos/ruka.png',
                width: 50,
                height: 50,
              ),
              title: Text(
                "Sepatu Ruka",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Rp160.000",
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Card(
            color: Colors.pink[200],
            child: ListTile(
              leading: Image.asset(
                'assets/photos/minji.png',
                width: 50,
                height: 50,
              ),
              title: Text(
                "Sepatu Minji",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Rp145.000",
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Card(
            color: Colors.pink[100],
            child: ListTile(
              leading: Image.asset(
                'assets/photos/seola.png',
                width: 50,
                height: 50,
              ),
              title: Text(
                "Sepatu Seola",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Rp155.000",
                style: TextStyle(color: Colors.black),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
