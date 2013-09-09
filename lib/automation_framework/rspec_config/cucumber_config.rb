Cucumber.configure do |cu|
  cu.after do |s|
    driver.quit
    Cucumber.wants_to_quit = true if s.failed?
  end
end