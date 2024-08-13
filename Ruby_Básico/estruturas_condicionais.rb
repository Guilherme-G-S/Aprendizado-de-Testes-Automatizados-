puts 'digite um numero 1 ou 2: '
v1 = gets.to_i

= begin
#executa o codigo de a condição for verdadeira
if v1 == 1
  puts 'valor é igual a 1'
elsif v1 == 2
  puts 'valor é igual a 2'
else
  puts 'valor nao e igual a 1'
end
= end

#-----------------
= begin
#executa o codigo se a condição for falsa
unless v1 == 2
  puts 'condicao falsa'
else
  puts 'condicao verdadeira'
end
= end

#inicia uma definição de instrução de caso. Leva a variável com a qual você quer trabalhar
case v1
when 0 
  puts 'digitou 0'
when 1
  puts 'vc digitou 1'

else
  puts 'opcao invalida'
end