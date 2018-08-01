Dado("que o usuario esteja na tela de compras") do
    visit 'http://demo.automationtesting.in/Register.html'
    find('a[href="http://practice.automationtesting.in/"]').click
    sleep(10)
    click_on 'Shop'
  end
  
  Quando("selecionar um item") do
    find('a[ href="/shop/?add-to-cart=160"]').click
    sleep(5)
  end
  
  Entao("o item e adicinado ao carrinho com sucesso") do
    click_on '1 item'
    expect(page).to have_current_path('http://practice.automationtesting.in/basket/', url: true)
  end