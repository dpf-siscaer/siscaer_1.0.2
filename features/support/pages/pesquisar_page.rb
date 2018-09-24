class Pesquisar < SitePrism::Page

    element :nome_completo, '#nomeCredenciado'
    element :nome_mae, '#nomeMaeCredenciado'
    element :data_nascimento, '#dataNascimento'
    element :numero_documento, '#numeroDocumento'
    element :aeroporto_vinculado ,'#aeroportoVinculado'
    elements :lista , 'tr > td'

    #metodos de interacao
    def navegar
        find(:css, '.list-unstyled > li:nth-child(2) > a:nth-child(1)').click
        find(:css, '#Canard > li:nth-child(1) > a:nth-child(1)').click
    end
    
    def pesquisar
        click_button 'pesquisar'
    end

    def limpar
        click_button 'limpar'
    end

    #metodos acoes
    def pesquisar_nome_caractere (caractere)
        navegar
        nome_completo.set caractere 
        pesquisar
    end

    def pesquisar_nome(nome)
        navegar
        nome_completo.set nome
        pesquisar
    end

    def pesquisar_mae_caractere(caractere)
        navegar
        nome_mae.set caractere
        pesquisar
    end

    def pesquisar_mae (mae)
        navegar
        nome_mae.set mae
        pesquisar
    end
    
    def pesquisar_data_nascimento (datNascimento)
        navegar
        data_nascimento.set datNascimento
        pesquisar
    end

    def pesquisar_numero_documento (doc)
        navegar
        numero_documento.set doc
        pesquisar
    end

    def pesquisar_aeroporto_vinculado (aeroporto)
        navegar
        aeroporto_vinculado.set aeroporto
        find('.ui-autocomplete-panel').click
        pesquisar
    end
 end