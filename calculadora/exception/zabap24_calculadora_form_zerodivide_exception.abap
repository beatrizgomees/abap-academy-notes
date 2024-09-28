FORM div  USING  p_p_op1
                   p_p_op2.

   TRY.

    v_resultado = p_p_op1 / p_p_op2.

    CATCH CX_SY_ZERODIVIDE.
      WRITE 'Divisão por zero não permitido'.

    ENDTRY.


ENDFORM.