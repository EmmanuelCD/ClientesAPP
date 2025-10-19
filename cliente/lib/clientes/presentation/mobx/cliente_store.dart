import 'package:cliente/clientes/data/models/clientes_models.dart';
import 'package:cliente/clientes/data/services/clientes_service.dart';
import 'package:mobx/mobx.dart';

part 'cliente_store.g.dart';

class ClienteStore = _ClienteStore with _$ClienteStore;

abstract class _ClienteStore with Store {
  final ClienteService _service = ClienteService();

  @observable
  ObservableList<Clientes> listadoClientes = ObservableList<Clientes>();

  @action
  Future<void> cargarClientes() async {
    final clientesConvertidos = await _service.fetchUsers(); // List<Clientes>
    listadoClientes.clear();
    listadoClientes.addAll(clientesConvertidos);
  }
}
