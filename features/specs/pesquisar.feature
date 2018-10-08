#language: pt

@ChangeBrowserZoom
@logout
@pesquisar @gl @gn 
Funcionalidade: Pesquisar

Contexto: Sistema Logado
Dado que estou logado no sistema como "juliana.jp" e 'ctidpf'

@pesquisa_caractere_nome
Cenario: Pesquisa os Candidatos Cadastrados no CANAID informando um caractere no Campo Nome Completo

Quando eu insiro um caractere 'c' no campo Nome completo
Entao vejo a seguinte "Resultado da Pesquisa"

@pesquisa_nome_completo
Cenario: Pesquisa os Candidatos Cadastrados no CANAID informando um nome no Campo Nome Completo

Quando eu insiro um nome 'IGOR NOAH GONÇALVES' no campo Nome Completo
Entao vejo o nome Completo 'IGOR NOAH GONÇALVES'

@pesquisa_caractere_mae
Cenario: Pesquisa os Candidatos Cadastrados no CANAID informando um caractere no Campo da Mae

Quando eu insiro um caractere 'c' no Campo Mae
Entao vejo a seguinte "Resultado da Pesquisa"

@pesquisa_mae
Cenario: Pesquisa os Candidatos Cadastrados no CANAID informando o nome da Mae

Quando eu insiro o nome 'CAROLINE REGINA' no Campo Mae
Entao vejo o nome da mae 'CAROLINE REGINA'

@pesquisa_data_nascimento
Cenario: Pesquisa os Candidatos Cadastrados no CANAID informando uma Data Nascimento

Quando eu insiro uma data de nascimento '10/09/1996'
Entao vejo a seguinte "Resultado da Pesquisa"

@pesquisa_numero_documento
Cenario: Pesquisa os Candidatos Cadastrados no CANAID informando um Numero de documento

Quando eu insiro um numero de documento '69839727753'
Entao vejo a seguinte "Resultado da Pesquisa"

@pesquisa_aeroporto_vinculado
Cenario: Pesquisa os Candidatos Cadastrados no CANAID informando o nome do Aeroporto Vinculado

Quando eu insiro o nome do aeroporto 'Curitiba'
Entao vejo a seguinte "Resultado da Pesquisa"