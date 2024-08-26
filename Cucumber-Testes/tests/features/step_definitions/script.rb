Quando('eu uso um script') do
  visit '/outros/scroll'
  sleep(1)
  page.execute_script("window.scrollBy(0,15000)")
  sleep(2)
  @result = page.evaluate_script('4 + 4');
  puts @result
end