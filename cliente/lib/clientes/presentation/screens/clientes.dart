import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../presentation/mobx/cliente_store.dart';

final clienteStore = ClienteStore(); // instancia global

class Clientes extends StatefulWidget {
  const Clientes({super.key});

  @override
  State<Clientes> createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  @override
  void initState() {
    super.initState();
    clienteStore.cargarClientes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clientes')),
      body: listadoClientes(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción al presionar el botón
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

Widget listadoClientes() {
  return Observer(
    builder: (_) {
      final clientes = clienteStore.listadoClientes;
      if (clientes.isEmpty) {
        return const Center(child: Text('No hay clientes disponibles'));
      }
      return ListView.builder(
        itemCount: clientes.length,
        itemBuilder: (context, index) {
          final cliente = clientes[index];
          return ListTile(
            title: Text(cliente.name),
            subtitle: Text(cliente.email),
          );
        },
      );
    },
  );
}
