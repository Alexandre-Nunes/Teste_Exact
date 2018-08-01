#language: pt

@cadastro
Funcionalidade: Cadastrar Usuário

Cenario: Cadastrar usuário com sucesso
Dado que o usuario esteja na tela de registro
Quando informar um email valido
E informar uma senha valida
E submeter o cadastro
Entao o usuario e cadastrado com sucesso