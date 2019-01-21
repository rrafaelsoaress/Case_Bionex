#language: pt
#utf-8
@4feature @evidencia
Funcionalidade: Editar Produto
    User Story 01
    Como hospital quero editar os produtos previamente cadastrados

    Critérios de aceite:
    Devo acessar o produto pela listagem
    Todos os campos devem poder ser editados
    Após editar deve aparecer uma mensagem de sucesso
    Deve conter um link de volta a listagem

        Contexto: Tela de Listagem
            Dado que eu esteja logado
            E esteja na tela de listagem

        
        @1scenario
        Cenario: Editar um produto
            Quando eu editar um produto
            Então deve apresentar a mensagem "Produto atualizado com sucesso."

        @2scenario
        Cenario: Voltar para a listagem
            Quando selecionar um produto
            Então clica em voltar para a tela de listagem
