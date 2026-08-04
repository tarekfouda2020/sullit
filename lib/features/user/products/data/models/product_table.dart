import 'package:drift/drift.dart';

class ProductsTable extends Table {
  IntColumn get productId => integer().nullable()();
  TextColumn get product => text().nullable()();
}
