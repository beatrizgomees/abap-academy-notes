*&---------------------------------------------------------------------*
*& Include          ZABAP24_SALARIO_SEL
*&-------------------------------------------------------------------



SELECTION-SCREEN BEGIN OF BLOCK cargo WITH FRAME TITLE TEXT-001.
PARAMETERS: p_grt RADIOBUTTON GROUP g1,
            p_anlt RADIOBUTTON GROUP g1,
            p_dev RADIOBUTTON GROUP g1,
            p_est RADIOBUTTON GROUP g1.
SELECTION-SCREEN END OF BLOCK cargo.


SELECTION-SCREEN BEGIN OF BLOCK hextras WITH FRAME TITLE TEXT-002.
PARAMETERS p_hr TYPE p.
SELECTION-SCREEN END OF BLOCK hextras.