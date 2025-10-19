// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClienteStore on _ClienteStore, Store {
  late final _$listadoClientesAtom = Atom(
    name: '_ClienteStore.listadoClientes',
    context: context,
  );

  @override
  ObservableList<Clientes> get listadoClientes {
    _$listadoClientesAtom.reportRead();
    return super.listadoClientes;
  }

  @override
  set listadoClientes(ObservableList<Clientes> value) {
    _$listadoClientesAtom.reportWrite(value, super.listadoClientes, () {
      super.listadoClientes = value;
    });
  }

  late final _$cargarClientesAsyncAction = AsyncAction(
    '_ClienteStore.cargarClientes',
    context: context,
  );

  @override
  Future<void> cargarClientes() {
    return _$cargarClientesAsyncAction.run(() => super.cargarClientes());
  }

  @override
  String toString() {
    return '''
listadoClientes: ${listadoClientes}
    ''';
  }
}
