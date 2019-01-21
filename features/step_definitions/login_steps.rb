Dado("que eu acesse o sistema") do
    @login_page.load
    @login_page.wait_for_formulario
end
  
Quando("faço login") do
    @login_page.logar
end
  
# Então("sou direcionado para a home do site") do
#     # sucesso = assert_text("Autenticado com sucesso.")
#     # expect(sucesso).to eql sucesso    
# end

Então("sou direcionado para a home do site com a mensagem {string}") do |sucesso|
    expect(sucesso).to have_content sucesso
end