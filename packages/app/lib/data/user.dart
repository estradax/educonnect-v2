import 'package:json_annotation/json_annotation.dart';

enum UserRole {
  @JsonValue('OTHER')
  other,
  @JsonValue('FRESH_GRADUATE')
  freshGraduate,
  @JsonValue('EDUCATOR')
  educator,
}
