import 'package:control_user_design_df/core/locator/locator.dart';
import 'package:control_user_design_df/modules/rick_morty/data/repositories/character_repository.dart';
import 'package:control_user_design_df/modules/rick_morty/ui/structure/cubits/character_cubit.dart';
import 'package:control_user_design_df/modules/rick_morty/ui/structure/cubits/character_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeRickMortyPage extends StatelessWidget {
  const HomeRickMortyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
      bloc: locator<CharacterCubit>()..initCharacters(),
      builder: (context, state) {
        return Scaffold(
          body: (state.characters.isNotEmpty)
              ? ListView.builder(
                  itemCount: state.characters.length,
                  itemBuilder: (context, index) {
                    return Text(state.characters[index].image ?? '---.----');
                  },
                )
              : Center(child: Text(state.errorMessage ?? '')),
        );
      },
    );
  }
}
