Problema: Sistema de Processamento de Pedidos e Cálculo de Frete

Você deve criar um sistema que recebe os dados de pedidos de clientes, calcula o total do pedido, aplica descontos e calcula o valor do frete com base no tipo de entrega e no valor do pedido. O sistema exibirá o valor final do pedido, o desconto aplicado, o frete e o total final.
Regras:

    Entrada:
        O sistema deve receber os seguintes parâmetros:
            O valor total do pedido.
            O tipo de entrega (normal, expressa, ou urgente).
            O número de itens do pedido.

    Descontos:
        Se o número de itens do pedido for menor que 5, nenhum desconto é aplicado.
        Se o número de itens estiver entre 5 e 10, aplica-se um desconto de 5%.
        Se o número de itens for maior que 10, aplica-se um desconto de 10%.

    Frete:
        O frete é calculado com base no tipo de entrega:
            Normal: R$ 15,00. - Radiobutton
            Expressa: R$ 30,00.
            Urgente: R$ 50,00.
        Além disso, se o valor do pedido (após o desconto) for maior que R$ 500, o frete é grátis.

    Processamento:
        O sistema deve calcular o total do pedido após o desconto.
        O frete deve ser calculado com base nas regras acima.
        O valor final é a soma do valor do pedido após o desconto e o frete (se aplicável).

    Saída:
        O sistema deve exibir o valor do pedido com o desconto, o frete e o valor total final.