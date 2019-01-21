Before do
    @login_page = LoginPage.new
    @home_page = HomePage.new
    @cadastro_page = CadastroPage.new
    @editar_page = EditarPage.new
end

After('@evidencia') do |scenario|
    if scenario.failed?
        nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
        nome_cenario = nome_cenario.gsub(' ', '-').downcase!            
        screenshot = "log/screenshot/falha/#{nome_cenario}.png"
        page.save_screenshot(screenshot)
        embed(screenshot, 'image/png', 'Evidencia')
    else
        nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
        nome_cenario = nome_cenario.gsub(' ', '-').downcase!            
        screenshot = "log/screenshot/sucesso/#{nome_cenario}.png"
        page.save_screenshot(screenshot)
        embed(screenshot, 'image/png', 'Evidencia')
    end
end