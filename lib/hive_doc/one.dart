import 'package:hive/hive.dart';

part 'one.g.dart';

@HiveType(typeId: 0)
class One {
  @HiveField(0)
  late String name;
  @HiveField(1)
  late DateTime date;
  One({required this.name, required this.date});
}
