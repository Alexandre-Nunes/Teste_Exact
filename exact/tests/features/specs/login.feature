#language: pt

@login
Funcionalidade: Login

Cenario: Realizar login com sucesso
Dado que o usuario ja esteja na tela de login
Quando informar o email cadastrado
E informar a senha cadasrada
E entrar
Entao o usuario e direcionado para Home
