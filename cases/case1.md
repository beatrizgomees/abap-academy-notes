Aqui está um exemplo de um exercício com uma estrutura CASE complexa em ABAP, utilizando as declarações e comandos que você mencionou: WRITE, variáveis, operações aritméticas, IF, ELSEIF, ELSE, CASE, WHEN, etc. Vou descrever o problema de forma detalhada para você implementá-lo no código ABAP:

# Exercício: Sistema de Cálculo de Descontos e Bonificações com Base no Valor de Compras
## Descrição do Problema:

#### Você deve criar um programa ABAP que calcule o valor final de uma compra, considerando descontos progressivos e bonificações com base no valor total gasto. O sistema deve receber o valor da compra, verificar em qual faixa de descontos a compra se encaixa, e aplicar as regras apropriadas.

##### Regras do Desconto:
- Se o valor for menor que R$ 100, não será aplicado nenhum desconto.
- Se o valor estiver entre R$ 100 e R$ 500, um desconto de 5% será aplicado.
- Se o valor estiver entre R$ 500 e R$ 1000, um desconto de 10% será aplicado.
- Se o valor for acima de R$ 1000, um desconto de 15% será aplicado.
#### Bonificações:
- Se o valor da compra, após o desconto, for menor que R$ 200, o cliente recebe um brinde.
- Se o valor estiver entre R$ 200 e R$ 800, o cliente recebe um cupom de desconto para a próxima compra.
- Se o valor for acima de R$ 800, o cliente ganha pontos de fidelidade.
#### Detalhes:
- Receba o valor da compra como entrada.
- Verifique a faixa de desconto aplicável usando a estrutura CASE.
- Após aplicar o desconto, use uma estrutura IF, ELSEIF, ELSE para determinar a bonificação.
- Mostre o valor final da compra e a bonificação através do comando WRITE.

##### Estrutura do Exercício
- Entrada: Valor da compra.
#### Processamento:
-> Calcular o desconto com base no valor da compra usando CASE.
-> Calcular o valor final após o desconto.
-> Determinar a bonificação usando IF, ELSEIF, ELSE.
- Saída: Valor final da compra e a bonificação.
- Passos Detalhados:
- Entrada:

#### Declarar uma variável para armazenar o valor da compra, o desconto, o valor final, e a bonificação.
- Processamento:
***
Usar CASE para calcular o desconto aplicável:
- Caso 1: Valor < 100 → sem desconto.
- Caso 2: 100 ≤ Valor ≤ 500 → 5% de desconto.
- Caso 3: 500 < Valor ≤ 1000 → 10% de desconto.
- Caso 4: Valor > 1000 → 15% de desconto.
- Calcular o valor final após o desconto.
- Usar IF, ELSEIF, ELSE para aplicar a bonificação:
- Valor final < 200 → brinde.
- Valor final entre 200 e 800 → cupom de desconto.
- Valor final > 800 → pontos de fidelidade.
***
## Saída: Mostrar o valor final da compra e a bonificação.
