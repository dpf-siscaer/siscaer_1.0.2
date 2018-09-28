#language: pt

@logout
@login

Funcionalidade: Cadastrar

Contexto: Sistema Logado
Dado que eu estou logado como "juliana.jp" e 'ctidpf'

@cadastrar
Cenario: Cadastrar candidatos no Canard

Quando eu estou no formulario cadastro
#Entao eu posso inserir as informacoes do candidato