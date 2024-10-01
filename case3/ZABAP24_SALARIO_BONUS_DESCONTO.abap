*&---------------------------------------------------------------------*
*& Report ZABAP24_SALARIO_BONUS_DESCONTO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABAP24_SALARIO_BONUS_DESCONTO.


INCLUDE:ZABAP24_SALARIO_TOP,
        ZABAP24_SALARIO_SEL.


START-OF-SELECTION.


*Cálculo das horas extras de acordo com o cargo.
CASE 'X'.
  WHEN p_anlt.
    v_salario_base = 8000.
    v_horas_extras = p_hr * 80.


  WHEN p_grt.
    v_salario_base = 15000.
    v_horas_extras = p_hr * 100.


  WHEN p_dev.
    v_salario_base = 6000.
    v_horas_extras = p_hr * 60.

  WHEN p_est.
    v_salario_base = 2000.
    v_horas_extras = p_hr * 20.

  WHEN OTHERS.
    WRITE 'Nenhuma opção selecionada'.
    v_salario_base = 0.

ENDCASE.

v_salario_total = v_salario_base + v_horas_extras.


*Cálculo do imposto de renda.
IF v_salario_total <= 3000.
  v_desconto_impr = 0.

  ELSEIF v_salario_total >= 3001 AND v_salario_total <= 6000.
  v_desconto_impr = v_salario_total * ( 8 / 100 ).

  ELSEIF v_salario_total >= 6001 AND v_salario_total <= 10000.
    v_desconto_impr = v_salario_total * ( 15 / 100 ).

  ELSE.
    v_desconto_impr = v_salario_total * ( 27 / 100 ).


ENDIF.


*Cálculo do bônus.
IF v_salario_total <= 5000.
   v_bonus = v_salario_total * ( 5 / 100 ).

   ELSEIF v_salario_total >= 5001 AND v_salario_total <= 10000.
     v_bonus = v_salario_total * ( 3 / 100 ).

   ELSE.
     v_bonus = v_salario_total * ( 1 / 100 ).

ENDIF.

v_salario_final = v_salario_total - v_desconto_impr + v_bonus.





" Exibir o resultado
 WRITE: / 'Cargo: ', v_cargo,
        / 'Salário Base: R$', v_salario_base,
        / 'Horas Extras Trabalhadas: ', p_hr,
        / 'Salário Total (com horas extras): R$', v_salario_total,
        / 'Bônus Aplicado: R$', v_bonus,
        / 'Desconto de Imposto de Renda: R$', v_desconto_impr,
        / 'Salário Final: R$', v_salario_final.


END-OF-SELECTION.