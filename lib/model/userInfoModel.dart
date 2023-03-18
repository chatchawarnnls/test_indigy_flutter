class UserInfoModel {
  List<Results> results;

  UserInfoModel({this.results});

  UserInfoModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

}

class Results {
  Name name;
  String email;
  String phone;
  Picture picture;

  Results({this.name, this.email, this.phone, this.picture});

  Results.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    email = json['email'];
    phone = json['phone'];
    picture =
    json['picture'] != null ? new Picture.fromJson(json['picture']) : null;
  }
}

class Name {
  String title;
  String first;
  String last;

  Name({this.title, this.first, this.last});

  Name.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    first = json['first'];
    last = json['last'];
  }

}

class Picture {
  String medium;

  Picture({this.medium});

  Picture.fromJson(Map<String, dynamic> json) {
    medium = json['medium'];
  }

}