void main() {
  // O '?' em String permite que eu lance um item como nulo
  Map<int, String?> ddds = {
    11: 'São Paulo',
    19: 'Campinas',
    55: null,
    58: null,
    // No map não se pode ter duas chaves repetidas mas podem ter dois valores repetidos
    56: 'Campinas'
  };

  // Atribuindo uma variável nullable à um item do Map
  String? cidade = ddds[11];
  print("Item procurado: $cidade");

  // Adicionando itens no MAP
  // [key] = 'String'
  ddds[61] = 'Brasilia';
  print("Item adicionado $ddds");

  // Removendo itens
  // map.remover(key)
  ddds.remove(55);
  print("Lista com item removido $ddds\n");

  // Printando somente os valores
  var onlyValues = ddds.values;
  print("Somente com valores: $onlyValues");

  // Printando somente chaves
  var onlyKeys = ddds.keys;
  print("Somente chaves: $onlyKeys\n");

  // Verificando se existe uma chave específica
  var keyToSearch = ddds.containsKey(11);
  print("Tem chave procurada? $keyToSearch");

  // Verificando se existe um valor específico
  var valueToSearch = ddds.containsValue("São Luís");
  print("Tem valor procurado? $valueToSearch\n");

  // A lista não é vazia?
  var emptyList = ddds.isNotEmpty;
  print("Lista > 0 ? $emptyList");

  // Limpando a lista
  ddds.clear();
  print("Lista vazia: $ddds");

  // Adicionando vários itens
  ddds.addAll({
    12: "Cidade de teste",
    19: "Cidade de teste2",
    90: "Cidade real",
    91: "Cidade muito real"
  });

  print("Lista com novos itens: $ddds\n");

  print("---------- FUNÇÕES ----------\n");
  //Utilizando forEach
  print("ForEach");
  ddds.forEach((key, value) {
    print("Key: $key | Value: $value");
  });
  print("\n");

  // Removendo itens a partir de condições
  ddds.removeWhere((key, value) => key > 20);
  print("RemoveWhere\nCidades com chave < 20: $ddds\n");
}
