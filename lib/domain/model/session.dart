class Session {
  const Session(this.token, this.expireAt);

  final String token;
  final DateTime expireAt;

  Map<String, String> toJson() => {
        'token': token,
        'expireAt': expireAt.toString(),
      };
  Session.fromJson(Map<String, dynamic> json)
      : token = json['token'],
        expireAt = DateTime.parse(json['expireAt']);
}
