// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doublev_drift_database.dart';

// ignore_for_file: type=lint
class $UserEntityTable extends UserEntity
    with TableInfo<$UserEntityTable, UserEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastNameMeta =
      const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _birthdayMeta =
      const VerificationMeta('birthday');
  @override
  late final GeneratedColumn<DateTime> birthday = GeneratedColumn<DateTime>(
      'birthday', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, lastName, birthday];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_entity';
  @override
  VerificationContext validateIntegrity(Insertable<UserEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('birthday')) {
      context.handle(_birthdayMeta,
          birthday.isAcceptableOrUnknown(data['birthday']!, _birthdayMeta));
    } else if (isInserting) {
      context.missing(_birthdayMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name'])!,
      birthday: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}birthday'])!,
    );
  }

  @override
  $UserEntityTable createAlias(String alias) {
    return $UserEntityTable(attachedDatabase, alias);
  }
}

class UserEntityData extends DataClass implements Insertable<UserEntityData> {
  final int id;
  final String name;
  final String lastName;
  final DateTime birthday;
  const UserEntityData(
      {required this.id,
      required this.name,
      required this.lastName,
      required this.birthday});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['last_name'] = Variable<String>(lastName);
    map['birthday'] = Variable<DateTime>(birthday);
    return map;
  }

  UserEntityCompanion toCompanion(bool nullToAbsent) {
    return UserEntityCompanion(
      id: Value(id),
      name: Value(name),
      lastName: Value(lastName),
      birthday: Value(birthday),
    );
  }

  factory UserEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserEntityData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      lastName: serializer.fromJson<String>(json['lastName']),
      birthday: serializer.fromJson<DateTime>(json['birthday']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'lastName': serializer.toJson<String>(lastName),
      'birthday': serializer.toJson<DateTime>(birthday),
    };
  }

  UserEntityData copyWith(
          {int? id, String? name, String? lastName, DateTime? birthday}) =>
      UserEntityData(
        id: id ?? this.id,
        name: name ?? this.name,
        lastName: lastName ?? this.lastName,
        birthday: birthday ?? this.birthday,
      );
  @override
  String toString() {
    return (StringBuffer('UserEntityData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('lastName: $lastName, ')
          ..write('birthday: $birthday')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, lastName, birthday);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserEntityData &&
          other.id == this.id &&
          other.name == this.name &&
          other.lastName == this.lastName &&
          other.birthday == this.birthday);
}

class UserEntityCompanion extends UpdateCompanion<UserEntityData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> lastName;
  final Value<DateTime> birthday;
  const UserEntityCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.lastName = const Value.absent(),
    this.birthday = const Value.absent(),
  });
  UserEntityCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String lastName,
    required DateTime birthday,
  })  : name = Value(name),
        lastName = Value(lastName),
        birthday = Value(birthday);
  static Insertable<UserEntityData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? lastName,
    Expression<DateTime>? birthday,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (lastName != null) 'last_name': lastName,
      if (birthday != null) 'birthday': birthday,
    });
  }

  UserEntityCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? lastName,
      Value<DateTime>? birthday}) {
    return UserEntityCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      birthday: birthday ?? this.birthday,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (birthday.present) {
      map['birthday'] = Variable<DateTime>(birthday.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserEntityCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('lastName: $lastName, ')
          ..write('birthday: $birthday')
          ..write(')'))
        .toString();
  }
}

class $AddressEntityTable extends AddressEntity
    with TableInfo<$AddressEntityTable, AddressEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AddressEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _wayTypeMeta =
      const VerificationMeta('wayType');
  @override
  late final GeneratedColumn<String> wayType = GeneratedColumn<String>(
      'way_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _wayNumberMeta =
      const VerificationMeta('wayNumber');
  @override
  late final GeneratedColumn<String> wayNumber = GeneratedColumn<String>(
      'way_number', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _detailMeta = const VerificationMeta('detail');
  @override
  late final GeneratedColumn<String> detail = GeneratedColumn<String>(
      'detail', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, wayType, wayNumber, detail, userId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'address_entity';
  @override
  VerificationContext validateIntegrity(Insertable<AddressEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('way_type')) {
      context.handle(_wayTypeMeta,
          wayType.isAcceptableOrUnknown(data['way_type']!, _wayTypeMeta));
    } else if (isInserting) {
      context.missing(_wayTypeMeta);
    }
    if (data.containsKey('way_number')) {
      context.handle(_wayNumberMeta,
          wayNumber.isAcceptableOrUnknown(data['way_number']!, _wayNumberMeta));
    } else if (isInserting) {
      context.missing(_wayNumberMeta);
    }
    if (data.containsKey('detail')) {
      context.handle(_detailMeta,
          detail.isAcceptableOrUnknown(data['detail']!, _detailMeta));
    } else if (isInserting) {
      context.missing(_detailMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AddressEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AddressEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      wayType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}way_type'])!,
      wayNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}way_number'])!,
      detail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}detail'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
    );
  }

  @override
  $AddressEntityTable createAlias(String alias) {
    return $AddressEntityTable(attachedDatabase, alias);
  }
}

