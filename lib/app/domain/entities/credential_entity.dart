class CredentialEntity {
  final int id;
  final String email;
  final String name;
  final String code;
  final String phoneNumber;
  final String imageProfile;
  final List<String> actions;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String fcmToken;
  final String username;
  final List<dynamic> visitPlans;
  CredentialEntity({
    required this.id,
    required this.email,
    required this.name,
    required this.code,
    required this.phoneNumber,
    required this.imageProfile,
    required this.actions,
    required this.createdAt,
    required this.updatedAt,
    required this.fcmToken,
    required this.username,
    required this.visitPlans,
  });
}
