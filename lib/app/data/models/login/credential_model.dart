import '../../../domain/entities/credential_entity.dart';

class CredentialModel extends CredentialEntity {
  CredentialModel.fromJson(Map<String, dynamic> json)
      : super(
          id: json["id"],
          email: json["email"],
          name: json["name"],
          code: json["code"],
          phoneNumber: json["phone_number"],
          imageProfile: json["image_profile"],
          actions: List<String>.from(json["actions"].map((x) => x)),
          createdAt: DateTime.parse(json["created_at"]),
          updatedAt: DateTime.parse(json["updated_at"]),
          fcmToken: json["fcm_token"],
          username: json["username"],
          visitPlans: List<dynamic>.from(json["visit_plans"].map((x) => x)),
        );
}
