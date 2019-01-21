Dado("que eu esteja logado") do
    @login_page.load
    @login_page.wait_for_formulario
    @login_page.logar
end

Dado("esteja na tela de cadastro") do
    @home_page.clicar_produto
end

#@1scenario
Então("todos os campos devem ser apresentados") do
    campos = all('label')
    expect(campos[0].text).to eql "Nome"
    expect(campos[1].text).to eql "Código"
    expect(campos[2].text).to eql "Fabricante"
    expect(campos[3].text).to eql "Descrição"
    expect(campos[4].text).to eql "Preço"
    expect(campos[5].text).to eql "Tipo"
    expect(campos[6].text).to eql "Status"
end

#@2scenario
Quando("incluir os dados corretos para Medicamentos") do
    @cadastro_page.cadastrar_medicamento('Bio', 'Teste', 'Teste Bio', 'R$3,98')
end

Então("o cadastro deve ser feito") do
    assert_text('Produto criado com sucesso.')
end

#@3scenario
Quando("incluir os dados corretos para Materiais Médicos") do
    @cadastro_page.cadastrar_materiais('Bio', 'Teste', 'Teste Bio', 'R$3,98')
end
  
#@4scenario
Quando("clicar no botão de cadastro") do
    @cadastro_page.btn_cadastrar.click
end

Então("o cadastro não é feito") do    
    alertas = all('.help-block')
    expect(alertas[0].text).to eql "Nome é um campo obrigatório"
    expect(alertas[1].text).to eql "Código é um campo obrigatório"
    expect(alertas[2].text).to eql "Fabricante é um campo obrigatório"
    expect(alertas[3].text).to eql "Descrição é um campo obrigatório"
    expect(alertas[4].text).to eql "Preço é um campo obrigatório"
end

#@5scenario
Quando("incluir os dados sem o Nome") do
    @cadastro_page.sem_nome
end
  
Então("deve apresentar a mensagem {string}") do |mensagem|
    expect(page).to have_content mensagem 
end

#@6scenario
Quando("incluir os dados sem o Código") do
    @cadastro_page.sem_codigo
end

#@7scenario
Quando("incluir os dados sem Fabricante") do
    @cadastro_page.sem_fabricante
end

#@8scenario
Quando("incluir os dados sem Descrição") do
    @cadastro_page.sem_descricao
end

#@9scenario
Quando("incluir os dados sem Preço") do
    @cadastro_page.sem_preco
end

#10scenario
Quando("clicar no campo Tipo") do
    @cadastro_page.tipo.click
end

Então("deve ser apresentado apenas {string} e {string}") do |medicamento, materiais|
    valores = all('option')
    expect(valores[0].text).to eql medicamento
    expect(valores[1].text).to eql materiais
end