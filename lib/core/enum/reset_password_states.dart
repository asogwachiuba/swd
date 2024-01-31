enum ResetPasswordStates {
  emailUnverified,
  emailVerified,
  otpVerified,
}

extension PushNotificationFunctionalities on ResetPasswordStates {
  bool get isemailUnverified => this == ResetPasswordStates.emailUnverified;
  bool get isemailVerified => this == ResetPasswordStates.emailVerified;
  bool get isotpVerified => this == ResetPasswordStates.otpVerified;
}
