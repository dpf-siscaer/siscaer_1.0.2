Quando("eu estou no formulario cadastro") do                                   
     @cadastro = Cadastrar.new
     @cadastro.menu_canard
     @cadastro.menu_cadastro
     nome = 'Alexandre Santos'
     data_nascimento = "30/12/1980"
     cpf = "88734501134"
     nome_mae = "Maria do Carmo"
     nasc_desconhecida = 'Sim'
     nacionalidade_cand =''
     @cadastro.cadastrar nome, data_nascimento, cpf, nome_mae, nasc_desconhecida, nacionalidade_cand
     #@cadastro.data
     #sleep(2)

  end                                                                            
                                                                                 
#  Entao("eu posso inserir as informacoes do candidato") do                       
    
 # end                                                                            
