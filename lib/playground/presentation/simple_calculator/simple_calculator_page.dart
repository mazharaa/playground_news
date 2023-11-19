import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/playground/application/simple_calculator_cubit/simple_calculator_cubit.dart';
import 'package:playground_news/playground/presentation/simple_calculator/widgets/input_number_field.dart';
import 'package:playground_news/playground/presentation/simple_calculator/widgets/operation_button.dart';

@RoutePage()
class SimpleCalculatorPage extends StatelessWidget {
  const SimpleCalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimpleCalculatorCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<SimpleCalculatorCubit, SimpleCalculatorState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                leading: GestureDetector(
                  child: const Icon(Icons.arrow_back_ios),
                  onTap: () => context.router.pop(),
                ),
                title: Text(
                  'Simple Calculator',
                  style: context.textTheme.displayLarge,
                ),
              ),
              bottomNavigationBar: Container(
                margin: UiHelper.padding(horizontal: 10, vertical: 20),
                child: ElevatedButton(
                  onPressed: () {
                    state.model.type.when(
                      none: () {},
                      add: () {
                        context.read<SimpleCalculatorCubit>().addValue();
                      },
                      substract: () {
                        context.read<SimpleCalculatorCubit>().substractValue();
                      },
                      multiply: () {
                        context.read<SimpleCalculatorCubit>().multiplyValue();
                      },
                      divide: () {
                        context.read<SimpleCalculatorCubit>().divideValue();
                      },
                    );
                  },
                  child: const Text('CALCULATE'),
                ),
              ),
              body: Padding(
                padding: UiHelper.padding(horizontal: 20, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CHOOSE TYPE',
                      style: context.textTheme.headlineMedium?.copyWith(
                        color: ColorConst.green,
                      ),
                    ),
                    UiHelper.verticalSpace(10),
                    Wrap(
                      spacing: UiHelper.setSp(10),
                      runSpacing: UiHelper.setSp(7),
                      children: [
                        OperationButton(
                          operation: 'Add',
                          isChoosen: state
                              .choosenType(const SimpleCalculatorType.add()),
                          onPressed: () {
                            context
                                .read<SimpleCalculatorCubit>()
                                .chooseType(const SimpleCalculatorType.add());
                          },
                        ),
                        OperationButton(
                          operation: 'Substract',
                          isChoosen: state.choosenType(
                              const SimpleCalculatorType.substract()),
                          onPressed: () {
                            context.read<SimpleCalculatorCubit>().chooseType(
                                const SimpleCalculatorType.substract());
                          },
                        ),
                        OperationButton(
                          operation: 'Multiply',
                          isChoosen: state.choosenType(
                              const SimpleCalculatorType.multiply()),
                          onPressed: () {
                            context.read<SimpleCalculatorCubit>().chooseType(
                                const SimpleCalculatorType.multiply());
                          },
                        ),
                        OperationButton(
                          operation: 'Divide',
                          isChoosen: state
                              .choosenType(const SimpleCalculatorType.divide()),
                          onPressed: () {
                            context.read<SimpleCalculatorCubit>().chooseType(
                                const SimpleCalculatorType.divide());
                          },
                        ),
                      ],
                    ),
                    UiHelper.verticalSpace(25),
                    if (!state.typeNotChoosen)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              InputNumberField(
                                controller: context
                                    .read<SimpleCalculatorCubit>()
                                    .leftController,
                              ),
                              UiHelper.horizontalSpace(10),
                              SizedBox(
                                width: UiHelper.setWidth(20),
                                child: Center(
                                  child: Text(
                                    state.equationText(state.model.type),
                                    style: context.textTheme.titleMedium
                                        ?.copyWith(fontSize: 35),
                                  ),
                                ),
                              ),
                              UiHelper.horizontalSpace(10),
                              InputNumberField(
                                controller: context
                                    .read<SimpleCalculatorCubit>()
                                    .rightController,
                              ),
                              UiHelper.horizontalSpace(10),
                              Text(
                                '= ${state.displayValue}',
                                style: context.textTheme.titleMedium
                                    ?.copyWith(fontSize: 50),
                              ),
                            ],
                          ),
                          UiHelper.verticalSpace(25),
                          Container(
                            padding: UiHelper.padding(all: 7),
                            decoration: BoxDecoration(
                              borderRadius:
                                  UiHelper.borderRadiusCircular(all: 7),
                              color: ColorConst.lightGreen,
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.info_outline,
                                  color: ColorConst.green,
                                ),
                                state.showErrorMsg == null
                                    ? Text(
                                        ' Press calculate button to get the result',
                                        style: context.textTheme.bodyMedium
                                            ?.copyWith(
                                          fontStyle: FontStyle.italic,
                                          color: ColorConst.grey,
                                        ),
                                      )
                                    : Text(
                                        ' ${state.showErrorMsg}',
                                        style: context.textTheme.bodyMedium
                                            ?.copyWith(
                                          fontStyle: FontStyle.italic,
                                          color: ColorConst.red,
                                        ),
                                      ),
                              ],
                            ),
                          ),
                          UiHelper.verticalSpace(25),
                        ],
                      ),
                    Text(
                      'HISTORY',
                      style: context.textTheme.headlineMedium?.copyWith(
                        color: ColorConst.green,
                      ),
                    ),
                    UiHelper.verticalSpace(10),
                    state.model.histories.isEmpty
                        ? Text(
                            'No history found',
                            style: context.textTheme.bodySmall?.copyWith(
                              color: ColorConst.grey,
                              fontStyle: FontStyle.italic,
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: state.model.histories.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          state.historyText(
                                              state.model.histories[index]),
                                          style:
                                              context.textTheme.displayMedium,
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            context
                                                .read<SimpleCalculatorCubit>()
                                                .restoreHistory(state
                                                    .model.histories[index].id);
                                          },
                                          child: Text(
                                            'Re-Apply',
                                            style: context
                                                .textTheme.displaySmall
                                                ?.copyWith(
                                              color: ColorConst.primary,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    UiHelper.divider(),
                                  ],
                                );
                              },
                            ),
                          ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
