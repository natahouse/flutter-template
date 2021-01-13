class GitMembers {
  String login;
  String avatar;
  String profile;
  String type;

  GitMembers(Map<String, dynamic> parsedJson)
      : login = parsedJson['login'],
        avatar = parsedJson['avatar_url'],
        profile = parsedJson['html_url'],
        type = parsedJson['type'];
}
