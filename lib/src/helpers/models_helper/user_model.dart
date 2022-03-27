class UserModel {
  String? userId;
  String? userName;
  String? userEmail;

  UserModel.fromJson(Map<String, dynamic> json, {String? docId}) {
    userId = docId;
    userName = json["userName"];
    userEmail = json["userEmail"];
  }

  UserModel({
    this.userName,
    this.userEmail,
  });

  @override
  String toString() {
    return 'ChatsModel{userName: $userName, userEmail: $userEmail}';
  }
}
