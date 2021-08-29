programa
{
	inclua biblioteca Matematica --> math
	funcao inicio()
	{
		
		
		//VETORES------------------------------------------------
		cadeia nomeProdutos[10]
		nomeProdutos[0] = "Mindset                       "
		nomeProdutos[1] = "Poder do hábito               "
		nomeProdutos[2] = "O segredo                     "
		nomeProdutos[3] = "O corpo fala                  "
		nomeProdutos[4] = "Pai rico pai pobre            "
		nomeProdutos[5] = "O milagre da manhã            "
		nomeProdutos[6] = "Comunicação não violenta      "
		nomeProdutos[7] = "O poder do agora              "
		nomeProdutos[8] = "O homem mais rico da babilônia"
		nomeProdutos[9] = "Quem mexeu no meu queijo      "

		cadeia codigoProdutos [10], codigoEscolhido="x"
		codigoProdutos [0] = "G3-1"
		codigoProdutos [1] = "G3-2"	
		codigoProdutos [2] = "G3-3"
		codigoProdutos [3] = "G3-4"
		codigoProdutos [4] = "G3-5"
		codigoProdutos [5] = "G3-6"
		codigoProdutos [6] = "G3-7"
		codigoProdutos [7] = "G3-8"
		codigoProdutos [8] = "G3-9"
		codigoProdutos [9] = "G3-10"

		inteiro estoque [10]
		estoque[0] = 10
		estoque[1] = 10
		estoque[2] = 10
		estoque[3] = 10
		estoque[4] = 10
		estoque[5] = 10
		estoque[6] = 10
		estoque[7] = 10
		estoque[8] = 10
		estoque[9] = 10

		inteiro  estoqueEscolhido[10]
		estoqueEscolhido[0] = 0
		estoqueEscolhido[1] = 0
		estoqueEscolhido[2] = 0
		estoqueEscolhido[3] = 0
		estoqueEscolhido[4] = 0
		estoqueEscolhido[5] = 0
		estoqueEscolhido[6] = 0
		estoqueEscolhido[7] = 0
		estoqueEscolhido[8] = 0
		estoqueEscolhido[9] = 0
		 
		real valoresdosProdutos[10]  
		valoresdosProdutos[0] = 30.00
		valoresdosProdutos[1] = 30.00
		valoresdosProdutos[2] = 50.00
		valoresdosProdutos[3] = 30.00
		valoresdosProdutos[4] = 40.00
		valoresdosProdutos[5] = 20.00
		valoresdosProdutos[6] = 60.00
		valoresdosProdutos[7] = 30.00
		valoresdosProdutos[8] = 15.00
		valoresdosProdutos[9] = 15.00

		cadeia carrinho[10]
		carrinho[0] = " "
		carrinho[1] = " "
		carrinho[2] = " "
		carrinho[3] = " "
		carrinho[4] = " "
		carrinho[5] = " "
		carrinho[6] = " "
		carrinho[7] = " "
		carrinho[8] = " "
		carrinho[9] = " "

		inteiro QUANTIDADE = 11

		//Variáveis -----------------------------------------------------------------------------
		real valorTotal = 0.0, valorFinal = 0.0
		inteiro x=0
		caracter desejaComprar = 'x', continuarCompra = 'x', opcaoPgto= 'x'
		//---------------------------------------------------------------------------------------
		
		//TELA INICIAL DO E-COMMERCE ------------------------------------------------------------
		enquanto(opcaoPgto=='x'ou opcaoPgto=='1' ou opcaoPgto=='2' ou opcaoPgto=='3'){
		    	escreva ("Livraria Gen\n")//nome da loja
		    	escreva ("Slogan -a definir\n\n")//nome do slogan
	
			escreva ("Olá, deseja fazer uma compra ? S/N: ")
			leia(desejaComprar)
			limpa()
			enquanto (desejaComprar != 'S' e desejaComprar != 's' e desejaComprar != 'N' e desejaComprar != 'n'){
				escreva("Opção Inválida, escreva S ou N\n")
				escreva ("Olá, deseja fazer uma compra ? S/N: ")
			leia(desejaComprar)
			limpa()
				
			}
		
		//----------------------------------------------------------------------------------------	
			para(inteiro y=0; y<QUANTIDADE; y++){
				

				//MOSTRA A LISTA DE PRODUTOS
				se(desejaComprar == 's' ou desejaComprar == 'S'){
					escreva("Código:\tLivros:\t                       Valores:\tEstoque:\n")

					QUANTIDADE = 11 //Controla o laço
					
					para( x=0; x<10; x++){
						escreva(codigoProdutos[x]+"\t"+nomeProdutos[x]+"\t"+valoresdosProdutos[x]+"\t"+estoque[x]+"\n")
					}
					
					escreva("\n")
				}
				senao{
					escreva("\n\nATÉ BREVE!!!!")
					opcaoPgto = '0' //Finaliza o laço ENQUANTO
					pare
				}
	
				
				escreva("Selecione o código do produto que você deseja: ")
				leia(codigoEscolhido)
				
				//MOSTRA O PRODUTO SELECIONADO SELECIONA A QUANTIDADE E ADICIONA NO CARRINHO
				para(x=0; x<10; x++){
					se (codigoEscolhido == codigoProdutos[x]){
						limpa()
						escreva ("Código:\tLivro:\t                      Valores:\tEstoque:\n")
						escreva (codigoProdutos[x]+"\t"+nomeProdutos[x]+"\t"+valoresdosProdutos[x]+"\t"+estoque[x]+"\n")
						escreva ("\n")
						
						escreva ("Digite a quantidade necessária: ")
						leia(estoqueEscolhido[x])
						
						
						se (estoqueEscolhido[x] <= estoque[x] e carrinho[x]==" " e estoqueEscolhido[x]>0) {
							limpa()
							
							escreva ("CARRINHO\n")
							escreva ("Código:\tLivro:\t                      Valor:\tQuantidade:\n")
							carrinho[x]=codigoProdutos[x]+"\t"+nomeProdutos[x]+"\tR$"+(valoresdosProdutos[x]*estoqueEscolhido[x])+"\t   "+estoqueEscolhido[x]+"\n"
							
							para(inteiro c=0; c<10; c++){
								se(carrinho[c] != " "){
									escreva (carrinho[c])
									valorTotal = valoresdosProdutos[x]*estoqueEscolhido[x]
								}
							}
							
							valorFinal = valorTotal+valorFinal
							
							escreva ("Continuar a compra ? S/N ")
							leia(continuarCompra)
							limpa()// Limpa para a lista de produtos
							enquanto (continuarCompra != 'S' e continuarCompra != 's' e continuarCompra != 'N' e continuarCompra != 'n'){
								escreva("Opção Inválida, escreve S ou N\n")
								escreva ("Continuar a compra ? S/N ")
								leia(continuarCompra)
							}
							enquanto (carrinho[0] != " " e carrinho[1] != " " e carrinho[2] != " " e carrinho[3] != " " e carrinho[4] != " " e carrinho[5] != " " e carrinho[6] != " " e carrinho[7] != " " e carrinho[8] != " " e carrinho[9] != " "){
								escreva("Carrinho cheio, finalize sua compra")
													
								escreva ("\nContinuar a compra ? S/N ")
								leia(continuarCompra)
								limpa()
								se(continuarCompra == 'n' ou continuarCompra == 'N'){
									pare
								}
							}
						}
						senao se (estoqueEscolhido[x] > estoque[x]) {
							limpa()
							escreva("\n\nDesculpe, estoque indisponível.\n\n")
							pare
						}
						senao se (carrinho[x]!=" ") {
							limpa()
							escreva("\n\nNão é possível adicionar dois produtos iguais. Escolha outro.\n\n")
							pare
						}
						senao se (estoqueEscolhido[x]<=0){
							limpa()
							escreva("\nQuantidade inválida\n\n")
							pare
							
						}
					}
					senao se (codigoEscolhido != codigoProdutos[0] e codigoEscolhido != codigoProdutos[1] e codigoEscolhido != codigoProdutos[2] e codigoEscolhido != codigoProdutos[3] e codigoEscolhido != codigoProdutos[4] e codigoEscolhido != codigoProdutos[5] e codigoEscolhido != codigoProdutos[6] e codigoEscolhido != codigoProdutos[7] e codigoEscolhido != codigoProdutos[8] e codigoEscolhido != codigoProdutos[9]) {
						limpa()
						escreva("\nProduto inválido\n\n")
						pare
					}	
					
				}
				
				
				
				se(continuarCompra == 's' ou continuarCompra == 'S'){
						QUANTIDADE ++ //roda o para de novo
						
						
				}
				senao se(continuarCompra == 'n' ou continuarCompra == 'N'){
						
					escreva("LIVRARIA GEN\n")
					escreva("\nValor a pagar: "+valorFinal)
					escreva("\nEsse produto teve 9% de tributos = R$"+math.arredondar(valorFinal*0.09,2))
	
					//opção de pagamento
					escreva("\nOpções de pagamento")
					escreva("\nOpção 1 - A vista com 10% de desconto: "+ (valorFinal - (valorFinal*0.10) ))	
					escreva("\nOpção 2 - No cartão com acrescimento de 10%: " + (valorFinal + (valorFinal*0.10) ))
					escreva("\nOpção 3- Em 2x(acrescimento de 15%): "+(valorFinal + (valorFinal*0.15) ) +" 2 vezes de "+ ((valorFinal + (valorFinal*0.15))/2 ) )
					escreva("\nDigite a opção que você prefere: ")
					leia(opcaoPgto)
					
					enquanto (opcaoPgto != '1' e opcaoPgto != '2' e opcaoPgto != '3' ){
							limpa()
							escreva("Opção Inválida, digite 1,2 ou 3\n")
							escreva("\nOpções de pagamento")
							escreva("\nOpção 1 - A vista com 10% de desconto: "+ (valorFinal - (valorFinal*0.10) ))	
							escreva("\nOpção 2 - No cartão com acrescimento de 10%: " + (valorFinal + (valorFinal*0.10) ))
							escreva("\nOpção 3- Em 2x(acrescimento de 15%): "+(valorFinal + (valorFinal*0.15) ) +" 2 vezes de "+ ((valorFinal + (valorFinal*0.15))/2 ) )
							escreva("\nDigite a opção que você prefere: ")
							leia(opcaoPgto)
					}
					se (opcaoPgto == '1'){
						
					
						limpa()
						escreva("CUPOM FISCAL\n")
						escreva("Item\t                        Código\t Vl Unit\t Quant\t Total Unit\n")
						para(x=0;x<10;x++){
							se (estoqueEscolhido[x]!=0){
                              	 escreva(nomeProdutos[x]+"\t"+codigoProdutos[x]+"\t    "+valoresdosProdutos[x]+"\t   "+estoqueEscolhido[x]+"\t   "+(valoresdosProdutos[x]*estoqueEscolhido[x])+"\n")
							}
						}
						escreva("\n")
						escreva("Imposto\t Forma de Pagamento\n")
						escreva( "9%\t   A/V\n\n")
						escreva("Valor Total\n")
						escreva(valorFinal+"\n\n")

							para (x=0;x<10;x++){
						estoque[x]= estoque[x]- estoqueEscolhido[x]
						estoqueEscolhido[x]=0
						carrinho[x]=" "
						continuarCompra='x'
						}
						
						
					}
						
					senao se (opcaoPgto == '2'){
						limpa()
						escreva("CUPOM FISCAL\n")
						escreva("Item\t                        Código\t Vl Unit\t Quant\t Total Unit\n")
						para(x=0;x<10;x++){
							se (estoqueEscolhido[x]!=0){
                              	 escreva(nomeProdutos[x]+"\t"+codigoProdutos[x]+"\t    "+valoresdosProdutos[x]+"\t   "+estoqueEscolhido[x]+"\t   "+(valoresdosProdutos[x]*estoqueEscolhido[x])+"\n")
							}
						}
						escreva("\n")
						escreva("Imposto\t Forma de Pagamento\n")
						escreva( "9%\t   C/C\n\n")
						escreva("Valor Total\n")
						escreva((valorFinal+(valorFinal*0.10))+"\n\n")
						para (x=0;x<10;x++){
						estoque[x]= estoque[x]- estoqueEscolhido[x]
						estoqueEscolhido[x]=0
						carrinho[x]=" "
						continuarCompra='x'
						}
						
					}
	
					senao se (opcaoPgto == '3'){
						limpa()
						escreva("CUPOM FISCAL\n")
						escreva("Item\t                        Código\t Vl Unit\t Quant\t Total Unit\n")
						para(x=0;x<10;x++){
							se (estoqueEscolhido[x]!=0){
                              	 escreva(nomeProdutos[x]+"\t"+codigoProdutos[x]+"\t    "+valoresdosProdutos[x]+"\t   "+estoqueEscolhido[x]+"\t   "+(valoresdosProdutos[x]*estoqueEscolhido[x])+"\n")
							}
						}
						escreva("\n")
						escreva("Imposto\t Forma de Pagamento\n")
						escreva( "9%\t   2X C/C\n\n")
						escreva("Valor Total\n")
						escreva((valorFinal+(valorFinal*0.15))+"\n\n")
						para (x=0;x<10;x++){
						estoque[x]= estoque[x]- estoqueEscolhido[x]
						estoqueEscolhido[x]=0
						carrinho[x]=" "
						continuarCompra='x'
						}
						
					}
					senao{
						limpa()
						escreva("\nEntrar com opção válida\n.")
					}
										
					pare
				}
			
			}//fecha o para geral
		}//fecha enquanto geral
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9591; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */