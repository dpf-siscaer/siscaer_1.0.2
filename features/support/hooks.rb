Before ('@ChangeBrowserZoom') do
    page = Capybara::page
    #zoom = 80
    #page.execute_script("document.getElementsByTagName('html').style.zoom='#{zoom})}%';")
    page.execute_script("document.getElementsByTagName('html')[0].style['zoom'] = 0.75")
end


After('@logout') do
    find(:css, 'em.fa').click
end

After do |scenario|
    #tira uma print
    file_name = scenario.name.tr(' ', '-').downcase!
    shot = "logs/shots/#{file_name}.png"
    page.save_screenshot(shot)
    embed(shot, 'image/png', 'Clique aqui para ver o print da tela')
end
