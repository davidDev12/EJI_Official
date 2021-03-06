import 'package:EJI/models/player.dart';
import 'package:EJI/repository/cloud_database.dart';
import 'package:EJI/repository/player_ratings_Controler.dart';
import 'package:EJI/settings/params.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class PlayerRanking extends StatefulWidget {
  const PlayerRanking({Key key}) : super(key: key);

  @override
  _PlayerRankingState createState() => _PlayerRankingState();
}

class _PlayerRankingState extends State<PlayerRanking> {
  final String image = "players/profileImages/logo.png";
  List<Player> lista;
  bool isVoted = false;
  CloudDatabase c = Get.put(CloudDatabase());
  PlayerRatingsControler prc = Get.put(PlayerRatingsControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(),
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          new Image.asset('assets/images/back.png', fit: BoxFit.fill),
          Positioned(
            top: 10,
            left: 2,
            width: Get.width - 8,
            height: 400,
            child: StreamBuilder(
              stream: c.getPlayerz('players'),
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

                return Container(
                  width: 260,
                  height: 360,
                  child: new Swiper(
                      autoplay: false,
                      control: new SwiperControl(),
                      viewportFraction: 0.8,
                      scale: 1,
                      itemCount: lista != null ? lista.length : 0,
                      itemHeight: 400,
                      itemWidth: 360,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        Player player = lista[index];
                        return Stack(
                          overflow: Overflow.visible,
                          children: [
                            Positioned(
                              top: 60,
                              left: 40,
                              width: 260,
                              height: 340,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: accentColor)),
                                width: 260,
                                height: 360,
                                child: Card(
                                  borderOnForeground: true,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  shadowColor: Colors.black,
                                  color: primaryColor,
                                  elevation: 20,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 8, 8, 0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                ' ${player.playerName.toString()}',
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 22,
                                                  color:
                                                      const Color(0xffffffff),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '${player.position.toString()}',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 42,
                                                  color:
                                                      const Color(0xffedcca9),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              Container(
                                                child: c.isAdmin.value
                                                    ? SizedBox(
                                                        height: 30,
                                                        width: 30,
                                                        child: IconButton(
                                                          icon: Icon(
                                                            Icons
                                                                .exposure_plus_1,
                                                            size: 30,
                                                            color: accentColor,
                                                          ),
                                                          onPressed: () {
                                                            Get.defaultDialog(
                                                              backgroundColor:
                                                                  Colors.blue[
                                                                      100],
                                                              title:
                                                                  '${player.playerName.toString()}',
                                                              content:
                                                                  ScoreBoard(
                                                                playerToRate:
                                                                    player,
                                                              ),
                                                            );
                                                          },
                                                        ))
                                                    : SizedBox(),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                14, 0, 14, 2),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '${player.desciplineScore.toString()}',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 20,
                                                    color:
                                                        const Color(0xfff1811e),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                Text(
                                                  'الإنضباط',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 18,
                                                    color:
                                                        const Color(0xffedcca9),
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                14, 0, 14, 2),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '${player.trainingScore.toString()}',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 20,
                                                    color:
                                                        const Color(0xfff1811e),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                Text(
                                                  'التداريب',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 18,
                                                    color:
                                                        const Color(0xffedcca9),
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                14, 0, 14, 2),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '${player.positionMaster.toString()}',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 20,
                                                    color:
                                                        const Color(0xfff1811e),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                Text(
                                                  'اتقان المركز',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 18,
                                                    color:
                                                        const Color(0xffedcca9),
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                14, 0, 14, 2),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '${player.availability.toString()}',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 20,
                                                    color:
                                                        const Color(0xfff1811e),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                Text(
                                                  'المتاحية',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 18,
                                                    color:
                                                        const Color(0xffedcca9),
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 80,
                              right: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '${player.oVR.toString()}',
                                    style: TextStyle(
                                      fontSize: 56,
                                      color: accentColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      'pts',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: accentColor,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 120,
                              height: 120,
                              child: VerticalDivider(
                                width: 4,
                                color: accentColor,
                                thickness: 4,
                              ),
                            ),
                            Positioned(
                              top: -10,
                              left: 20,
                              height: 160,
                              width: 140,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: FutureBuilder(
                                    future: c.getProfileImage(context,
                                        player.profileImage.toString()),
                                    builder: (context, imagesnapshot) {
                                      if (imagesnapshot == null ||
                                          !imagesnapshot.hasData ||
                                          imagesnapshot.hasError) {
                                        return new Image.asset(
                                          'assets/images/logo.png',
                                          fit: BoxFit.fill,
                                          width: 120,
                                          height: 120,
                                        );
                                      } else
                                        return CachedNetworkImage(
                                          width: 120,
                                          height: 120,
                                          imageUrl: imagesnapshot.data,
                                          fit: BoxFit.fill,
                                          placeholder: (context, url) =>
                                              new Image.asset(
                                            'assets/images/logo.png',
                                            fit: BoxFit.fill,
                                            width: 120,
                                            height: 120,
                                          ),
                                          errorWidget: (context, url, error) =>
                                              new Image.asset(
                                            'assets/images/logo.png',
                                            width: 120,
                                            height: 120,
                                            fit: BoxFit.fill,
                                          ),
                                        );
                                    }),
                              ),
                            ),
                          ],
                        );
                      }),
                );
              },
            ),
          ),
          Positioned(
            bottom: 30,
            height: 180,
            width: 360,
            child: Container(
              //child: SimpleTimeSeriesChart(),
              decoration: BoxDecoration(
                  color: primaryColor,
                  border: Border.all(
                    color: accentColor,
                  ),
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ],
      ),
    );
  }
}

