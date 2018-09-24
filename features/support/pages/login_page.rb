class Login < SitePrism::Page
  
    element :login, '#username'
    element :password, '#password'
   
    def logar(usuario, senha)
        login.set usuario
        password.set senha
        click_button 'kc-login'
    end
    
end