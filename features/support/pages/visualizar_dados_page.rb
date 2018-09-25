class Visualizar < SitePrism::Page

    element :nome_restricao, '#nome'
    element :cancelar, '#cancelar'
    element :viusalizar_ocorrencias, '#avancar'

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
        cancelar.click
    end

    def ocorrencias 
        viusalizar_ocorrencias.click
    end
end