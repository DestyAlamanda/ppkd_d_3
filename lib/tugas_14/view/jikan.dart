import 'package:flutter/material.dart';
import 'package:ppkd_d_3/tugas_14/api/get_user.dart';
import 'package:ppkd_d_3/tugas_14/model/user_model.dart' hide Image;
import 'package:ppkd_d_3/tugas_14/view/jikan_detail.dart';

class JikanAnime extends StatefulWidget {
  const JikanAnime({super.key});

  @override
  State<JikanAnime> createState() => _JikanAnimeState();
}

class _JikanAnimeState extends State<JikanAnime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF112240),
      appBar: AppBar(
        title: const Text(
          "Top Anime",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder<List<Datum>>(
                future: getUser(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasData) {
                    final users = snapshot.data as List<Datum>;
                    return GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(15),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // jumlah kolom grid
                            crossAxisSpacing: 20, // jarak antar kolom
                            mainAxisSpacing: 20, // jarak antar baris
                            childAspectRatio: 0.7, // rasio lebar vs tinggi
                          ),
                      itemCount: users.length,
                      itemBuilder: (BuildContext context, int index) {
                        final anime = users[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => JikanDetail(anime: anime),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Stack(
                              children: [
                                // Background Image
                                Positioned.fill(
                                  child:
                                      anime.trailer?.images?.mediumImageUrl ==
                                          null
                                      ? Container(
                                          color: Colors.grey.shade800,
                                          child: const Icon(
                                            Icons.broken_image,
                                            color: Colors.white70,
                                            size: 50,
                                          ),
                                        )
                                      : Image.network(
                                          anime
                                                  .trailer
                                                  ?.images
                                                  ?.mediumImageUrl ??
                                              "",
                                          errorBuilder:
                                              (context, error, stackTrace) {
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
                                Positioned(
                                  top: 15,
                                  right: 15,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.9),
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Text(
                                      "⭐${anime.score ?? '-'}",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.transparent,
                                          Colors.black.withOpacity(0.7),
                                        ],
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          anime.title ?? "",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.white,
                                            shadows: [
                                              Shadow(
                                                blurRadius: 4,
                                                color: Colors.black,
                                                offset: Offset(1, 1),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 2),
                                        // Container(
                                        //   color: Colors.white,

                                        //   child: Text(
                                        //     "${dataUser.score ?? '-'}",
                                        //     style: const TextStyle(
                                        //       fontSize: 12,
                                        //       color: Colors.black,
                                        //     ),
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return const Text(
                      "Gagal Memuat data",
                      style: TextStyle(color: Colors.white),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
