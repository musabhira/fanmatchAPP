import '../database.dart';

class EventTable extends SupabaseTable<EventRow> {
  @override
  String get tableName => 'event';

  @override
  EventRow createRow(Map<String, dynamic> data) => EventRow(data);
}

class EventRow extends SupabaseDataRow {
  EventRow(super.data);

  @override
  SupabaseTable get table => EventTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get eventName => getField<String>('event_name');
  set eventName(String? value) => setField<String>('event_name', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);
}
