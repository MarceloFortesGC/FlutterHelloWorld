// Para ler JSON é necessário essa importação
import "dart:convert";

void main() {
  // Decodificando Json
  Map<String, dynamic> data = json.decode(userData());

  // Printando a lista inteira
  print("Lista inteira: $data\n");

  // item específico da lista
  var nome = data['nome'];
  var sobrenome = data['sobrenome'];
  var nomeCompleto = nome + " " + sobrenome;
  print("Nome Completo: $nomeCompleto\n");

  // item dentro de item
  var enderecoRua = data['endereco']['rua'];
  print("Rua: $enderecoRua\n");

  // desestruturando listas
  var primeiraHabilidade = data['habilidades'][0]['nome'];
  print("Nome da Primeira Habilidade: $primeiraHabilidade\n");
}

String userData() {
  return """
  {
    "nome": "Marcelo",
    "sobrenome": "Fortes",
    "idade": 22,
    "endereco": {
      "rua": "Rua verdadeira",
      "numero": 14
      },
    "habilidades": [
      {
        "nome": "Flutter",
        "dias": 12
      },
      {
        "nome": "Angular",
        "dias": 316
      }
    ]
  }
  """;
}
