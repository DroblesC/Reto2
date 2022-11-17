import 'package:get/get.dart';
import 'package:reto2/clases/productos.dart';

class controladorGeneral extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;
  @override
  void onInit() {
    pro.add(productos(
        1,
        "Tennis Polo",
        "https://http2.mlstatic.com/D_NQ_NP_807120-MCO47345720130_092021-W.jpg",
        0,
        140000));
    pro.add(productos(
        2,
        "Tennis Tallenzi",
        "https://exitocol.vtexassets.com/arquivos/ids/14024254-800-auto?v=637951356737200000&width=800&height=auto&aspect=true",
        0,
        250000));
    pro.add(productos(
        3,
        "Tennis Adidas",
        "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/9cc901ddcb3b4447a87dad75010cf779_9366/Tenis_Duramo_SL_2.0_Negro_GX0709_01_standard.jpg",
        0,
        24500));
    pro.add(productos(
        4,
        "Tennis Tommy",
        "https://tommycolombia.vteximg.com.br/arquivos/ids/262387-500-667/EN0EN01723_YBR_2.jpg?v=638004071491570000",
        0,
        360000));
    pro.add(productos(
        5,
        "Sketcher",
        "https://http2.mlstatic.com/D_NQ_NP_986079-MCO49655220144_042022-O.webp",
        0,
        173000));

    // TODO: implement onInit
    super.onInit();
  }

  void cambiarposicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor) {
    print(
        "posicion = " + posicion.toString() + " | valor = " + valor.toString());
    pro[posicion].cantidad = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;
    }

    return total;
  }

  void limpiartodo() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}
