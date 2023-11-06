import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/playground/application/input_validation_cubit/input_validation_cubit.dart';
import 'package:playground_news/presentation/commons/widgets/input_text_field.dart';

@RoutePage()
class InputValidationPage extends StatelessWidget {
  const InputValidationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InputValidationCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              leading: GestureDetector(
                child: const Icon(Icons.arrow_back_ios),
                onTap: () => context.router.pop(),
              ),
              title: Text(
                'Input Validation',
                style: context.textTheme.displayLarge,
              ),
            ),
            bottomNavigationBar: Container(
              margin: UiHelper.padding(horizontal: 10, vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  context.read<InputValidationCubit>().submit();
                },
                child: const Text('SUBMIT'),
              ),
            ),
            body: BlocBuilder<InputValidationCubit, InputValidationState>(
              bloc: context.read<InputValidationCubit>(),
              builder: (context, state) {
                return Padding(
                  padding: UiHelper.padding(horizontal: 20, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.title,
                        style: context.textTheme.displaySmall?.copyWith(
                          color: ColorConst.primary,
                        ),
                      ),
                      Text(
                        state.description,
                        style: context.textTheme.bodySmall?.copyWith(
                          color: ColorConst.grey,
                        ),
                      ),
                      UiHelper.verticalSpace(30),
                      InputTextField(
                        validator: (_) => state.showNameError,
                        controller:
                            context.read<InputValidationCubit>().nameController,
                        fieldName: 'Name',
                        hintText: 'Enter your name.',
                        prefixIcon: const Icon(
                          Icons.person_outline,
                          color: ColorConst.primary,
                        ),
                      ),
                      UiHelper.verticalSpace(15),
                      InputTextField(
                        validator: (_) => state.showemailError,
                        controller: context
                            .read<InputValidationCubit>()
                            .emailController,
                        fieldName: 'Email',
                        hintText: 'Enter your email.',
                        prefixIcon: const Icon(
                          Icons.mail_outline_outlined,
                          color: ColorConst.primary,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
