Dado("esteja na tela de listagem") do
    @home_page.clicar_listar
end

#@1scenario
Então("a ordenação deve ser feita pelo Nome") do
    cabecalho = all('tr th')
    expect(cabecalho[0].text).to eql 'Nome'
end


Então("deve apresentar apenas {int} itens") do |quantidade|
    itens = all('.hover-cursor')
    expect(itens.size).to eql quantidade
end