class ScoreBoard extends StatefulWidget {
  ScoreBoard({Key key, this.playerToRate}) : super(key: key);
  final Player playerToRate;

  @override
  _ScoreBoardState createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  CloudDatabase c = Get.put(CloudDatabase());
  String _id;
  PlayerRatingsControler prc = Get.put(PlayerRatingsControler());

  var isOpenToRate = false;

  @override
  Widget build(BuildContext context) {
    if (widget.playerToRate != null) {
      isOpenToRate = widget.playerToRate.rateable;
      prc.training.value = widget.playerToRate.trainingScore;
      prc.descipline.value = widget.playerToRate.desciplineScore;
      prc.positionMastery.value = widget.playerToRate.positionMaster;
      prc.availability.value = widget.playerToRate.availability;
      _id = widget.playerToRate.id;
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: primaryColor,
            border: Border.all(width: 1.0, color: const Color(0xff707070)),
          ),
          child: Column(
            children: <Widget>[
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    color: const Color(0xffffffff),
                  ),
                  children: [
                    TextSpan(
                      text: 'التقييم ',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextSpan(
                      text: isOpenToRate ? 'مفتوح' : 'مغلق',
                      style: TextStyle(
                        fontSize: 28,
                        color: isOpenToRate ? accentColor : Colors.red[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 0, 14, 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 140,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  icon: Icon(Icons.thumb_up,
                                      color: isOpenToRate
                                          ? accentColor
                                          : secondaryColor.withOpacity(0.8)),
                                  onPressed: () {
                                    prc.incrementDescipline();
                                  }),
                              Obx(
                                () => Text(
                                  '${prc.descipline.value}',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 20,
                                    color: secondaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              IconButton(
                                  icon: Icon(Icons.thumb_down,
                                      color: isOpenToRate
                                          ? accentColor
                                          : secondaryColor.withOpacity(0.8)),
                                  onPressed: () {
                                    prc.deccrementDescipline();
                                  }),
                            ],
                          ),
                        ),
                        Text(
                          'الإنضباط',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            color: const Color(0xffedcca9),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 140,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  icon: Icon(Icons.thumb_up,
                                      color: isOpenToRate
                                          ? accentColor
                                          : secondaryColor.withOpacity(0.8)),
                                  onPressed: () {
                                    prc.incrementTraining();
                                  }),
                              Obx(
                                () => Text(
                                  '${prc.training.value}',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 20,
                                    color: secondaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              IconButton(
                                  icon: Icon(Icons.thumb_down,
                                      color: isOpenToRate
                                          ? accentColor
                                          : secondaryColor.withOpacity(0.8)),
                                  onPressed: () {
                                    prc.deccrementTraining();
                                  }),
                            ],
                          ),
                        ),
                        Text(
                          'التداريب',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            color: const Color(0xffedcca9),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 140,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  icon: Icon(Icons.thumb_up,
                                      color: isOpenToRate
                                          ? accentColor
                                          : secondaryColor.withOpacity(0.8)),
                                  onPressed: () {
                                    prc.incrementPositionMastery();
                                  }),
                              Obx(
                                () => Text(
                                  '${prc.positionMastery.value}',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 20,
                                    color: secondaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              IconButton(
                                  icon: Icon(Icons.thumb_down,
                                      color: isOpenToRate
                                          ? accentColor
                                          : secondaryColor.withOpacity(0.8)),
                                  onPressed: () {
                                    prc.decrementPositionMastery();
                                  }),
                            ],
                          ),
                        ),
                        Text(
                          'اتقان المركز',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            color: const Color(0xffedcca9),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 140,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  icon: Icon(Icons.thumb_up,
                                      color: isOpenToRate
                                          ? accentColor
                                          : secondaryColor.withOpacity(0.8)),
                                  onPressed: () {
                                    prc.incrementAvailability();
                                  }),
                              Obx(
                                () => Text(
                                  '${prc.availability.value}',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 20,
                                    color: secondaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              IconButton(
                                  icon: Icon(Icons.thumb_down,
                                      color: isOpenToRate
                                          ? accentColor
                                          : secondaryColor.withOpacity(0.8)),
                                  onPressed: () {
                                    prc.decrementAvailability();
                                  }),
                            ],
                          ),
                        ),
                        Text(
                          'المتاحية',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            color: const Color(0xffedcca9),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  isOpenToRate
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            RaisedButton(
                                color: accentColor,
                                child: Text(
                                  "Save".tr,
                                  style: TextStyle(
                                      color: primaryColor, fontSize: 16),
                                ),
                                onPressed: () {
                                  Player scoredPlayer = new Player(
                                    id: _id,
                                    profileImage:
                                        widget.playerToRate.profileImage,
                                    regNum: widget.playerToRate.regNum,
                                    seasons: widget.playerToRate.seasons,
                                    playerName: widget.playerToRate.playerName,
                                    phone: widget.playerToRate.phone,
                                    email: widget.playerToRate.email,
                                    regDate: widget.playerToRate.regDate,
                                    position: widget.playerToRate.position,
                                    dateOfBirth:
                                        widget.playerToRate.dateOfBirth,
                                    placeOfBirth:
                                        widget.playerToRate.placeOfBirth,
                                    availability: prc.availability.value,
                                    desciplineScore: prc.descipline.value,
                                    positionMaster: prc.positionMastery.value,
                                    trainingScore: prc.training.value,
                                    oVR: (prc.descipline.value) +
                                        (prc.training.value) +
                                        prc.positionMastery.value +
                                        prc.availability.value,
                                    rateable: widget.playerToRate.rateable,
                                    isGK: widget.playerToRate.isGK,
                                  );
                                  Get.defaultDialog(
                                    title: 'تحذير',
                                    middleText: ' !هل انت متاكد ',
                                    backgroundColor: Colors.blue[100],
                                    onConfirm: () {
                                      Get.defaultDialog(
                                        title: 'SuperAdmin'.tr,
                                        content: TextField(
                                          decoration: InputDecoration(
                                              prefixIcon: Icon(Icons.lock)),
                                          onChanged: (value) {
                                            if (value.trim().toString() ==
                                                c.coachAdminPass.value
                                                    .toString()
                                                    .trim()) {
                                              Navigator.pop(context);
                                              c.updatePlayer(scoredPlayer);
                                            }
                                          },
                                        ),
                                      );
                                    },
                                    onCancel: () => Navigator.pop(context),
                                  );
                                }),
                            RaisedButton(
                              color: accentColor,
                              child: Text(
                                "Cancel".tr,
                                style: TextStyle(
                                    color: primaryColor, fontSize: 16),
                              ),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        )
                      : Container(),
                ],
              ),
            ],
          ),
        ),
      );
    } else
      return Container();
  }
}
