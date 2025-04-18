import 'package:flutter/material.dart';

import '../../../core/presentation/styles/styles.dart';
import '../../../core/presentation/utils/riverpod_framework.dart';
import '../../../core/presentation/widgets/custom_elevated_button.dart';
import '../../../core/presentation/widgets/platform_widgets/platform_icons.dart';
import '../../../generated/l10n.dart';
import '../../domain/sign_in_with_email.dart';
import '../providers/sign_in_provider.dart';

class LoginFormComponent extends HookConsumerWidget {
  const LoginFormComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginFormKey = useMemoized(GlobalKey<FormState>.new);
    final emailController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');

    void signIn() {
      if (loginFormKey.currentState!.validate()) {
        final params = SignInWithEmail(
          email: emailController.text,
          password: passwordController.text,
        );
        ref.read(signInStateProvider.notifier).signIn(params);
      }
    }

    return Form(
      key: loginFormKey,
      child: Column(
        children: [
          TextFormField(
            key: const ValueKey('login_email'),
            controller: emailController,
            decoration: InputDecoration(
              hintText: S.of(context).email,
              suffixIcon: Padding(
                padding: EdgeInsetsDirectional.only(
                  end: Theme.of(context)
                          .inputDecorationTheme
                          .contentPadding!
                          .horizontal /
                      2,
                ),
                child: Icon(AppPlatformIcons.platformIcons(context).mail),
              ),
              suffixIconConstraints: const BoxConstraints(),
            ),
            validator: SignInWithEmail.validateEmail(context),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: Sizes.marginV24,
          ),
          TextFormField(
            key: const ValueKey('login_password'),
            controller: passwordController,
            decoration: InputDecoration(
              hintText: S.of(context).password,
              suffixIcon: Padding(
                padding: EdgeInsetsDirectional.only(
                  end: Theme.of(context)
                          .inputDecorationTheme
                          .contentPadding!
                          .horizontal /
                      2,
                ),
                child: const Icon(Icons.password),
              ),
              suffixIconConstraints: const BoxConstraints(),
            ),
            validator: SignInWithEmail.validatePassword(context),
            textInputAction: TextInputAction.go,
            obscureText: true,
            onFieldSubmitted:
                ref.isLoading(signInStateProvider) ? null : (_) => signIn(),
          ),
          const SizedBox(
            height: Sizes.marginV40,
          ),
          CustomElevatedButton(
            enableGradient: true,
            onPressed: ref.isLoading(signInStateProvider) ? null : signIn,
            child: Text(
              S.of(context).signIn.toUpperCase(),
              style: TextStyles.coloredElevatedButton(context),
            ),
          ),
        ],
      ),
    );
  }
}
