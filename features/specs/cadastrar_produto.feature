#language: pt
#utf-8
@2feature @evidencia
Funcionalidade: Cadastrar Produtos
    User Story 01

    Como hospital quero cadastrar Medicamentos e Materiais Médicos para futuras compras.
    
    Critérios de aceite:
    Devem existir os campos Código, nome, tipo, preço, Fabricante, Detalhes e status.
    Todos os campos são obrigatórios.
    O campo tipo deve aceitar apenas Medicamentos e Materiais Médicos.

        Contexto: Home
            Dado que eu esteja logado 
            E esteja na tela de cadastro

        @1scenario 
        Cenario: Validar campos
            Então todos os campos devem ser apresentados

        @2scenario
        Cenario: Cadastrar Medicamentos
            Quando incluir os dados corretos para Medicamentos
            Então o cadastro deve ser feito

        @3scenario
        Cenario: Cadastrar Materiais Médicos
            Quando incluir os dados corretos para Materiais Médicos
            Então o cadastro deve ser feito

        #Neste cenario foi encontrado BUG na mensagem de erro
        @4scenario
        Cenario: Cadastrar sem preencher nenhuma informação
            Quando clicar no botão de cadastro
            Então o cadastro não é feito

        @5scenario
        Cenario: Cadastrar sem Nome
            Quando incluir os dados sem o Nome
            Então deve apresentar a mensagem "Nome é um campo obrigatório"

        @6scenario
        Cenario: Cadastrar sem Código
            Quando incluir os dados sem o Código
            Então deve apresentar a mensagem "Código é um campo obrigatório"

        #Neste cenario foi encontrado BUG na mensagem de erro
        @7scenario
        Cenario: Cadastrar sem Fabricante
            Quando incluir os dados sem Fabricante
            Então deve apresentar a mensagem "Fabricante é um campo obrigatório"

        #Neste cenario foi encontrado BUG, pois foi possivel cadastrar sem Descrição
        @8scenario
        Cenario: Cadastrar sem Descrição
            Quando incluir os dados sem Descrição
            Então deve apresentar a mensagem "Descrição é um campo obrigatório"

        @9scenario
        Cenario: Cadastrar sem Preço
            Quando incluir os dados sem Preço
            Então deve apresentar a mensagem "Preço é um campo obrigatório"

        #Neste cenario foi apresentado BUG, a palavra Materiais está escrita errada
        @10scenario
        Cenario: Validando Campo Tipo
            Quando clicar no campo Tipo
            Então deve ser apresentado apenas "Medicamento" e "Materiais Médicos"
