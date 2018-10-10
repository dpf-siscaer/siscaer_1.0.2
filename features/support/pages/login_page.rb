class Login < SitePrism::Page
  
    #Elementos: Inputs Mapeados
    element :login, '#username'
    element :password, '#password'
   
    ##metodo de acao: Logar no Sistema
    def logar(usuario, senha)
        login.set usuario
        password.set senha
        click_button 'kc-login'
    end
end