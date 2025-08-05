import 'package:flutter/material.dart';

class TugasLima extends StatefulWidget {
  const TugasLima({super.key});

  @override
  State<TugasLima> createState() => _TugasLimaState();
}

class _TugasLimaState extends State<TugasLima> {
  String name = "Desty Alamanda";
  String desc = "Lalalaala";
  bool showName = true;
  bool isLiked = false;
  bool showDescription = false;
  bool showInkWellImage = false;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tugas 5")),
      body: ListView(
        children: [
          const SizedBox(height: 20),

          // InkWell - gambar interaktif
          Stack(
            alignment: Alignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    showInkWellImage = !showInkWellImage;
                  });
                  print("Kotak disentuh");
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: showInkWellImage
                          ? Image.asset(
                              "assets/photos/carmen2.jpg",
                              fit: BoxFit.cover,
                            )
                          : const SizedBox.shrink(),
                    ),
                  ),
                ),
              ),

              // IconButton - tombol like
              Positioned(
                bottom: -5,
                right: 8,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;
                      });
                      if (isLiked) print("Disukai");
                    },
                    icon: const Icon(Icons.favorite, size: 40),
                    color: isLiked ? Colors.pink[500] : Colors.grey,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // ElevatedButton - tampilkan nama
          Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showName = !showName;
                    });
                  },
                  child: Text(showName ? "Sembunyikan Nama" : "Tampilkan Nama"),
                ),
                const SizedBox(height: 10),
                showName
                    ? Text(
                        "Nama saya: $name",
                        style: TextStyle(fontSize: 20, color: Colors.pink[300]),
                      )
                    : const SizedBox(),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // TextButton - tampilkan deskripsi
          Center(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      showDescription = !showDescription;
                    });
                  },
                  child:
                      Text(showDescription ? "Sembunyikan" : "Lihat Selengkapnya"),
                ),
                const SizedBox(height: 10),
                showDescription
                    ? Text(
                        desc,
                        style: const TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      )
                    : const SizedBox(),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // FloatingActionButton (counter)
          Center(
            child: Column(
              children: [
                Text(
                  counter.toString(),
                  style: const TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },
                      heroTag: "minus",
                      child: const Icon(Icons.remove),
                    ),
                    const SizedBox(width: 20),
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      heroTag: "plus",
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // GestureDetector
          GestureDetector(
            onDoubleTap: () {
              print("Ditekan dua kali");
            },
            onTap: () {
              print("Ditekan sekali");
            },
            onLongPress: () {
              print("Tahan lama");
            },
            child: Container(
              height: 48,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text(
                "Tekan Aku",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
