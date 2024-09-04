#to pegando todos os arquivos que terminam com _page.rb e dando join (jogando pra variavel file) e dando um require neles
Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file}

module PageObjects
  def home
    @home ||= MapeandoElementoPage.new
  end
end
