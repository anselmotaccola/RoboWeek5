* Settings *
Documentation     Açoes de fncionalidade de busca de restaurantes

* variables *
${DIV_BOX_RESTAURANT}       css=div[class= "place-info-box"][style="opacity: 1;"]

* Keywords *
Go to restaurantes
    Click         text=Estou com fome!
    Get Text      css=h1 strong   contains    Ta na hora de matar a fome!

Search By
    [Arguments]     ${value}

    Click         css=.search-link
    Fill text     css=input[formcontrolname="searchControl"]    ${value}

Restaurant Shold Be visible 
    [Arguments]     ${name}

    Wait For Elements State   ${DIV_BOX_RESTAURANT}   visible     12
    Get Text                  ${DIV_BOX_RESTAURANT}   contains    ${name}

Restaurant Count Shold Be
    [Arguments]     ${qtd}

    Wait For Elements State       ${DIV_BOX_RESTAURANT}    visible     12
    Get Element Count             ${DIV_BOX_RESTAURANT}    equal       ${qtd}