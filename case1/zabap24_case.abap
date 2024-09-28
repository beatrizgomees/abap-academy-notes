report zabap24_case.

include zabap24_case_top,
        zabap24_case_sel.

START-OF-SELECTION.
CASE p_valorcompra.
    WHEN p_valorcompra < 100.00.
         v_desconto = 0.

    WHEN p_valorcompra <= 100.00 AND p_valorcompra <= 500.00.
         v_desconto = p_valorcompra * 0.05.

    WHEN p_valorcompra < 500.00 AND p_valorcompra <= 1000.00.
         v_desconto = p_valorcompra * 0.10.   

    WHEN OTHERS.
    p_valorcompra > 1000.00.
    v_desconto = p_valorcompra * 0.15.

ENDCASE.


v_resultado = p_valorcompra - v_desconto.

IF v_resultado < 200.
    v_bonificacao = 'Você ganhou um brinde'.

    ELSEIF v_resultado >= 200 AND v_resultado <= 800.
        v_bonificacao = 'Você ganhou um cupom de desconto'.
        
    ELSE.
        v_bonificacao = 'Você ganhou pontos de fidelidade'.
ENDIF.

END-OF-SELECTION.


WRITE: / 'Valor final da compra: ', v_resultado, 
      / 'Desconto aplicado: ', v_desconto,
     /  'Bonificação: ', v_bonificacao.