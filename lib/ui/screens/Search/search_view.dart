import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furnitureproject/ui/screens/Search/search_viewmodel.dart';
import 'package:stacked/stacked.dart';


class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.nonReactive(
      builder: (context, viewModel, child) => Scaffold(
        body: SizedBox.expand(

        ),

      ),
      viewModelBuilder: () => SearchViewModel(),
    );
  }
}
