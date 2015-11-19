# Material para as Aulas de Rockabilly

Material de aulas de Rockabilly no [The Clock Rock Bar](http://www.theclock.com.br/).

> Criado por [Luiz Carlos Vieira](http://www.luiz.vieira.nom.br) em novembro de 2015.

## Informações de produção

- Os documentos deste material são produzidos utilizando o [LaTeX](https://www.latex-project.org/), principalmente com o(s) pacote(s) [pgf/Tikz](https://www.ctan.org/pkg/pgf) para o desenho dos gráficos.

- Os logos (encontrados na pasta `ferramentas`) foram criados no [Gimp](https://www.gimp.org/) usando as fontes e pantone próprios do The Clock Rock Bar.

- A medição dos atributos das músicas (BPM, se tem introdução/finalização ou não, etc) são feitas de forma subjetiva com auxílio de uma planilha construída em [Microsoct Excel](https://products.office.com/pt-br/excel). Essa planilha (que também se encontra na pasta `ferramentas`) tem um script em VBA (*Visual Basic for Applications*) que exporta as músicas e atributos configurados na aba atual no formato dos comandos esperados pelo arquivo LaTeX. Então é só ajustar manualmente as posições dos círculos (já que elas são inicialmente atribuídas de forma aleatória - ainda que dentro dos quadrantes corretos) e compilar o arquivo LaTeX para produzir o PDF.

- Ao invés de instalar o LaTeX no computador, também pode-se utilizar o serviço online (e gratuito) do [OverLeaf](https://www.overleaf.com/) para produzir os PDFs. É importante observar que não apenas o arquivo `.tex` precisa ser enviado para o projeto online, como também a pasta `imagens` contendo as imagens utilizadas externamente (isto é, não desenhadas via Tikz).

> Observação: este projeto não compartilha as fontes e imagens usadas nos logos porque elas são de propriedade do The Clock Rock Bar.