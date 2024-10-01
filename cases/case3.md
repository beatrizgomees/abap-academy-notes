Problema: Sistema de Cálculo de Salário com Bônus e Descontos
Objetivo:
Você deve desenvolver um programa em ABAP que calcula o salário final de funcionários com base em várias condições, como:

Cargo do funcionário (usando uma estrutura CASE para definir salários básicos diferentes).
Horas extras realizadas.
Bônus aplicado com base na faixa salarial.
Descontos aplicados com base em diferentes faixas de imposto de renda.
Regras:
O usuário deve inserir o cargo do funcionário e as horas extras trabalhadas.
O salário base será definido pelo cargo do funcionário:
Gerente: R$ 15.000
Analista: R$ 8.000
Desenvolvedor: R$ 6.000
Estagiário: R$ 2.000
As horas extras são pagas da seguinte forma:
Valor por hora extra para Gerente: R$ 100
Valor por hora extra para Analista: R$ 80
Valor por hora extra para Desenvolvedor: R$ 60
Valor por hora extra para Estagiário: R$ 20
Aplicar bônus baseado no salário total:
Salário até R$ 5.000: bônus de 5%
Salário entre R$ 5.001 e R$ 10.000: bônus de 3%
Salário acima de R$ 10.000: bônus de 1%
Aplicar desconto de imposto de renda com base no salário final (antes do bônus):
Salário até R$ 3.000: Isento
Salário entre R$ 3.001 e R$ 6.000: 8% de desconto
Salário entre R$ 6.001 e R$ 10.000: 15% de desconto
Salário acima de R$ 10.000: 27% de desconto