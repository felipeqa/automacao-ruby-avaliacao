Before do
  Capybara.reset_sessions!
end

After do |scenario|
  if scenario.name.include? 'Fluxo'
    Dir.mkdir('prints') unless Dir.exist?('prints')
    sufix = ('error' if scenario.failed?) || 'success'
    name = scenario.name.tr(' ', '_').downcase
    image_name = "prints/#{sufix}-#{name}-#{Time.now.to_i}.png"
    page.save_screenshot(image_name)
    embed(image_name, 'image/png', 'Screenshot')
  end
end
