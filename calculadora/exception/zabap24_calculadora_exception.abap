*&---------------------------------------------------------------------*
*& Report ZABAP24_OP_MATH
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZABAP24_OP_MATH.

INCLUDE: zabap24_mate_top,
         zabap24_mate_sel,
         zabap24_mate_form.

START-OF-SELECTION.

*
*IF  p_adic = 'X'.
*
*  v_resultado = p_op1 + p_op2.
*
*  ELSEIF p_sub eq 'X'.
*
*    v_resultado = p_op1 - p_op2.
*
*  ELSEIF p_mult eq 'X'.
*
*    v_resultado = p_op1 * p_op2.
*
*  ELSE.
*    IF p_op1 eq 0 or p_op2 eq 0.
*      WRITE 'Operador não permitido'.
*    ELSE.
*      v_resultado = p_op1 / p_op2.
*    ENDIF.
*
*ENDIF.


CASE 'X'.

  WHEN p_adic.

   PERFORM addit USING p_op1
                       p_op2.

  WHEN p_sub.

   PERFORM sub USING p_op1
                     p_op2.

  WHEN p_mult.

    PERFORM mult USING p_op1
                       p_op2.

  WHEN OTHERS.

  PERFORM div USING p_op1 p_op2. "Exception


ENDCASE.


END-OF-SELECTION.

WRITE v_resultado.