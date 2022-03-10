import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:structure_app/blocs/azkar_cubit/azkar_cubit.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = AzkarCubit.get(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("HOME"),
      ),
      body: BlocConsumer<AzkarCubit, AzkarStates>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is AzkarStateLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Text(cubit.azkar[index].bless!);
                    },
                    itemCount: cubit.azkar.length,
                  ),
                )
              ],
            );
          }),
    );
  }
}
