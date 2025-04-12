import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/value_validators.dart';
import '../../home/domain/value_objects.dart';

part 'profile_details.freezed.dart';

@freezed
abstract class ProfileDetails with _$ProfileDetails {
  const factory ProfileDetails({
    required String name,
    required String phone,
    @Default(DelivererStatus.available) DelivererStatus delivererStatus,
    DateTime? estimatedDeliveryCompletionTime,
  }) = _UpdateProfileParams;

  static FormFieldValidator<String?> validateName(BuildContext context) =>
      ValueValidators.validateName(context);

  static FormFieldValidator<String?> validateMobile(BuildContext context) =>
      ValueValidators.validateMobileNumber(context);
}
