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

    #metodo seleção documentos
    def doc_selecao (tipo_documento)
        doc = tipo_documento.upcase
      if doc.eql? "PASSAPORTE"
                find('option.ng-star-inserted:nth-child(2)').select_option
            elsif doc.eql? "RG"
                find('option.ng-star-inserted:nth-child(3)').select_option
            elsif doc.eql? "CNM"
                find('option.ng-star-inserted:nth-child(4)').select_option
            elsif doc.eql? "DNI"
                find('option.ng-star-inserted:nth-child(5)').select_option  
      end
   end

    #metodo de acao: Cadastrar Candidato
    def cadastrar (nome_candidato, data_nascimento_candidato, cpf_candidato, nome_mae_candidato, nasc_desc, nacionalidade_candidato)
            nome.set nome_candidato
            data_nascimento.set data_nascimento_candidato
            cpf.set cpf_candidato
            nome_mae.set nome_mae_candidato
           nasc_desc = nasc_desc .upcase
       if nacionalidade.eql? "SIM"
            nacionalidade_desconhecida.click 
            else
                nacionalidade.set nacionalidade_candidato
                auto_complet.click
       end
    end

    #método de ação: adicionar Documentos do Candidato
    def adicionar_documentos (tipo_doc)
        adcionar_doc.click
        doc_selecao tipo_doc
    end
  
    #Método de ação: selicinar o tipo de documento
    def tipo_ocorrencia (ocorrencia)

    end
     
end



