import 'package:equatable/equatable.dart';
import 'options_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  const HomeModel({this.optionsItemList = const []});

  final List<OptionsItemModel> optionsItemList;

  HomeModel copyWith({List<OptionsItemModel>? optionsItemList}) {
    return HomeModel(
      optionsItemList: optionsItemList ?? this.optionsItemList,
    );
  }

  @override
  List<Object?> get props => [optionsItemList];
}
