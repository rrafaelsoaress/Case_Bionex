#language: pt
#utf-8
@3feature @evidencia
Funcionalidade: Listar Produtos
    User Story 02

    Como hospital quero listar todos os produtos cadastrados

    Critérios de aceite:
    A listagem deve ser ordenada pelo campo nome.
    A listagem deve ser paginada pelo total de 10 resultados.
    As informações da listagem deve ser: Nome, Tipo, Fabricante e Status.

        Contexto: Tela de Listagem
            Dado que eu esteja logado
            E esteja na tela de listagem

        @1scenario
        Cenario: Validar ordenação
            Então a ordenação deve ser feita pelo Nome

        @2scenario
        Cenario: Validar lista
            Então deve apresentar apenas 10 itens