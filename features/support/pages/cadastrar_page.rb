class Cadastrar < SitePrism::Page
    
    def initialize
        @login = Login.new
    end

    element :canard , '.list-unstyled > li:nth-child(2) > a:nth-child(1) > span:nth-child(1)'
    element :cadastro, '#Canard > li:nth-child(2) > a:nth-child(1) > span:nth-child(1)'
    element :btn_avancar, '#avancar'
    element :btn_cancelar, '#cancelar'

    element :nome, '#nome'
    element :data_nascimento, '#dataNascimento'
    element :cpf, '#cpf'
    element :nome_mae, '#nomeMae'
    element :nacionalidade, '#nacionalidade'
    element :tipo_doc, '#tipoDocumento'
    element :nacionalidade_desconhecida, '#nacionalidadeDesconhecida'
    element :adcionar_doc, '#adicionarDocumento'
    element :numero_doc, '#numeroDocumento'
    element :auto_complet, '.ui-autocomplete-panel'
    
    #navegação menu
    def menu_canard
        canard.click
    end

    def menu_cadastro
        cadastro.click
    end

    #botões de ações
    def avancar
        btn_avancar.click
    end

    def cancelar
        btn_cancelar.click
    end

    #metodo de acao
    def cadastrar (dado1, dado2, dado3, dado4, dado5, dado6, dado7, dado8, dado9)
        nome.set dado1
        data_nascimento.set dado2
        cpf.set dado3
        nome_mae.set dado4
        dados5 = dado5.upcase
       if dados5.eql? "SIM"
            nacionalidade_desconhecida.click 
            else
                nacionalidade.set dados6
                auto_complet.click
       end
      

    end 
    
   # def doc_selecao (dado7)
   #     doc = dado7
   #     doc = doc.upcase
   #     select = doc , from: tipo_doc
   #     puts from tipo_doc.value
   # end

    
end