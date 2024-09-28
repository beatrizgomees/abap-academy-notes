REPORT ZABAP24_ENDERECO.

INCLUDE: zabap24_endereco_top,
         zabap24_endereco_sel.




FORM meu_cabecalho.
WRITE: /, |PROGRAMA DE INFORMAÇÃO DE DADOS PESSOAIS E ENDREÇO:{ p_nome }|, /.
ENDFORM.




FORM meu_endereco.

CONCATENATE p_rua
            p_numero
            p_bairro
            p_cidade
            p_estado
            p_cep p_compl INTO v_endereco_completo SEPARATED BY SPACE.

WRITE: /, 'DADOS PESSOAIS', /.
WRITE:    'NOME COMPLETO: ', p_nome, /
          'IDADE: '        , p_idade, /.
WRITE:/,  'ENDREÇO:', v_endereco_completo, /.


ENDFORM.

START-OF-SELECTION.

PERFORM meu_cabecalho.
PERFORM meu_endereco.

END-OF-SELECTION.