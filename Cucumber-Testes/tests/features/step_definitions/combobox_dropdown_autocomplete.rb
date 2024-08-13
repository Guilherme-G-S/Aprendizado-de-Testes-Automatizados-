Quando('interajo com dropdown e select') do
  sleep(1) 
  visit '/buscaelementos/dropdowneselect'
  sleep(1)
  find('a[class="btn dropdown-button"]').click
  sleep(1)
  find('a[id="dropdown3"]').click
  sleep(1)
  select 'Chrome', from: 'dropdown'
  sleep(1)
  find('option[value="2"]').select_option
  sleep(1)
end

Quando('preencho o autocomplete') do
  sleep(1)
  visit '/widgets/autocomplete'
  sleep(1)
  find('#autocomplete-input').set 'São Pau'
  sleep(1)
  find('ul', text: 'São Paulo').click
  sleep(1)
end