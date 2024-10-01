*&---------------------------------------------------------------------*
*& Report ZABAP24_TARIFAS_TRANSPORTE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABAP24_TARIFAS_TRANSPORTE.

INCLUDE: ZABAP24_TARIFAS_TRANSPORTE_TOP,
         ZABAP24_TARIFAS_TRANSPORTE_SEL.



START-OF-SELECTION.

CASE 'X'.
  WHEN p_eco.
    v_custo_fixo = 5.
    v_custo_variavel = '0.50'.
    v_tipo_entrega = 'Econômica'.

  WHEN p_pad.
     v_custo_fixo = 10.
     v_custo_variavel = '0.80'.
     v_tipo_entrega = 'Padrão'.

  WHEN p_exp.
     v_custo_fixo =  20.
     v_custo_variavel = '1.50'.
     v_tipo_entrega = 'Expresso'.

  WHEN OTHERS.
    WRITE 'SELECIONE UM TIPO DE ENTREGA VÁLIDO'.


ENDCASE.

IF p_dst <= 0.
  WRITE /'A DISTÂNCIA DEVE SER MAIOR QUE 0'.

ENDIF.

v_total_entrega = v_custo_fixo + ( v_custo_variavel * p_dst ).

IF p_dst > 100.
  v_desconto = v_total_entrega * ( 10 / 100 ).

  ELSEIF p_dst >= 50 AND p_dst <= 100.
    v_desconto = v_total_entrega * ( 5 / 100 ).
ENDIF.

v_valor_entrega_final = v_total_entrega - v_desconto.


WRITE: /'Valor da entrega: ', v_valor_entrega_final.


END-OF-SELECTION.