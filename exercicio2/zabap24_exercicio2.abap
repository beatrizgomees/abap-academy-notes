report zabap24_exercicio2.

include zabap24_exercicio2_top,
        zabap24_exercicio2_sel.


IF numero MOD 2 = 0.
    resultado = 'PAR'.
    ELSEIF numero MOD 2 <> 0.
        resultado = 'IMPAR'.
    ELSE.
        resultado = 'Inderminado'.
ENDIF.


WRITE resultado.