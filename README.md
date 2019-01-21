# Case_Bionexo

<h2>Passos Realizados</h2>

<h3>1-Passo</h3>
Leitura dos User Stories e testes exploratorios nas telas do site.

<h3>2-Passo</h3>
Abertura de BUG's encontrados no teste exploratorio.

<h3>3-Passo</h3>
Automação dos cenarios conforme User Stories e regras de negocio.

<h2>Anotações</h2>
1- Utilizei o Trello para autogerenciamentos da automação.</br>
2- Na validação de campos, tentei utilizar table.hashes e não consegui rodar, tentei criar uma função na classe e tambem não funcionou, por isso a validação foi feita no steps.rb.</br>
3- Na automação, inclui a possibilidade de testar no Chrome e no Firefox, só efetuar a troca no cucumber.yaml</br>
4- Na automação, inclui screenshots para os cenarios que passam corretamente e para os que falham.</br>
5- Na automação, inclui a possibilidade de usar mais de um ambiente de teste, nesse caso só criei o "homol", porem incluir prod se torna simples, a alteração pode ser feita no cucumber.yaml</br>
6- Na automação, inclui 2 tipos de reports, um em HTML e outro em Json.</br>

<h2>Observações</h2>
1- Alguns botões estão com divergência de idiomas, deve haver uma padronização.</br>
2- Precisa ser definido se o campo código é alfanumérico.</br>
3- O campo preço poderia já trazer uma máscara de preenchimento, assim facilita para o usuário.</br>
