*&---------------------------------------------------------------------*
*& Include          ZABAP24_SALARIO_TOP
*&---------------------------------------------------------------------*


DATA: v_salario_base TYPE p DECIMALS 2,
      v_horas_extras TYPE p DECIMALS 2,
      v_salario_total TYPE p DECIMALS 2,
      v_bonus TYPE p DECIMALS 2,
      v_salario_final TYPE p DECIMALS 2,
      v_desconto_impr TYPE p DECIMALS 2,
      v_cargo TYPE string.