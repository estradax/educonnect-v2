import 'package:json_annotation/json_annotation.dart';

enum UserRole {
  @JsonValue('OTHER')
  other,
  @JsonValue('EDUCATOR')
  educator,
  @JsonValue('FRESH_GRADUATE')
  freshGraduate,
}
