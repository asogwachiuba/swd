import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/onboarding/verify_email/verify_email_viewmodel.dart';
import 'package:swd/utils/swd_colors.dart';
import 'package:swd/utils/validators.dart';
import 'package:swd/widgets/swd_back_button.dart';
import 'package:swd/widgets/swd_custom_view.dart';
import 'package:swd/widgets/swd_gradient_button.dart';
import 'package:swd/widgets/swd_loading_view.dart';

class VerifyEmailView extends StackedView<VerifyEmailViewModel> {
  const VerifyEmailView({super.key});

  @override
  Widget builder(
      BuildContext context, VerifyEmailViewModel viewModel, Widget? child) {
    final size = MediaQuery.of(context).size;
    final defaultPinTheme = PinTheme(
      // width: 46,
      margin: const EdgeInsets.all(2),
      height: 45,
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
    return SWDCustomView(
      child: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 35,
                ),
                // Back button
                SWDBackButton(
                  onPressed: () => viewModel.goBack(),
                ),
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
                  viewModel.email ?? "",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                Row(
                  children: [
                    Expanded(
                      child: Form(
                        key: viewModel.formKey,
                        child: Directionality(
                          // Specify direction if desired
                          textDirection: TextDirection.ltr,
                          child: Pinput(
                            focusNode: viewModel.focusNode1,
                            length: 6,
                            androidSmsAutofillMethod:
                                AndroidSmsAutofillMethod.smsUserConsentApi,
                            listenForMultipleSmsOnAndroid: true,
                            defaultPinTheme: defaultPinTheme,
                            pinputAutovalidateMode:
                                PinputAutovalidateMode.onSubmit,
                            hapticFeedbackType: HapticFeedbackType.lightImpact,
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
                              decoration: defaultPinTheme.decoration!.copyWith(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: SWDColors.redWine),
                              ),
                            ),
                            submittedPinTheme: defaultPinTheme.copyWith(
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
                      ),
                    ),
                  ],
                ),

                const Spacer(),
                SWDGradientButton(
                  buttonName: "Verify Email",
                  onPressed: () => viewModel.verifyEmail(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 2.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Container(
                        height: 2.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text("Account information",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: SWDColors.borderSub,
                      )),
                )
              ],
            ),
          ),
          viewModel.isBusy ? const SWDLoadingView() : const SizedBox(),
        ],
      ),
    );
  }

  @override
  VerifyEmailViewModel viewModelBuilder(BuildContext context) =>
      VerifyEmailViewModel();

  @override
  void onViewModelReady(VerifyEmailViewModel viewModel) {
    viewModel.onReady();
    super.onViewModelReady(viewModel);
  }
}
