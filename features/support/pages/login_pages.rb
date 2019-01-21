class LoginPage < SitePrism::Page
    set_url "#{$sites}/users/sign_in"
    element :formulario, '.new_user'
    element :campo_email, '#user_email'
    element :campo_senha, '#user_password'
    element :btn_entrar, '#sign_in'
    
    def logar
        campo_email.set "rsoares.ads@gmail.com"
        campo_senha.set "Bionexo2019"
        btn_entrar.click
    end
end