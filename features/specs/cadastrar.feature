#language: pt

@logout
@cadastrar_credenciais_restricao

Funcionalidade: Cadastrar Credenciado com Restrição

Contexto: Sistema Logado
Dado que eu estou logado como "juliana.jp" e 'ctidpf'

@cadastrar_sucesso
Cenário: Cadastrar Credenciado com Restrição no Canard

Quando eu estou no formulario cadastro e insiro os seguintes dados pessoais: Nome 'Sophia Bianca Alice Pereira' Data_Nascimento '06/05/1990' CPF '85891365154' Nome da mae 'Tânia Vitória' Nnacionalidade_desconhecida 'não' Nacionalidade 'brasil' Informar Documento 'rg' Numumero dp RG '301720812' Tipo de Ocorrencia 'ORDEM JUDICIAL' Data da ocorrencia '14/10/2012' UF 'df' Municipio da ocorrencia 'Brasília' Argumento 'Ocorrência em sua essência - Teste' Aeroporto Vinulado 'brasilia' Observacao 'Test campo observação' Data de Validade '25/04/2016'


Entao eu visualizo a confirmação inclusão de ocorrência "Registro salvo com sucesso."