import 'package:equatable/equatable.dart';

class CategorieModels extends Equatable {
  final String id;
  final String image;
  final String name;
  const CategorieModels({
    required this.id,
    required this.image,
    required this.name,
  });

  @override
  List<Object?> get props => [
        id,
        image,
        name,
      ];
}
