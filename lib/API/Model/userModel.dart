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
