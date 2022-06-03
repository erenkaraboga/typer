class cardModel {
  late String avatarUrl;
  late String bookUrl;
  late String person;
  late String subDescPerson;
  late String desc;
  cardModel(String _avatar, String _bookUrl, String _person, String _subDesc,
      String _desc) {
    avatarUrl = _avatar;
    bookUrl = _bookUrl;
    person = _person;
    subDescPerson = _subDesc;
    desc = _desc;
  }
}
