class Course {
  final int id;
  final int subjectId;
  final String name;
  final String content;
  final String poster;
  final String hour;
  final String requirements;
  final int valuation;
  final int price;
  final String createdAt;
  final String updatedAt;

  Course({
    required this.id,
    required this.subjectId,
    required this.name,
    required this.content,
    required this.poster,
    required this.hour,
    required this.requirements,
    required this.valuation,
    required this.price,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'],
      subjectId: json['subject_id'],
      name: json['name'],
      content: json['content'],
      poster: json['poster'],
      hour: json['hour'],
      requirements: json['requirements'],
      valuation: json['valuation'],
      price: json['price'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'subject_id': subjectId,
      'name': name,
      'content': content,
      'poster': poster,
      'hour': hour,
      'requirements': requirements,
      'valuation': valuation,
      'price': price,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}

class ResponseData {
  final int status;
  final List<Course> data;
  final String message;

  ResponseData({
    required this.status,
    required this.data,
    required this.message,
  });

  factory ResponseData.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<Course> courseList =
        dataList.map((courseJson) => Course.fromJson(courseJson)).toList();

    return ResponseData(
      status: json['status'],
      data: courseList,
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'data': data.map((course) => course.toJson()).toList(),
      'message': message,
    };
  }
}

class UserData {
  final int id;
  final String fullName;
  final String email;
  final String phone;
  final String birthday;
  final String address;
  final String type;
  final String image;
  final int wallet;
  final String emailVerifiedAt;
  final String createdAt;
  final String updatedAt;
  final List<String> roles;
  final List<String> permissions;
  final String token;

  UserData({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.birthday,
    required this.address,
    required this.type,
    required this.image,
    required this.wallet,
    required this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.roles,
    required this.permissions,
    required this.token,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'],
      fullName: json['full_name'],
      email: json['email'],
      phone: json['phone'],
      birthday: json['birthday'],
      address: json['address'],
      type: json['type'],
      image: json['image'],
      wallet: json['wallet'],
      emailVerifiedAt: json['email_verified_at'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      roles: List<String>.from(json['roles']),
      permissions: List<String>.from(json['permissions']),
      token: json['token'],
    );
  }
}
