*&---------------------------------------------------------------------*
*& Include          ZABAP24_TARIFAS_TRANSPORTE_SEL
*&---------------------------------------------------------------------*

SELECTION-SCREEN BEGIN OF BLOCK transporte WITH FRAME TITLE text-001.
PARAMETERS: p_eco RADIOBUTTON GROUP g1,
            p_pad RADIOBUTTON GROUP g1,
            p_exp RADIOBUTTON GROUP g1.
SELECTION-SCREEN END OF BLOCK transporte.



SELECTION-SCREEN BEGIN OF BLOCK distancia WITH FRAME TITLE text-002.
PARAMETERS p_dst TYPE p DECIMALS 2.
SELECTION-SCREEN END OF BLOCK distancia.