import '../../../domain/entities/credential_entity.dart';

class CredentialModel extends CredentialEntity {
  CredentialModel.fromJson(Map<String, dynamic> json)
      : super(
          id: json["id"],
          jwtToken: json["jwt_token"],
          role: json["role"],
        );
}
