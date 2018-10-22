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
     rg = '354600205'
     @cadastro.interacao_cadastro nome, data_nascimento, cpf, nome_mae, nasc_desconhecida, nacionalidade_cand,"rg", rg
     #@cadastro.adicionar_documentos "rg", rg
     sleep(5)
    

     @cadastro.dados_credenciais 
     @cadastro.tipo_ocorrencia 'BOLETIM DE OCORRÊNCIA POLICIAL'
     @cadastro.data_ocorrencia "14/10/2012"
     @cadastro.uf_ocorrencia 'df'
     @cadastro.municipio_ocorrencia 'Brasília'
     argum = "Ocorrência em sua essência - Teste"
     @cadastro.aeroporto_vinvulado "brasilia"
     @cadastro.ocorrencia_descricao argum
     obs = "Test campo observação"
     data_val = '25/04/2016'
     @cadastro.ocorrencia_observacao obs
     @cadastro.lancar_data_validacao data_val
     @cadastro.upload
     @cadastro.salvar

     sleep(5)

  end                                                                            
                                                                                 
#  Entao("eu posso inserir as informacoes do candidato") do                       
    
 # end                                                                            
