class HomePage < SitePrism::Page
    element :navbar, '.collapse.navbar-collapse'
    element :produto, :xpath, '/html/body/nav/div[2]/ul[1]/li[1]/a/span[1]'
    element :listar_produto, '[href="/products"]'
    element :novo_produto, '[href="/products/new"]'
    
    def clicar_produto
        wait_for_navbar
        produto.click
        novo_produto.click
    end

    def clicar_listar
        wait_for_navbar
        produto.click
        listar_produto.click
    end 
end