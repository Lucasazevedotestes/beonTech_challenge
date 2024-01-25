config.after(:example) do |e|
  FileUtils.mkdir_p('log') unless File.directory?('log') # Create 'log' directory if it doesn't exist
  nome = e.description.gsub(/[ˆA-Za-z0-9 ]/, '').tr(' ', '_')
  page.save_screenshot("log/#{nome}.png")
end

config.before(:example) do
  page.current_window.resize_to(1280, 800)
end
