class Pesquisar < SitePrism::Page

    #Elementos: Inputs Mapeados
    element :nome_completo, '#nomeCredenciado'
    element :nome_mae, '#nomeMaeCredenciado'
    element :data_nascimento, '#dataNascimento'
    element :numero_documento, '#numeroDocumento'
    element :aeroporto_vinculado ,'#aeroportoVinculado'
    elements :lista , 'tr > td'

    #navegação: menu
    def navegar
        find(:css, '.list-unstyled > li:nth-child(2) > a:nth-child(1)').click
        find(:css, '#Canard > li:nth-child(1) > a:nth-child(1)').click
    end
    
    #Interação: botões de ações
    def pesquisar
        click_button 'pesquisar'
    end

    def limpar
        click_button 'limpar'
    end

    #metodos ação: Pesquisar Nome por Caractere
    def pesquisar_nome_caractere (caractere)
        navegar
        nome_completo.set caractere 
        pesquisar
    end

    #metodos ação: Pesquisar por Nome completo 
    def pesquisar_nome(nome)
        navegar
        nome_completo.set nome
        pesquisar
    end

    #metodos ação: Pesquisar Nome da Mãe por Caractere
    def pesquisar_mae_caractere(caractere)
        navegar
        nome_mae.set caractere
        pesquisar
    end

    #metodos ação: Pesquisar Nome da Mãe 
    def pesquisar_mae (mae)
        navegar
        nome_mae.set mae
        pesquisar
    end
    
    #metodos ação: Pesquisar por Data de Nascimento
    def pesquisar_data_nascimento (datNascimento)
        navegar
        data_nascimento.set datNascimento
        pesquisar
    end

    #metodos ação: Pesquisar por Número de Documento
    def pesquisar_numero_documento (doc)
        navegar
        numero_documento.set doc
        pesquisar
    end

    #metodos ação: Pesquisar por Aeroporto Vinculado
    def pesquisar_aeroporto_vinculado (aeroporto)
        navegar
        aeroporto_vinculado.set aeroporto
        find('.ui-autocomplete-panel').click
        pesquisar
    end
 end