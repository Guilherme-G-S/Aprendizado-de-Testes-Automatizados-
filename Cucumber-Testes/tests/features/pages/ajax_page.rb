class AjaxPage < SitePrism::Page
    set_url '/buscaelementos/botoes'

    element :botao, '#teste'
    element :mensagem, '#div1'

    def clicar_botao
        wait_until_botao_visible #espera o botao ficar visivel
        botao.click #apos validar que esta visivel ele faz o click
    end
end