import 'package:flutter/material.dart';
import 'package:ppkd_d_3/tugas_14/model/user_model.dart' hide Image;

class JikanDetail extends StatelessWidget {
  final Datum anime;

  const JikanDetail({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF112240),
      appBar: AppBar(
        title: const Text(
          "Detail Anime",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: anime.trailer?.images?.mediumImageUrl == null
                  ? Container(
                      color: Colors.grey.shade800,
                      height: 150,
                      width: 330,
                      child: const Icon(
                        Icons.broken_image,
                        color: Colors.white70,
                        size: 50,
                      ),
                    )
                  : Image.network(
                      anime.trailer?.images?.mediumImageUrl ?? "",
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey.shade800,
                          child: const Icon(
                            Icons.broken_image,
                            color: Colors.white70,
                            size: 50,
                          ),
                        );
                      },
                      fit: BoxFit.cover,
                    ),
            ),
            const SizedBox(height: 16),
            Text(
              "${anime.title} (${anime.year})",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "${anime.rating} | ${anime.episodes} Episodes",
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),

            const SizedBox(height: 15),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children:
                  anime.genres?.map((genre) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 31, 50, 83),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        genre.name ?? "",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    );
                  }).toList() ??
                  [],
            ),

            const SizedBox(height: 20),
            Text(
              anime.synopsis ?? "",
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
