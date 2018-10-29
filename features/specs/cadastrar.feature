#language: pt

@logout
@cadastrar_credenciais_restricao

Funcionalidade: Cadastrar Credenciado com Restrição

Contexto: Sistema Logado
Dado que eu estou logado como "juliana.jp" e 'ctidpf'

@cadastrar_sucesso
Cenário: Cadastrar Credenciado com Restrição no Canard

Quando eu estou no formulario cadastro e insiro os seguintes dados pessoais: Nome 'Eduardo Roberto Emanuel Lima' Data_Nascimento '21/03/1992' CPF '46089695289' Nome da mae 'Tereza Gabriela' Nnacionalidade_desconhecida 'não' Nacionalidade 'brasil' Informar Documento 'rg' Numumero dp RG '378720569' Tipo de Ocorrencia 'ORDEM JUDICIAL' Data da ocorrencia '14/10/2018' UF 'df' Municipio da ocorrencia 'Brasília' Argumento 'Ocorrência em sua essência - Teste' Aeroporto Vinulado 'brasilia' Observacao 'Test campo observação' Data de Validade '25/12/2018'


Entao eu visualizo a confirmação inclusão de ocorrência "Registro salvo com sucesso."