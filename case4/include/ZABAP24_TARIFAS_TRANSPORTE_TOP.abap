*&---------------------------------------------------------------------*
*& Include          ZABAP24_TARIFAS_TRANSPORTE_TOP
*&---------------------------------------------------------------------*


DATA: v_custo_fixo TYPE p DECIMALS 2,
      v_custo_variavel TYPE p DECIMALS 2,
      v_tipo_entrega TYPE string,
      v_total_entrega TYPE p DECIMALS 2,
      v_desconto TYPE p DECIMALS 2,
      v_valor_entrega_final TYPE p DECIMALS 2.