// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compare_products_db.dart';

// ignore_for_file: type=lint
class $ProductsTableTable extends ProductsTable
    with TableInfo<$ProductsTableTable, ProductsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
      'product_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _productMeta =
      const VerificationMeta('product');
  @override
  late final GeneratedColumn<String> product = GeneratedColumn<String>(
      'product', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [productId, product];
  @override
  String get aliasedName => _alias ?? 'products_table';
  @override
  String get actualTableName => 'products_table';
  @override
  VerificationContext validateIntegrity(Insertable<ProductsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    }
    if (data.containsKey('product')) {
      context.handle(_productMeta,
          product.isAcceptableOrUnknown(data['product']!, _productMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ProductsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductsTableData(
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}product_id']),
      product: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product']),
    );
  }

  @override
  $ProductsTableTable createAlias(String alias) {
    return $ProductsTableTable(attachedDatabase, alias);
  }
}

class ProductsTableData extends DataClass
    implements Insertable<ProductsTableData> {
  final int? productId;
  final String? product;
  const ProductsTableData({this.productId, this.product});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || productId != null) {
      map['product_id'] = Variable<int>(productId);
    }
    if (!nullToAbsent || product != null) {
      map['product'] = Variable<String>(product);
    }
    return map;
  }

  ProductsTableCompanion toCompanion(bool nullToAbsent) {
    return ProductsTableCompanion(
      productId: productId == null && nullToAbsent
          ? const Value.absent()
          : Value(productId),
      product: product == null && nullToAbsent
          ? const Value.absent()
          : Value(product),
    );
  }

  factory ProductsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductsTableData(
      productId: serializer.fromJson<int?>(json['productId']),
      product: serializer.fromJson<String?>(json['product']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'productId': serializer.toJson<int?>(productId),
      'product': serializer.toJson<String?>(product),
    };
  }

  ProductsTableData copyWith(
          {Value<int?> productId = const Value.absent(),
          Value<String?> product = const Value.absent()}) =>
      ProductsTableData(
        productId: productId.present ? productId.value : this.productId,
        product: product.present ? product.value : this.product,
      );
  @override
  String toString() {
    return (StringBuffer('ProductsTableData(')
          ..write('productId: $productId, ')
          ..write('product: $product')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(productId, product);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductsTableData &&
          other.productId == this.productId &&
          other.product == this.product);
}

class ProductsTableCompanion extends UpdateCompanion<ProductsTableData> {
  final Value<int?> productId;
  final Value<String?> product;
  final Value<int> rowid;
  const ProductsTableCompanion({
    this.productId = const Value.absent(),
    this.product = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductsTableCompanion.insert({
    this.productId = const Value.absent(),
    this.product = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<ProductsTableData> custom({
    Expression<int>? productId,
    Expression<String>? product,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (productId != null) 'product_id': productId,
      if (product != null) 'product': product,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductsTableCompanion copyWith(
      {Value<int?>? productId, Value<String?>? product, Value<int>? rowid}) {
    return ProductsTableCompanion(
      productId: productId ?? this.productId,
      product: product ?? this.product,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (product.present) {
      map['product'] = Variable<String>(product.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsTableCompanion(')
          ..write('productId: $productId, ')
          ..write('product: $product, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$ComparedProductsDb extends GeneratedDatabase {
  _$ComparedProductsDb(QueryExecutor e) : super(e);
  late final $ProductsTableTable productsTable = $ProductsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [productsTable];
}
