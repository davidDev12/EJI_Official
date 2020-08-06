import 'package:EJI/model/player.dart';
import 'package:EJI/repository/cloud_database.dart';
import 'package:EJI/screens/public/player_details.dart';
import 'package:EJI/settings/params.dart';
import 'package:EJI/shared/drawer_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import 'admin_drawer.dart';

class AdminPlayerList extends StatefulWidget {
  AdminPlayerList({Key key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<AdminPlayerList> {
  CloudDatabase cD = Get.put(CloudDatabase());
  List<Player> lista;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        drawer: cD.isAdmin.value ? AdminDrawer() : MyDrawer(),
        appBar: AppBar(),
        body: StreamBuilder(
            stream: cD.getPlayerz(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Player>> snapshot) {
              if (snapshot.hasError || !snapshot.hasData) {
                return Center(
                    child: Icon(
                  Icons.person,
                  size: 100,
                  color: secondaryColor,
                ));
              } else {
                lista = snapshot.data;
              }

              return ListView.builder(
                itemCount: lista.length != 0 ? lista.length : 0,
                itemBuilder: (BuildContext context, int index) {
                  Player player = lista[index];
                  return Card(
                    margin: EdgeInsets.fromLTRB(8, 2, 8, 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: primaryColorShade,
                    child: Slidable(
                      actions: <Widget>[
                        IconSlideAction(
                          color: Colors.red[400],
                          caption: 'Delete',
                          icon: Icons.delete,
                          onTap: () {
                            cD.deletePlayer(player.id.toString());
                          },
                        ),
                      ],
                      actionPane: SlidableDrawerActionPane(),
                      child: ListTile(
                        contentPadding: EdgeInsets.only(left: 8, right: 8),
                        leading: Stack(
                          children: <Widget>[
                            Container(
                              height: 54,
                              width: 54,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: secondaryColor),
                              ),
                              child: FutureBuilder<String>(
                                future: cD.getProfileImage(
                                    context, player.profileImage.toString()),
                                builder: (context, snapshot) {
                                  print(player.profileImage.toString());
                                  return CircleAvatar(
                                    radius: 80,
                                    backgroundColor: secondaryColor,
                                    child: ClipOval(
                                      child: (snapshot == null ||
                                              !snapshot.hasData)
                                          ? Image.asset(
                                              'assets/images/logo.png',
                                              fit: BoxFit.fill,
                                            )
                                          : Image.network(
                                              snapshot.data.toString(),
                                              fit: BoxFit.fill,
                                            ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        title: Text(
                          '${player.playerName}',
                          style: subtext3,
                        ),
                        trailing: Text(
                          '${player.position}',
                          style: subtext1,
                        ),
                        subtitle: Text(
                          '${player.dateOfBirth}',
                          style: hinttext,
                        ),
                        onTap: () {
                          Player player = snapshot.data[index];

                          Get.to(PlayerDetails(player: player));
                        },
                      ),
                    ),
                  );
                },
              );
            }));
  }
}