Quando("eu estou no formulario cadastro e insiro os seguintes dados pessoais: Nome {string} Data_Nascimento {string} CPF {string} Nome da mae {string} Nnacionalidade_desconhecida {string} Nacionalidade {string} Informar Documento {string} Numumero dp RG {string} Tipo de Ocorrencia {string} Data da ocorrencia {string} UF {string} Municipio da ocorrencia {string} Argumento {string} Aeroporto Vinulado {string} Observacao {string} Data de Validade {string}") do |nome, 
    data_nascimento, cpf,nome_da_mae, nacionalidade_desconhecida, 
    nacionalidade, informar_documento, num_documento, tipo_de_ocorrencia, 
    data_da_ocorrencia, uf, municipio_da_ocorrencia, argumento, 
    aeroporto_vinulado, observacao, data_de_validade| 

  @cadastro = Cadastrar.new
  @cadastro.menu_canard
  @cadastro.menu_cadastro

  @cadastro.interacao_cadastro nome, data_nascimento, cpf, nome_da_mae, nacionalidade_desconhecida, nacionalidade, informar_documento, num_documento
  @cadastro.dados_credenciais 
  @cadastro.tipo_ocorrencia tipo_de_ocorrencia
  @cadastro.data_ocorrencia data_da_ocorrencia
  @cadastro.uf_ocorrencia uf
  @cadastro.municipio_ocorrencia municipio_da_ocorrencia
  @cadastro.aeroporto_vinvulado aeroporto_vinulado
  @cadastro.ocorrencia_descricao argumento
  @cadastro.ocorrencia_observacao observacao
  @cadastro.lancar_data_validacao data_de_validade
  @cadastro.upload
  @cadastro.salvar
 
end
                                                                                 
#  Entao("eu posso inserir as informacoes do candidato") do                       
    
 # end                                                                            
