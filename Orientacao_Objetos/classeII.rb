class ClasseMae
  def correr
    puts 'a mae corre'
  end
end

class ClasseFilha < ClasseMae #overriding é sobrescrever o metodo da classe mae para uma subclasse
  def correr
    puts super #o super serve para invocar o metodo da classe pai (superclasse)
    puts 'cansei'
  end
end

objeto = ClasseFilha.new

objeto.correr