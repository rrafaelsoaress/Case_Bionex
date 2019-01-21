class CadastroPage < SitePrism::Page
    element :nome, '#product_name'
    element :codigo, '#product_code'
    element :fabricante, '#product_manufacturer'
    element :descricao, '#product_description'
    element :preco, '#product_price'
    element :tipo, '#product_kind'
    element :status, '#product_status'
    element :btn_cadastrar, 'input[value="Create Product"]'

    def cadastrar_medicamento(nome, fabricante, descricao, preco)
        self.nome.set nome
        self.codigo.set Faker::Number.number(10)
        self.fabricante.set fabricante
        self.descricao.set descricao
        self.preco.set preco
        btn_cadastrar.click
    end

    def cadastrar_materiais(nome, fabricante, descricao, preco)
        self.nome.set nome
        self.codigo.set Faker::Number.number(10)
        self.fabricante.set fabricante
        self.descricao.set descricao
        self.preco.set preco
        find('#product_kind').find(:xpath, 'option[2]').select_option
        btn_cadastrar.click
    end

    def sem_nome
        codigo.set Faker::Number.number(10)
        fabricante.set 'Teste Bio'
        descricao.set 'Teste para Bionexo'
        preco.set 'R$3,99'
        btn_cadastrar.click
    end

    def sem_codigo
        nome.set 'Teste'
        fabricante.set 'Teste Bio'
        descricao.set 'Teste para Bionexo'
        preco.set 'R$3,99'
        btn_cadastrar.click
    end

    def sem_fabricante
        nome.set 'Teste'
        codigo.set Faker::Number.number(10)
        descricao.set 'Teste para Bionexo'
        preco.set 'R$3,99'
        btn_cadastrar.click
    end

    def sem_descricao
        nome.set 'Teste'
        codigo.set Faker::Number.number(10)
        fabricante.set 'Teste Bio'
        preco.set 'R$3,99'
        btn_cadastrar.click
    end

    def sem_preco
        nome.set 'Teste'
        codigo.set Faker::Number.number(10)
        fabricante.set 'Teste Bio'
        descricao.set 'Teste para Bionexo'
        btn_cadastrar.click
    end  
end

class EditarPage < CadastroPage
    element :btn_editar, 'input[value="Update Product"]'
    element :btn_voltar, 'a[href="/products"]'
    
    def editar_medicamento(nome, fabricante, descricao, preco)
        self.nome.set nome
        self.codigo.set Faker::Number.number(10)
        self.fabricante.set fabricante
        self.descricao.set descricao
        self.preco.set preco
        btn_editar.click
    end
end