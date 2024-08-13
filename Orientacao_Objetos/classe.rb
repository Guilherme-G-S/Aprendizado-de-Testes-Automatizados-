#classe começa com letra MAIÚSCULA
#uma classe é composta por atributos e métodos e construtores

class ClassGui

  #é a mesma coisa que o get e seter do java, serve pra pegar e setar um valor
  attr_accessor :nome

  #so permite ler
  #attr_reader :nomeone

  #so permite escrever 
  #attr_writer :nomedois


  #metodo
  #nome dele tem que ser tudo minusculo
  #se for nome composto tem que ter anderlaine entre as palavras
  def metodo
    #corpo do metodo
    puts 'corpo do metodo'
  end

  def metodo_composto
    #corpo do metodo
    puts 'corpo do metodo composto'
  end
end

#Usando a herança para dar o mesmo metodo da superclasse para uma subclasse
class Heranca < ClassGui
end

objeto = ClassGui.new
objeto.nome = 'Guilherme'
puts objeto.nome
objeto.metodo
objeto.metodo_composto

objeto_heranca = Heranca.new
objeto_heranca.metodo_composto