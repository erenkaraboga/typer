class TyperModel {
  int? userId;
  String? mail;
  String? password;
  String? userName;
  int? postCount;
  String? avatarUrl;
  List<Posts>? posts;

  TyperModel(
      {this.userId,
      this.mail,
      this.password,
      this.userName,
      this.postCount,
      this.avatarUrl,
      this.posts});

  TyperModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    mail = json['mail'];
    password = json['password'];
    userName = json['userName'];
    postCount = json['postCount'];
    avatarUrl = json['avatarUrl'];
    if (json['posts'] != null) {
      posts = <Posts>[];
      json['posts'].forEach((v) {
        posts!.add(new Posts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['mail'] = this.mail;
    data['password'] = this.password;
    data['userName'] = this.userName;
    data['postCount'] = this.postCount;
    data['avatarUrl'] = this.avatarUrl;
    if (this.posts != null) {
      data['posts'] = this.posts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Posts {
  int? postId;
  String? bookName;
  String? writer;
  String? url;
  int? userId;
  String? description;

  Posts(
      {this.postId,
      this.bookName,
      this.writer,
      this.url,
      this.userId,
      this.description});

  Posts.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    bookName = json['bookName'];
    writer = json['writer'];
    url = json['url'];
    userId = json['userId'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postId'] = this.postId;
    data['bookName'] = this.bookName;
    data['writer'] = this.writer;
    data['url'] = this.url;
    data['userId'] = this.userId;
    data['description'] = this.description;
    return data;
  }
}
