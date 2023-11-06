import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/playground/application/counter_cubit/counter_cubit.dart';

@RoutePage()
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterCubit counterCubit = CounterCubit();

    return BlocProvider(
      create: (context) => counterCubit,
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => context.router.pop(),
            child: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
          title: Text(
            'Counter App',
            style: context.textTheme.displayLarge,
          ),
        ),
        floatingActionButton: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () => counterCubit.increment(),
                heroTag: 'btn1',
                child: const Icon(Icons.add),
              ),
              UiHelper.verticalSpace(10),
              FloatingActionButton(
                onPressed: () => counterCubit.decrement(),
                heroTag: 'btn2',
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        ),
        body: Center(
          child: BlocBuilder<CounterCubit, int>(
            bloc: counterCubit,
            builder: (context, state) {
              return Text(
                '$state',
                style: context.textTheme.displayLarge,
              );
            },
          ),
        ),
      ),
    );
  }
}
