import 'package:flutter/material.dart';

class TugasLima extends StatefulWidget {
  const TugasLima({super.key});

  @override
  State<TugasLima> createState() => _TugasLimaState();
}

class _TugasLimaState extends State<TugasLima> {
  String name = "Desty Alamanda";
  String desc = "lalalalallala";
  bool showName = true;
  bool isLiked = false;
  bool showDescription = false;
  bool showInkWellText = false;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 8 State",)),
      body: ListView(
        // child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20),
              ],
            ),
            Image.asset("assets/photos/jeno.png"),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
            ),
            Row(
              children: [
            // membuat ElevatedButton
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    showName = !showName;
                  },
                  child: Text(showName ? "Nama Saya" : "Nama Saya"),
                ),
              
            showName ? Text(name, style: TextStyle(fontSize: 20, color: Colors.pink[200])) : SizedBox(),
              ]
            ),
            Spacer(),//  membuat IconButton
            IconButton(
                  onPressed: () {
                    setState(() {});
                    isLiked = !isLiked;
                  },
                  icon: Icon(Icons.favorite),
                  color: isLiked ? Colors.pink[500] : Colors.grey
                ),
              ]
            ),
                SizedBox(width: 20),
            //  membuat TextButton
            TextButton(
              onPressed: () {
                setState(() {});
                showDescription = !showDescription;
              },
              child: Text(showDescription ? "Sembunyikan" : "Lihat Selengkapnya.."),
            ),
            showDescription ? Text(desc, style: TextStyle(fontSize: 20)) : SizedBox(),
        
            Text(counter.toString(), style: TextStyle(fontSize: 40)),
          //   FloatingActionButton(
          //  onPressed: () {
          //           setState(() {});
          //           counter++;
          //           // print(counter);
          //         },
          //         child  : Icon(Icons.add),
          //    ),
        
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {});
                    counter--;
                    print(counter);
                  },
                  child: Icon(Icons.minimize),
                ),
                SizedBox(width: 20),
        
                FloatingActionButton(
                  onPressed: () {
                    setState(() {});
                    counter++;
                    print(counter);
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
            // SizedBox(height: 10),
            // Text("Ini InkWell"),
            // InkWell(
            //   onTap: () {},
            //   child: Padding(
            //     padding: const EdgeInsets.all(20.0),
            //     child: Image.asset("assets/images/jeno.jpeg"),
            //   ),
            // ),
            SizedBox(height: 20,),
            Text("Ini InkWell"),
            InkWell(
              onTap: () {
                setState(() {
                  showInkWellText = !showInkWellText;
                });
              },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(
                    color: const Color.fromARGB(255, 162, 162, 162),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8)
               ),
               child: showInkWellText? Text("data"): const SizedBox.shrink(),
              )
             ),
            ),
            Text("Ini GestureDetector"),
            GestureDetector(
              onDoubleTap: () {
                print("Ditekan Dua Kali");
              },
              onTap: () {
                print("Ditekan Sekali");
              },
              onLongPress: () {
                print("Tahan Lama");
              },
              child: Container(
                color: Colors.blue,
                height: 48,
                width: double.infinity,
                child: Text("Tekan Aku"),
              ),
            ),
           ]
         ),
      );
    //  );
  }
}