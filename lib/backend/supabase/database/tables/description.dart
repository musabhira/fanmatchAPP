import '../database.dart';

class DescriptionTable extends SupabaseTable<DescriptionRow> {
  @override
  String get tableName => 'description';

  @override
  DescriptionRow createRow(Map<String, dynamic> data) => DescriptionRow(data);
}

class DescriptionRow extends SupabaseDataRow {
  DescriptionRow(super.data);

  @override
  SupabaseTable get table => DescriptionTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
