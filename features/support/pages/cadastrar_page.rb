class Cadastrar < SitePrism::Page
    
    def initialize
        @login = Login.new
    end

    #Elementos: Botões Mapeados
    element :canard , '.list-unstyled > li:nth-child(2) > a:nth-child(1) > span:nth-child(1)'
    element :cadastro, '#Canard > li:nth-child(2) > a:nth-child(1) > span:nth-child(1)'
    element :btn_avancar, '#avancar'
    element :btn_cancelar, '#cancelar'
    element :adcionar_doc, '#adicionarDocumento'
    
    #Elementos: CheckBox Mapeados
    element :nacionalidade_desconhecida, '#nacionalidadeDesconhecida'

    #Elementos: Inputs Mapeados
    element :nome, '#nome'
    element :data_nascimento, '#dataNascimento'
    element :cpf, '#cpf'
    element :nome_mae, '#nomeMae'
    element :nacionalidade, '#nacionalidade'
    element :numero_doc, '#numeroDocumento'
    element :auto_complet, '.ui-autocomplete-panel'
    
    #navegação: menu
    def menu_canard
        canard.click
    end

    def menu_cadastro
        cadastro.click
    end

    #Interação: botões de ações
    def avancar
        btn_avancar.click
    end

    def cancelar
        btn_cancelar.click
    end

    def adicionar_documentos (argumento)
        adcionar_doc.click
        doc_selecao argumento
    end

    #metodo de acao
    def cadastrar (dado1, dado2, dado3, dado4, dado5, dado6, dado7, dado8)
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

   
    def doc_selecao (arg)
        doc = arg.upcase
       @op = ""

      if doc.eql? "PASSAPORTE"
                find('option.ng-star-inserted:nth-child(2)').select_option
                @op = "Deu Bom"
            elsif doc.eql? "RG"
                find('option.ng-star-inserted:nth-child(3)').select_option
                @op = "Deu Bom"
            elsif doc.eql? "CNM"
                find('option.ng-star-inserted:nth-child(4)').select_option
                @op = "Deu Bom" 
            elsif doc.eql? "DNI"
                find('option.ng-star-inserted:nth-child(5)').select_option
                @op = "Deu Bom" 
            else
                @op = "Deu ruim"
      end
        puts "O teste #{@op} !!!!!!"
        puts "---------------------------------"
   end
   
end