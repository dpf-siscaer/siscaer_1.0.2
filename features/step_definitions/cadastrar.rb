Quando("eu estou no formulario cadastro") do                                   
     @cadastro = Cadastrar.new
     @cadastro.menu_canard
     @cadastro.menu_cadastro
     nome = 'Isis Sueli Jéssica Gonçalves'
     data_nascimento = "04/06/1983"
     cpf = "16519985155"
     nome_mae = "Analu Ayla Vanessa"
     nasc_desconhecida = 'sim'
     nacionalidade_cand =''
     @cadastro.cadastrar nome, data_nascimento, cpf, nome_mae, nasc_desconhecida, nacionalidade_cand
     @cadastro.avancar
     @cadastro.dados_credenciais 
     @cadastro.tipo_ocorrencia 'OUTROS'
     @cadastro.data_ocorrencia "14/10/2012"
     @cadastro.uf_ocorrencia 'df'
     @cadastro.municipio_ocorrencia 'Brasília'
     argum = "Ocorrência em sua essência - Teste"
     @cadastro.aeroporto_vinvulado "brasilia"
     @cadastro.ocorrencia_descricao argum
     sleep(5)

  end                                                                            
                                                                                 
#  Entao("eu posso inserir as informacoes do candidato") do                       
    
 # end                                                                            
