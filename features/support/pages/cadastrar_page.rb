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
    element :mostrar_dados_credenciais, '.ui-fieldset-toggler'
    element :btrn_salvar, '#salvar'
    element :btn_prosseguir, '#prosseguir '
    
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
    element :dat_ocorrencia, '#dataOcorrencia'
    element :municipio_ocorrencia_opcao, '#municipio'
    element :aeroport_vinc, '#aeroportoVinculado'
    element :auto_complet, '.ui-autocomplete-items'
    element :data_validacao, '#dataValidade'
 
    
    
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

    def salvar
        btrn_salvar.click
    end

    def prosseguir
        btn_prosseguir.click
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
            cpf.click
            cpf.set cpf_candidato
            nome_mae.set nome_mae_candidato
            nasc_desc = nasc_desc .upcase

       if nasc_desc.eql? "SIM"
            nacionalidade_desconhecida.click 
        else
            nacionalidade.set nacionalidade_candidato
            auto_complet.click
       end
    end

    #método de ação: adicionar Documentos do Candidato
    def adicionar_documentos (tipo_doc, num_doc)
        doc_selecao tipo_doc
        numero_doc.set num_doc
        adcionar_doc.click
    end

    
    #método exibir dados credenciais
    def dados_credenciais 
        mostrar_dados_credenciais.click
    end
  
    #Método de ação: selicinar o tipo de documento
    def tipo_ocorrencia (ocorrencia)
        ocorrencia = ocorrencia.upcase
        
        if ocorrencia.eql? "AUTO DE PRISÃO EM FLAGRANTE"
            find('#tipoOcorrencia > option:nth-child(2)').select_option
        elsif ocorrencia.eql? 'BOLETIM DE OCORRÊNCIA POLICIAL'
            find('#tipoOcorrencia > option:nth-child(3)').select_option
        elsif ocorrencia.eql? "RELATÓRIO DE INTELIGÊNCIA"
            find('#tipoOcorrencia > option:nth-child(4)').select_option
        elsif ocorrencia.eql? 'ORDEM JUDICIAL'
            find('#tipoOcorrencia > option:nth-child(5)').select_option
        elsif ocorrencia.eql? 'OUTROS'
            find('#tipoOcorrencia > option:nth-child(6)').select_option
        elsif ocorrencia.eql? 'PORTARIA'
            find('#tipoOcorrencia > option:nth-child(7)').select_option
        end
    end

    #método inserir data de ocorrência
    def data_ocorrencia(data)
        dat_ocorrencia.set data
    end

    #metodo UF da Ocorrência
    def uf_ocorrencia(uf)
        uf = uf.upcase
        find_by_id('uf').click
        case uf
            when 'AC'
                find('#uf > option:nth-child(2)').select_option
            when 'AL'
                find('#uf > option:nth-child(3)').select_option
            when 'AM'
                find('#uf > option:nth-child(4)').select_option
            when 'AP'
                find('#uf > option:nth-child(5)').select_option
            when 'BA'
                find('#uf > option:nth-child(6)').select_option
            when 'CE'
                find('#uf > option:nth-child(7)').select_option
            when "DF"
                find('#uf > option:nth-child(8)').select_option
            when 'ES'
                find('#uf > option:nth-child(9)').select_option
            when 'GO'
                find('#uf > option:nth-child(10)').select_option
            when 'MA'
                find('#uf > option:nth-child(11)').select_option
            when 'MG'
                find('#uf > option:nth-child(12)').select_option
            when 'MS'
                find('#uf > option:nth-child(13)').select_option
            when 'MT'
                find('#uf > option:nth-child(14)').select_option
            when 'PA'
                find('#uf > option:nth-child(15)').select_option
            when 'PB'
                find('#uf > option:nth-child(16)').select_option
            when 'PE'
                find('#uf > option:nth-child(17)').select_option
            when 'PI'
                find('#uf > option:nth-child(18)').select_option
            when 'PR'
                find('#uf > option:nth-child(19)').select_option
            when 'RJ'
                find('#uf > option:nth-child(20)').select_option
            when 'RN'
                find('#uf > option:nth-child(21)').select_option
            when 'RO'
                find('#uf > option:nth-child(22)').select_option
            when 'RR'
                find('#uf > option:nth-child(23)').select_option
            when 'RS'
                find('#uf > option:nth-child(24)').select_option
            when 'SC'
                find('#uf > option:nth-child(25)').select_option
            when 'SE'
                find('#uf > option:nth-child(26)').select_option
            when 'SP'
                find('#uf > option:nth-child(27)').select_option
            when 'TO'
                find('#uf > option:nth-child(28)').select_option
        end
    end

     #metodo Município da Ocorrência
     def municipio_ocorrencia(municipio)
        municipio = municipio.capitalize
        municipio_ocorrencia_opcao.click
        select municipio, from: 'municipio'
     end

     #metodo insere aeroporto vinculado
     def aeroporto_vinvulado(aeroporto)
        aeroport_vinc.set aeroporto
        auto_complet.click
     end

     #método descrição da ocorrência
     def ocorrencia_descricao(texto)
        texto = texto.upcase

        desc = first('#descricaoOcorrencia').native
        desc.send_keys(texto)
     end

     #método observacoes
     def ocorrencia_observacao(observacao)
        observacao = observacao.upcase

        obs = first('#observacao').native
        obs.send_keys(observacao)
     end

     #métod para lançar a data de validação da ocorrência
     def lancar_data_validacao(data_validacao_interessado)
        data_validacao.set data_validacao_interessado
     end

     #método upload arquivo
     def upload
        @arquivo = "C:\\automocao\\siscaer_1.0.2\\features\\arquivos\\PDF_TESTE5.pdf"
        attach_file('documento', @arquivo, make_visible: true)
        click_button 'adicionarOcorrencia'
        sleep(10)
     end

     def interacao_cadastro(nome_cand, data_nasc_cand, cpf_cand, nome_mae_cand, nasc_dc, nc_cd,t_doc, nu_doc)
        cadastrar nome_cand, data_nasc_cand, cpf_cand, nome_mae_cand, nasc_dc, nc_cd
        adicionar_documentos t_doc, nu_doc
        avancar
        if  page.has_text? 'Atenção: Foi(ram) encontrado(s) na base do CANARD/Credenciados registro(s) de credenciado(s) com os mesmos dados informados.'
            prosseguir
        end
    end

    
end


