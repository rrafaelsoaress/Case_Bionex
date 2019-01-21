#@1scenario
Quando("eu editar um produto") do
  itens = all('.hover-cursor')
  itens[0].click
  @editar_page.editar_medicamento('Bio', 'Teste', 'Teste Bio', 'R$3,98')
end

#@2scenario
Quando("selecionar um produto") do
    itens = all('.hover-cursor')
    itens[0].click
end

Então("clica em voltar para a tela de listagem") do
    @editar_page.btn_voltar.click
    cabecalho = all('tr th')
    expect(cabecalho[0].text).to eql 'Nome'
end