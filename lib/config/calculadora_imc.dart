import 'package:calculadora_imc/config/console.dart'; // Importe a biblioteca necessária para a entrada do usuário

void execute() {
  print("Bem vindo a calculadora de IMC");
  String nome = consoleUtils.lerStringComText("Digite o nome da pessoa:");
  double altura = alturaValida(); // Chame a função para obter a altura
  double peso = pesoValido(); // Chame a função para obter o peso

  if (altura <= 0 || peso <= 0) {
    print("A altura e o peso devem ser maiores que zero");
    return;
  }

  double calcularImc = peso / (altura * altura);
  String calcularIMC = calcularImc.toStringAsFixed(2);
  print("O IMC de $nome é $calcularIMC");

  if (calcularImc >= 18.5 && calcularImc <= 25) {
    // Corrija a condição IMC saudável
    print("O seu IMC é considerado saudável");
  } else if (calcularImc < 18.5) {
    // Corrija a condição IMC abaixo do saudável
    print("O seu IMC é considerado abaixo do considerado saudável");
  } else {
    print("O seu IMC está acima do considerado saudável");
  }
}

double alturaValida() {
  double altura = -1;
  do {
    String alturaString =
        consoleUtils.lerStringComText("Digite a altura da pessoa:");

    try {
      altura = double.parse(alturaString);

      if (altura <= 0) {
        print("A altura deve ser maior que zero.");
      }
    } catch (e) {
      print("Por favor, insira um valor numérico para a altura.");
    }
  } while (altura <= 0);

  return double.parse(altura.toStringAsFixed(2));
}

double pesoValido() {
  double peso = -1;

  do {
    String pesoString =
        consoleUtils.lerStringComText("Digite o peso da pessoa");

    try {
      peso = double.parse(pesoString);
      if (peso <= 0) {
        print("O peso deve ser maior que zero.");
      }
    } catch (e) {
      print("Por favor, insira um valor numérico para o peso.");
    }
  } while (peso <= 0);

  return peso;
}
