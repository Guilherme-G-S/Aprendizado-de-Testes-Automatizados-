v1 = 1
v2 = 2
v3 = 3
v4 = 4

if (v1 > v2) && (v3 < v4) # && equivale a E
  puts 'condicao atendida pelos dois casos'
else
  puts 'condicao falsa'
end

if (v1 < v2) || (v3 > v4) # || equivale a Ou
  puts 'condicao atendida pelos um dos casos'
else
  puts 'condicao falsa'
end

if !(v3 > v4) # ! equivale a negação 
  puts 'negacao atendida'
else
  puts 'negacao nao atendida'
end
