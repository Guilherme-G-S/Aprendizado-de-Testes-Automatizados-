=begin
module ModuloNome
  #Os modulos serve para agrupar classe
  #serve para agrupar contantes
  #serve para agrupar metodos
  #ele e muito parecido com classe
  #ele nao pode ser instanciado
  #modulo nao pode ser herdado

  def metodo_padrao
    puts 'eu sou um modulo'
  end
end

class ClassNome
  include ModuloNome #uma maneira de "herdar" imbutir o modulo numa classe
  #podemos incluir varios modulos em uma classe usando o include
end

objeto = ClassNome.new

objeto.metodo_padrao
=end

class Cachorro
  def latir
    puts 'HOOF HOOF'
  end
end

class CachorroGrande
  def latir
    puts 'HOOF'
  end
end

class Pessoa
  def agarra_cachorro(cachorro) #polimorfismo é conseguir referenciar uma classe em outra classe.
    cachorro.latir
  end
end

c1 = Cachorro.new
c2 = CachorroGrande.new

p = Pessoa.new
p. agarra_cachorro(c1)
p.agarra_cachorro(c2)




