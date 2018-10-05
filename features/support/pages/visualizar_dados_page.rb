class Visualizar < SitePrism::Page

    def initialize
        @pesquisar = Pesquisar.new
    end

    #Mapeando Elements
    elements :list, 'tr > td '

    #Métodos Botões
    def cancelar_visualizacao
        click_button 'cancelar'
    end

    def ocorrencias 
        click_button 'avancar'
    end

    def fechar_ocorrencias
        click_button 'fechar'
    end

    #Método ação: Pesquisar Candidato 
    def pesquisar_usuario(nome)
        @pesquisar.pesquisar_nome(nome) 
    end

    #Método ação: Visualizar oos Dados na Tablea
    def ver_dados
        @pesquisar.lista[4].click_button 'pfTableselect0'
    end

    #Método ação: realizar o Download dos PDF na Tabela
    def tabela

       @tamanho = list.size/6
       @i = 0

        while @i < @tamanho do
            list[5].click_button 'pfTableselect0'
            click_button 'download0'
            @i +=1
       end
    end
  
end