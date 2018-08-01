Dado("que o usuario ja esteja na tela de login") do
    visit 'http://demo.automationtesting.in/Register.html'
    find('a[href="http://practice.automationtesting.in/"]').click
    find('li[id="menu-item-50"]').click
end
Quando("informar o email cadastrado") do
    fill_in 'username', with: 'alexandre.santosnunes@exactsales.com'
end
  
Quando("informar a senha cadasrada") do
    fill_in id:'password', with: 'Abc@E92?!a99' 
end
  
Quando("entrar") do
    find('input[name="login"]').click
end
  
Entao("o usuario e direcionado para Home") do
    expect(page).to have_current_path('http://practice.automationtesting.in/my-account/', url: true)
end
  