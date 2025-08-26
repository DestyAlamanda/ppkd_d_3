import 'package:flutter/material.dart';
import 'package:ppkd_d_3/tugas_14/api/get_user.dart';
import 'package:ppkd_d_3/tugas_14/model/user_model.dart' hide Image;

class JikanAnime extends StatefulWidget {
  const JikanAnime({super.key});

  @override
  State<JikanAnime> createState() => _JikanAnimeState();
}

class _JikanAnimeState extends State<JikanAnime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder<List<Datum>>(
                future: getUser(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasData) {
                    final users = snapshot.data as List<Datum>;
                    return ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: users.length,
                      itemBuilder: (BuildContext context, int index) {
                        final dataUser = users[index];
                        // print(dataUser.airing);
                        return ListTile(
                          leading: dataUser.trailer?.images?.imageUrl == null
                              ? CircleAvatar()
                              : Image.network(
                                  dataUser.trailer?.images?.imageUrl ?? "",
                                  errorBuilder: (context, error, stackTrace) {
                                    return CircleAvatar();
                                  },
                                ),
                          title: Text(dataUser.title ?? ""),
                          subtitle: Text(
                            "${dataUser.score} ${dataUser.type}" ?? "",
                          ),
                        );
                      },
                    );
                  } else {
                    return Text("Gagal Memuat data");
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
