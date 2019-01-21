#language: pt
#utf-8
@login @evidencia
Funcionalidade: Efetuar login

    Cenario: Efetuar login corretamente
        Dado que eu acesse o sistema
        Quando faço login
        Então sou direcionado para a home do site com a mensagem "Autenticado com sucesso."