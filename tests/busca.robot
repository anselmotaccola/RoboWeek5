* Settings *

Resource      ${EXECDIR}/resources/base.robot

Test Setup          Start Session
Test Teardown       Take Screenshot

* Test Cases *
Deve buscar um unico restaurante
    Go to restaurantes
    Search By                       Debuger
    Restaurant Shold Be visible     DEBUGER KING
    Restaurant Count Shold Be       1

Deve buscar por categoria
    Go to restaurantes
    Search By                        cafe
    Restaurant Shold Be visible      STARBUGS COFFEE

Deve buscar todos os restaurantes
    Go to restaurantes
    Search By       a
    Restaurant Count Shold Be       5