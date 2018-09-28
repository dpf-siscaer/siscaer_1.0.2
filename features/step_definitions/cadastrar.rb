Quando("eu estou no formulario cadastro") do                                   
     @cadastro = Cadastrar.new
     @cadastro.menu_canard
     @cadastro.menu_cadastro
     arg = 'passaporte'
     @cadastro.doc_selecao arg
     arg = 'rg'
     @cadastro.adicionar_documentos arg
     arg = 'cnm'
     @cadastro.adicionar_documentos arg
     ar = 'dni'
     @cadastro.adicionar_documentos arg
  end                                                                            
                                                                                 
#  Entao("eu posso inserir as informacoes do candidato") do                       
    
 # end                                                                            
