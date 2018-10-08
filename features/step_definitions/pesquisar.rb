Dado("que estou logado no sistema como {string} e {string}") do |usuario, senha|
  visit '/'

  @login = Login.new
  @login.logar(usuario, senha)
  @pesquisar = Pesquisar.new

end

Quando("eu insiro um caractere {string} no campo Nome completo") do |caractere|
  @pesquisar.pesquisar_nome_caractere(caractere) 
end

Quando("eu insiro um nome {string} no campo Nome Completo") do |nome|
  @pesquisar.pesquisar_nome(nome)
end

Entao("vejo o nome Completo {string}") do |nome_completo|
  expect(@pesquisar.lista[0].text).to eql nome_completo
end

Quando("eu insiro um caractere {string} no Campo Mae") do |caractere|
  @pesquisar.pesquisar_mae_caractere(caractere)
end

Quando("eu insiro o nome {string} no Campo Mae") do |mae|
  @pesquisar.pesquisar_mae(mae)
end

Entao("vejo o nome da mae {string}") do |mae|
  expect(@pesquisar.lista[2].text).to eql mae
end

Quando("eu insiro uma data de nascimento {string}") do |dataNascimento|
  @pesquisar.pesquisar_data_nascimento(dataNascimento)
end

Quando("eu insiro um numero de documento {string}") do |doc|
  @pesquisar.pesquisar_numero_documento(doc)
end

Quando("eu insiro o nome do aeroporto {string}") do |aeroporto|
  @pesquisar.pesquisar_aeroporto_vinculado(aeroporto)
end

Entao("vejo a seguinte {string}") do |msg|  
  @msg = msg
  expect(page).to have_content @msg
end
