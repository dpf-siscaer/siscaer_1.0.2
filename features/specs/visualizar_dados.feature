#language: pt

@logout
@visualizar

Funcionalidade: Visualização

Contexto: Sistema Logado
Dado que eu estou logado como "juliana.jp" e 'ctidpf'

@visualizar_dados_usuario_cadastrato
Cenario: Visualizar os usuários cadastrados no Sistema
Quando eu insiro o nome do 'IGOR NOAH GONÇALVES'
Entao clico na lupa para pesquisar
Entao eu vejo o nome cadastrado 'IGOR NOAH GONÇALVES'

@visualizar_cancelar
Cenario: Cancelar o detalhamento dos usuários cadastrados
Quando eu estou verificando os dados do usuario 'IGOR NOAH GONÇALVES'
Entao eu clico no botao Cancelar a visualizacai dos dados
Entao vejo a menssagem 'Você está aqui: Pesquisar'

@visualizar_ocorrencias
Cenario: Visualizar as ocorrencias dos usuarios cadastrados
Quando eu estou verificando os dados do usuario 'IGOR NOAH GONÇALVES'
Entao eu clico no botao Visualiar Oorrencias 
Entao vejo a seguinte menssagem 'Visualizar Credenciado com Restrição'