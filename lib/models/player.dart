class Player {
  String id;
  String profileImage;
  int regNum;
  String playerName;
  String dateOfBirth;
  String placeOfBirth;
  String email;
  String phone;
  String regDate;
  String position;
  int seasons;
  int trainingScore;
  int desciplineScore;
  int positionMaster;
  int availability;
  int oVR;
  bool rateable;
  bool isGK;
  getoVR() {
    return trainingScore + desciplineScore + positionMaster + availability;
  }

  Player.dummy() {
 this.id='111111';
    this.playerName='Player JK';
    this.dateOfBirth='02-02-1990';
    this.profileImage='assets/images/logo.png';
    this.email='player.X@gmail.com';
    this.phone='0611111111';
    this.position='JK';
    this.regNum=123456789;
    this.regDate='02-02-2020';
    this.seasons=2;
    this.placeOfBirth='Idawlstane';
    this.desciplineScore=4;
    this.positionMaster=4;
    this.availability=4;
    this.oVR=12;
    this.trainingScore=4;
    this.rateable=true;
    this.isGK=false;


  }
  Player({
    this.id,
    this.playerName,
    this.dateOfBirth,
    this.profileImage,
    this.email,
    this.phone,
    this.position,
    this.regNum,
    this.regDate,
    this.seasons,
    this.placeOfBirth,
    this.desciplineScore,
    this.positionMaster,
    this.availability,
    this.oVR,
    this.trainingScore,
    this.rateable,
    this.isGK,
  }) {
    this.oVR = trainingScore + desciplineScore + positionMaster + availability;
  }
  Map<String, dynamic> toMap() {
    return {
      'profileimage': profileImage,
      'regnum': regNum,
      'playername': playerName,
      'dateofbirth': dateOfBirth,
      'placeofbirth': placeOfBirth,
      'email': email,
      'phone': phone,
      'regdate': regDate,
      'position': position,
      'seasons': seasons,
      'desciplineScore': desciplineScore,
      'positionMaster': positionMaster,
      'availability': availability,
      'oVR': oVR,
      'trainingScore': trainingScore,
      'rateable': rateable,
      'isGK': isGK,
    };
  }

  Player.fromMap(Map<String, dynamic> map, String id)
      : id = id,
        playerName = map['playername'],
        dateOfBirth = map['dateofbirth'],
        phone = map['phone'],
        position = map['position'],
        regNum = map['regnum'],
        regDate = map['regdate'],
        email = map['email'],
        placeOfBirth = map['placeofbirth'],
        seasons = map['seasons'],
        profileImage = map['profileimage'],
        trainingScore = map['trainingScore'],
        oVR = map['oVR'],
        availability = map['availability'],
        positionMaster = map['positionMaster'],
        desciplineScore = map['desciplineScore'],
        rateable = map['rateable'],
        isGK = map['isGK'];
}

class JuniorPlayer {
  String id;
  String profileImage;
  int regNum;
  String playerName;
  String dateOfBirth;
  String placeOfBirth;
  String email;
  String phone;
  String regDate;
  String position;
  int seasons;
  int trainingScore;
  int desciplineScore;
  int positionMaster;
  int availability;
  int oVR;
  bool rateable;
  bool isGK;
  JuniorPlayer({
    this.id,
    this.playerName,
    this.dateOfBirth,
    this.profileImage,
    this.email,
    this.phone,
    this.position,
    this.regNum,
    this.regDate,
    this.seasons,
    this.placeOfBirth,
    this.desciplineScore,
    this.positionMaster,
    this.availability,
    this.oVR,
    this.trainingScore,
    this.rateable,
    this.isGK,
  });

  Map<String, dynamic> toMap() {
    return {
      'profileImage': profileImage,
      'regNum': regNum,
      'playerName': playerName,
      'dateOfBirth': dateOfBirth,
      'placeOfBirth': placeOfBirth,
      'email': email,
      'phone': phone,
      'regDate': regDate,
      'position': position,
      'seasons': seasons,
      'desciplineScore': desciplineScore,
      'positionMaster': positionMaster,
      'availability': availability,
      'oVR': oVR,
      'trainingScore': trainingScore,
      'rateable': rateable,
      'isGK': isGK,
    };
  }

  JuniorPlayer.fromMap(Map<String, dynamic> map, String id)
      : id = id,
        playerName = map['playerName'],
        dateOfBirth = map['dateOfBirth'],
        phone = map['phone'],
        position = map['position'],
        regNum = map['regNum'],
        regDate = map['regDate'],
        email = map['email'],
        placeOfBirth = map['placeOfBirth'],
        seasons = map['seasons'],
        profileImage = map['profileImage'],
        trainingScore = map['trainingScore'],
        oVR = map['oVR'],
        availability = map['availability'],
        positionMaster = map['positionMaster'],
        desciplineScore = map['desciplineScore'],
        rateable = map['rateable'],
        isGK = map['isGK'];
}
