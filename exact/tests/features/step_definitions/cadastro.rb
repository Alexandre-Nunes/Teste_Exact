
Dado("que o usuario esteja na tela de registro") do
  visit 'http://demo.automationtesting.in/Register.html'
  find('a[href="http://practice.automationtesting.in/"]').click
  find('li[id="menu-item-50"]').click
  sleep(5)
end

Quando("informar um email valido") do
  fill_in 'reg_email', with: 'alexandre.santosnunes@exactsales.com'
end

Quando("informar uma senha valida") do
  fill_in 'reg_password', with: 'Abc@E92?!a99'
end

Quando("submeter o cadastro") do
  find('input[name="register"]').click
end

Entao("o usuario e cadastrado com sucesso") do
 expect(page).to have_current_path('http://practice.automationtesting.in/my-account/', url: true)
end
