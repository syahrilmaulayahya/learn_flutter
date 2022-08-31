import 'package:flutter/material.dart';
import 'package:flutter_submission/model/place.dart';
import 'package:flutter_submission/model/place_manager.dart';
import 'package:flutter_submission/screen/detail.dart';
import 'package:provider/provider.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final manager = Provider.of<FavoritePlace>(context, listen: false);
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    List<Place> newPlaceList = [];
    for (var i = 0; i < manager.favoritePlace.length; i++) {
      if (manager.favoritePlace[i].isFavorite == true) {
        newPlaceList.add(manager.favoritePlace[i]);
      }
    }

    return Consumer<FavoritePlace>(builder: (context, manager, child) {
      return newPlaceList.isEmpty
          ? const Center(child: Text("Kamu belum punya tempat favorit"))
          : Padding(
              padding: const EdgeInsets.all(15),
              child: GridView.count(
                crossAxisCount: width <= 600 ? 2 : 5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: newPlaceList.map((place) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Detail(
                          manager: manager,
                          place: place,
                        );
                      }));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(place.imgUrl),
                                    fit: BoxFit.fill)),
                          ),
                          Positioned(
                              bottom: 30,
                              left: 10,
                              child: Text(
                                place.name,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )),
                          Positioned(
                              bottom: 10,
                              left: 10,
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "${place.province}, ${place.nation}",
                                    style: const TextStyle(color: Colors.white),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ));
    });
  }
}
