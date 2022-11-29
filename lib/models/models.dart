
class Club{
  late final int _id;
  late final String _club;
  late final String _title;
  late final String _desc;
  late final String _date;
  late final String _link;
  final String ?_img;

  Club(this._id,this._club,this._title,this._date,this._desc,this._link,[this._img]);


  int get id=>_id;
  String get club=>_club;
  String get title=>_title;
  String get desc=>_desc;
  String get date=>_date;
  String get link=>_link;
  String? get img=>_img;

  // set title(String newTitle)=>_title=newTitle;

}

class Todo{
  late int _ID;
  late String _todo;
  late bool _completed;
  late int _userID;

  Todo(this._ID,this._todo,this._completed,this._userID);

  Todo.fromJson(Map<String,dynamic> json){
    _ID = json['id'];
    _todo = json['todo'];
    _completed = json['completed'];
    _userID = json['userId'];
  }

  Map <String,dynamic> toMap(){
    var map = <String,dynamic>{};
    map['ID']=_ID;
    map['todo']=_todo;
    map['completed']=_completed;
    map['userID']=_userID;
    return map;
  }
}

