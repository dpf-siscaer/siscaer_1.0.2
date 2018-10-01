Dado("que eu estou logado como {string} e {string}") do |usuario, senha|
    visit '/'
    @login = Login.new
    @login.logar(usuario, senha)
    @visualizar = Visualizar.new
end

Quando("eu insiro o nome do {string}") do |nome|
    @visualizar.pesquisar_usuario(nome)  
end
  
Entao("clico na lupa para pesquisar") do
    @visualizar.ver_dados
end
  
Entao("eu vejo o nome cadastrado {string}") do |nome_result|
  find('#nome').value.eql? nome_result
end

Quando("eu estou verificando os dados do usuario {string}") do |nome|
    @visualizar.pesquisar_usuario(nome) 
    @visualizar.ver_dados
  end
  
  Entao("eu clico no botao Cancelar a visualizacai dos dados") do
    @visualizar.cancelar_visualizacao
  end
  
  Entao("vejo a menssagem {string}") do |msg|
    expect(page).to have_content msg
  end

  Entao("eu clico no botao Visualiar Oorrencias") do
    @visualizar.ocorrencias
  end
  
  Entao("vejo a seguinte menssagem {string}") do |msg|
    expect(page).to have_content msg
  end

  Entao("eu clico no botao acao") do
    @visualizar.ocorrencias
    @visualizar.tabela
  end
  
  Entao("e vejo a seguinte menssagem {string}") do |msg|
      expect(page).to have_content msg
  end

  Quando("estou verificando os dados do usuario {string} e clico no botao fechar") do |nome|
    @visualizar.pesquisar_usuario(nome) 
    @visualizar.ver_dados
    @visualizar.ocorrencias
    @visualizar.fechar_ocorrencias
  end