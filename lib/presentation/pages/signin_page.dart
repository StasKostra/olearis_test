import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:olearis_test/config/constant/constant.dart';
import 'package:olearis_test/presentation/bloc/signin/signin_cubit.dart';
import 'package:olearis_test/presentation/widgets/auth_form.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SigninCubit>();
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        title: Text(
          AppLocalizations.of(context)!.signin,
          style: TextStyle(color: theme.colorScheme.onPrimary),
        ),
        centerTitle: true,
      ),
      body: LayoutBuilder(builder: (context, constraint) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: SvgPicture.asset(logoPath),
                  ),
                  AuthForm(
                      onChangeLogin: cubit.onChangeLogin,
                      onChangePassword: cubit.onChangePassword),
                  ElevatedButton(
                    onPressed: () async {
                      final valid =
                          context.read<SigninCubit>().validateInputs();

                      if (valid) {
                        context.go('/home');
                      }
                    },
                    child: Text(AppLocalizations.of(context)!.resume),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
