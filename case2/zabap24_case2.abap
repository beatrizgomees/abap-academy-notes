report zabap24_case2.


include: zabap24_case2_top,
         zabap24_case2_sel.


START-OF-SELECTION.

CASE p_qtditens.
    WHEN p_qtditens < 5.
    v_desconto = 0.

    WHEN p_qtditens >= 5 AND p_qtditens <= 10.
    v_desconto = p_valorpedido * 0.05.

    WHEN OTHERS.
    v_desconto = p_valorpedido * 0.10.

ENDCASE.


IF p_entreganormal = 'X'.
    v_frete = 15.00.

    ELSEIF p_entregaexpressa = 'X'.
    v_frete = 30.00.

    ELSEIF p_entregaurgente = 'X'.
        v_frete = 50.00

    ELSE.
        v_frete = 0.00

ENDIF.

v_totalDesconto = p_valorpedido - v_desconto.
v_total_compra = v_totalDesconto + v_entrega.

IF v_total_compra > 500.
    v_entrega = 0.00.
    WRITE 'Como sua compra foi mais do que R$ 500 reais, você ganhou frete gratis! '
ENDIF.


END-OF-SELECTION.

WRITE   / 'Valor do pedido com desconto: ', v_totalDesconto, 
       /  'Valor do frete: ', v_frete.
      /   'Valor total final: ', v_total_compra.
