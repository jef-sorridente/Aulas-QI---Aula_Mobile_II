import 'package:firebase_db_web_unofficial/firebasedbwebunofficial.dart';
import 'package:firebase/firebase.dart';
import 'package:projeto_final_sushi/ComentariosClass.dart';
import 'FirebaseCustom.dart';

class FirebaseDB {
  //Criando um singleton da classe (usar a mesma instância para várias operações)
  static FirebaseDB firebaseDbInstance = FirebaseDB();
  //Codigo para o atributo estatico "firebaseDbInstance"
  static int cod = 0;
  //Nó (child) onde colocaremos nosso cadastros
  String path = "comentarios";

//Inserir dados
  void setValue(String nome, String email, String comentario) {
    //Inserindo o valor recebido no parâmetro "produto"
    //dentro do child "produtos" (definido no atributo "path" desta classe)
    FirebaseDatabaseWeb.instance.reference()
        .child(path).child(cod.toString()).child("nome").set(nome);

    //Inserindo o valor recebido no parâmetro "preco"
    //dentro do child "produtos" (definido no atributo "path" desta classe)
    FirebaseDatabaseWeb.instance.reference()
        .child(path).child(cod.toString()).child("email").set(email);

    //Inserindo o valor recebido no parâmetro "qtde"
    //dentro do child "produtos" (definido no atributo "path" desta classe)
    FirebaseDatabaseWeb.instance.reference()
        .child(path).child(cod.toString()).child("comentario").set(comentario);

    cod++; //Incrementando o código do produto
  }
  //Pegar dados (ler)
  Future<List> getValueObject() async {
    //Capturado a referência (nó) principal
    //(neste caso, o nó "produtos", definido na variável "path")
    DatabaseReference dataRef = Fire.database.ref(path);
    //"data" recebe uma lista com todos os sub-nós de produtos.
    //getList é um método que está no arquivo FirebaseCustom.dart
    List data = await getList(dataRef);
    //Laço de repetição para ler todos os dados da lista "data"
    for(int i=0; i<data.length; i++) {
      //dadoAtual (DataSnapshot) receberá o valor
      //de "data" no índice correspondente
      DataSnapshot dadoAtual = data[i];
      //Convertendo dadoAtual para json, e depois para objeto Produto
      //Comentario coment = Comentario.fromJson(dadoAtual.toJson());
      //print(coment);
    }
    return data;
  }
}