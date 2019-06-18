Before do
  Capybara.reset_sessions!
end

After do |scenario|
  if scenario.name.include? 'Fluxo'
    Dir.mkdir('prints') unless Dir.exist?('prints')
    sufix = ('error' if scenario.failed?) || 'success'
    name = scenario.name.tr(' ', '_').downcase
    page.save_screenshot("prints/#{sufix}-#{name}-#{Time.now.to_i}.png")
    embed("prints/#{sufix}-#{name}-#{Time.now.to_i}.png", 'image/png', 'Screenshot')
  end
end
