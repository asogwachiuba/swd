import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/onboarding/reset_password_page/reset_password_viewmodel.dart';
import 'package:swd/utils/swd_colors.dart';
import 'package:swd/utils/validators.dart';

class VerifyResetOtp extends ViewModelWidget<ResetPasswordViewModel> {
  const VerifyResetOtp({super.key});

  @override
  Widget build(BuildContext context, ResetPasswordViewModel viewModel) {
    final defaultPinTheme = PinTheme(
      width: 40,
      height: 46,
      margin: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      textStyle: const TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: SWDColors.borderColor,
        ),
      ),
    );
    return Form(
      key: viewModel.verifyOtpFormKey,
      child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          const Text(
            "Verify your email",
            style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.w200,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Please enter the OTP sent to",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: SWDColors.borderSub,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            viewModel.emailController.text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Directionality(
            // Specify direction if desired
            textDirection: TextDirection.ltr,
            child: Pinput(
              focusNode: viewModel.focusNode,
              length: 6,
              controller: viewModel.otpController,
              validator: Validators.otpValidator(context),
              separatorPositions: const [3],
              separator: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "-",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              androidSmsAutofillMethod:
                  AndroidSmsAutofillMethod.smsUserConsentApi,
              listenForMultipleSmsOnAndroid: true,
              defaultPinTheme: defaultPinTheme,
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              hapticFeedbackType: HapticFeedbackType.lightImpact,
              onCompleted: (pin) {
                viewModel.verifyOtp(otp: pin);
              },
              cursor: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 9),
                    width: 22,
                    height: 1,
                    color: SWDColors.redWine,
                  ),
                ],
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                margin: const EdgeInsets.symmetric(
                  horizontal: 4,
                ),
                decoration: defaultPinTheme.decoration!.copyWith(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: SWDColors.redWine),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                margin: const EdgeInsets.symmetric(
                  horizontal: 4,
                ),
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: SWDColors.black,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white),
                ),
              ),
              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border.all(color: Colors.redAccent),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                const Text("You haven't gotten your code in your mail? ",
                    style: TextStyle(color: Colors.white, fontSize: 12)),
                InkWell(
                  onTap: () => viewModel.resendVerificationCode(),
                  child: const Text(
                    "Tap to resend it",
                    style: TextStyle(color: SWDColors.yellow, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
