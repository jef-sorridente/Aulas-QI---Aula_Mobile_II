import 'package:uuid/uuid.dart';
//Classe para trabalhar com objetos de Produtos

class Comentario {
  //Atributos da classe (iguais aos do banco de dados)
  String? _id;
  String? _nome;
  String? _email;
  String? _comentario;
  static Comentario? comentarioEditar; //Atributo usado na edição

  //Construtor
  Comentario(String nome, String email, String comentario){
    this._id = Uuid().v4();
    this._nome = nome;
    this._email = email;
    this._comentario = comentario;
  }

  //Construtor nomeado para edição de dados
  Comentario.editar(String id, String nome, String email, String comentario){
    this._id = id;
    this._nome = nome;
    this._email = email;
    this._comentario = comentario;
  }

  //Construtor nomeado que converte json para objeto
  Comentario.fromJson(Map<dynamic, dynamic> json)
      : _id = json['id'],
        _nome = json['produto'],
        _email = json['preco'],
        _comentario = json['comentario'];

  //Método que de um objeto do tipo Produto retorna um Map (json)
  Map<dynamic, dynamic> toJson() => {
    'id': _id,
    'nome': _nome,
    'email': _email,
    'comentario': _comentario,
  };

  //Getter e Setters da classe
  String get nome => nome;

  set nome(String value) {
    _nome = value;
  }

  String get email => email;

  set email(String value) {
    _email = value;
  }

  String get comentario => comentario;

  set comentario(String value) {
    _comentario = value;
  }

  String get id => id;

  set id(String value) {
    _id = value;
  }

  //Método toString sobrescrito para a saída (output) de dados.
  @override
  String toString() {
    return 'Id: $_id, Comentario: $_nome, Email: $_email, Comentario: $_comentario';
  }
}