class Visualizar < SitePrism::Page

    element :nome_restricao, '#nome'
    elements :list, 'tr > td '
   
  
    def initialize
        @pesquisar = Pesquisar.new
    end

    def pesquisar_usuario(nome)
        @pesquisar.pesquisar_nome(nome) 
    end

    def ver_dados
        @pesquisar.lista[4].click_button 'pfTableselect0'
    end

    def cancelar_visualizacao
        click_button 'cancelar'
    end

    def ocorrencias 
        click_button 'avancar'
    end

    def tabela

       @tamanho = list.size/6
       @i = 0

        while @i < @tamanho do
            list[5].click_button 'pfTableselect0'
            click_button 'download0'
            @i +=1
       end
    end
    def fechar_ocorrencias
        click_button 'fechar'
    end
end