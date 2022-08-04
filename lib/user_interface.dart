import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc.dart';
import 'counter_page.dart';

class CounterUpp extends StatelessWidget {
  const CounterUpp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (_) =>
            CounterBloc(), // виджет blocProvider возвращает наше состояние
        child: const CounterPage(), // принимает в чайлд макет
      ),
    );
  }
}