class AddressEntityData extends DataClass
    implements Insertable<AddressEntityData> {
  final int id;
  final String wayType;
  final String wayNumber;
  final String detail;
  final int userId;
  const AddressEntityData(
      {required this.id,
      required this.wayType,
      required this.wayNumber,
      required this.detail,
      required this.userId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['way_type'] = Variable<String>(wayType);
    map['way_number'] = Variable<String>(wayNumber);
    map['detail'] = Variable<String>(detail);
    map['user_id'] = Variable<int>(userId);
    return map;
  }

  AddressEntityCompanion toCompanion(bool nullToAbsent) {
    return AddressEntityCompanion(
      id: Value(id),
      wayType: Value(wayType),
      wayNumber: Value(wayNumber),
      detail: Value(detail),
      userId: Value(userId),
    );
  }

  factory AddressEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AddressEntityData(
      id: serializer.fromJson<int>(json['id']),
      wayType: serializer.fromJson<String>(json['wayType']),
      wayNumber: serializer.fromJson<String>(json['wayNumber']),
      detail: serializer.fromJson<String>(json['detail']),
      userId: serializer.fromJson<int>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'wayType': serializer.toJson<String>(wayType),
      'wayNumber': serializer.toJson<String>(wayNumber),
      'detail': serializer.toJson<String>(detail),
      'userId': serializer.toJson<int>(userId),
    };
  }

  AddressEntityData copyWith(
          {int? id,
          String? wayType,
          String? wayNumber,
          String? detail,
          int? userId}) =>
      AddressEntityData(
        id: id ?? this.id,
        wayType: wayType ?? this.wayType,
        wayNumber: wayNumber ?? this.wayNumber,
        detail: detail ?? this.detail,
        userId: userId ?? this.userId,
      );
  @override
  String toString() {
    return (StringBuffer('AddressEntityData(')
          ..write('id: $id, ')
          ..write('wayType: $wayType, ')
          ..write('wayNumber: $wayNumber, ')
          ..write('detail: $detail, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, wayType, wayNumber, detail, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AddressEntityData &&
          other.id == this.id &&
          other.wayType == this.wayType &&
          other.wayNumber == this.wayNumber &&
          other.detail == this.detail &&
          other.userId == this.userId);
}

class AddressEntityCompanion extends UpdateCompanion<AddressEntityData> {
  final Value<int> id;
  final Value<String> wayType;
  final Value<String> wayNumber;
  final Value<String> detail;
  final Value<int> userId;
  const AddressEntityCompanion({
    this.id = const Value.absent(),
    this.wayType = const Value.absent(),
    this.wayNumber = const Value.absent(),
    this.detail = const Value.absent(),
    this.userId = const Value.absent(),
  });
  AddressEntityCompanion.insert({
    this.id = const Value.absent(),
    required String wayType,
    required String wayNumber,
    required String detail,
    required int userId,
  })  : wayType = Value(wayType),
        wayNumber = Value(wayNumber),
        detail = Value(detail),
        userId = Value(userId);
  static Insertable<AddressEntityData> custom({
    Expression<int>? id,
    Expression<String>? wayType,
    Expression<String>? wayNumber,
    Expression<String>? detail,
    Expression<int>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (wayType != null) 'way_type': wayType,
      if (wayNumber != null) 'way_number': wayNumber,
      if (detail != null) 'detail': detail,
      if (userId != null) 'user_id': userId,
    });
  }

  AddressEntityCompanion copyWith(
      {Value<int>? id,
      Value<String>? wayType,
      Value<String>? wayNumber,
      Value<String>? detail,
      Value<int>? userId}) {
    return AddressEntityCompanion(
      id: id ?? this.id,
      wayType: wayType ?? this.wayType,
      wayNumber: wayNumber ?? this.wayNumber,
      detail: detail ?? this.detail,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (wayType.present) {
      map['way_type'] = Variable<String>(wayType.value);
    }
    if (wayNumber.present) {
      map['way_number'] = Variable<String>(wayNumber.value);
    }
    if (detail.present) {
      map['detail'] = Variable<String>(detail.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressEntityCompanion(')
          ..write('id: $id, ')
          ..write('wayType: $wayType, ')
          ..write('wayNumber: $wayNumber, ')
          ..write('detail: $detail, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

abstract class _$DoubleVDriftDatabase extends GeneratedDatabase {
  _$DoubleVDriftDatabase(QueryExecutor e) : super(e);
  late final $UserEntityTable userEntity = $UserEntityTable(this);
  late final $AddressEntityTable addressEntity = $AddressEntityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [userEntity, addressEntity];
}
