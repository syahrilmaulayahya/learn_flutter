import 'package:flutter/material.dart';
import 'package:flutter_submission/model/place_manager.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    final manager = Provider.of<FavoritePlace>(context, listen: false);
    for (var i = 0; i < manager.favoritePlace.length; i++) {
      if (manager.favoritePlace[i].isFavorite == true) {
        setState(() {
          counter += 1;
        });
      }
    }
    return Consumer<FavoritePlace>(
      builder: (context, manager, child) {
        return Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                const CircleAvatar(
                  backgroundImage:
                      AssetImage("lib/assets/image/AvatarMaker.png"),
                  radius: 70,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Ahmed",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "${counter} Favorites",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                )
              ])),
        );
      },
    );
  }
}
