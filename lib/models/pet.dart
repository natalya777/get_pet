import 'package:get_pet/import.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pet.g.dart';

@CopyWith()
@JsonSerializable()
class PetModel extends Equatable {
  const PetModel({
    this.id,
    this.category,
    this.breed,
    this.age,
    this.coloring,
    this.weight,
    this.address,
    this.distance,
    this.condition,
    this.liked,
    this.photos,
    this.description,
    this.member,
    this.updatedAt,
  });

  final String id; // id
  final CategoryModel category; // категория
  final BreedModel breed; // порода
  final String age; // возраст
  final String coloring; // окрас
  final double weight; // вес double
  final String address; // адрес
  final double distance; // расстояние до  double
  final ConditionModel condition; // действие
  final bool liked; // понравилось
  final String photos; // TODO список фотографий
  final String description; // описание
  final MemberModel member; // контактное лицо
  final DateTime updatedAt; // дата обновления

  @override
  List<Object> get props => [
        id,
        category,
        breed,
        age,
        coloring,
        weight,
        address,
        distance,
        condition,
        liked,
        photos,
        description,
        member,
      ];

  factory PetModel.fromJson(Map<String, dynamic> json) =>
      _$PetModelFromJson(json);

  Map<String, dynamic> toJson() => _$PetModelToJson(this);
}
