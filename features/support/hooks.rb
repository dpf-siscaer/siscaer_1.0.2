After('@logout') do
    find(:css, 'em.fa').click
end

After do |scenario|
    
    file_name = scenario.name.tr(' ', '-').downcase!
    shot = "logs/shots/#{file_name}.png"
    page.save_screenshot(shot)
    embed(shot, 'image/png', 'Clique aqui para ver o print da tela')
end
