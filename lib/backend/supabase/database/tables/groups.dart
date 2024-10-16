import '../database.dart';

class GroupsTable extends SupabaseTable<GroupsRow> {
  @override
  String get tableName => 'groups';

  @override
  GroupsRow createRow(Map<String, dynamic> data) => GroupsRow(data);
}

class GroupsRow extends SupabaseDataRow {
  GroupsRow(super.data);

  @override
  SupabaseTable get table => GroupsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get groupName => getField<String>('group_name');
  set groupName(String? value) => setField<String>('group_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
