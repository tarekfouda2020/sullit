import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_table.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'compare_products_db.g.dart';

@lazySingleton
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(
      path.join(
        dbFolder.path,
        "compare_products.sqlite",
      ),
    );
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [ProductsTable])
class ComparedProductsDb extends _$ComparedProductsDb {
  ComparedProductsDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<ProductsTableData>> getItems() async {
    return await (select(productsTable)).get();
  }

  Future<int> insertItem(ProductsTableData entity) async {
    return await into(productsTable).insert(entity);
  }

  Future<int> deleteItem(int id) async {
    return await (delete(productsTable)
          ..where((tbl) => tbl.productId.equals(id)))
        .go();
  }

  Future<void> deleteEverything() {
    return transaction(() async {
      for (final table in allTables) {
        await delete(table).go();
      }
    });
  }
}
