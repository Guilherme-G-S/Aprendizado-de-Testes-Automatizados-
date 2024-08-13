#language: pt


Funcionalidade: Trabalhar com Datatable

@Setimo_cenario @ID_07
 #database usando linha
Cenario: Cortar laranjas
Dado que eu tenho umas laranjas
|laranja| 10 |
Quando eu corto 2 laranjas 
Entao eu verifico quantas laranjas sobraram inteiras

@Oitavo_cenario @ID_08
#database usando coluna
Cenario: Chupar laranjas
Dado que eu tenho umas laranjas
|laranja|
|  10   |
Quando eu chupo 2 laranjas 
Entao eu verifico quantas laranjas sobraram inteiras