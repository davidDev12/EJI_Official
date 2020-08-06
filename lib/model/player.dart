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

  Player(
      {this.id,
      this.playerName,
      this.dateOfBirth,
      this.profileImage,
      this.email,
      this.phone,
      this.position,
      this.regNum,
      this.regDate,
      this.seasons,
      this.placeOfBirth});
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
        profileImage = map['profileimage'];
       
}