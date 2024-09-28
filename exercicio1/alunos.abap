report alunos.

include abap24_alunos_top,
        abap24_alunos_sel.

resultado = (nota1 + nota2 + nota3 + nota4) / 4

IF resultado < 5.
    WRITE 'Aluno Reprovado. Sua média é: ', resultado.

    ELSEIF resultado >= 7.
        WRITE: 'Aluno aprovado. Sua média é:', resultado.
    
    ELSEIF resultado >= 5 OR > 7.
        WRITE: 'Aluno em recuperação. Sua média é: ', resultado.    

    ELSE.
        WRITE 'Notas inválidas. Não foi possível o cálculo'

ENDIF.

