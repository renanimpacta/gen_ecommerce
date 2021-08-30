programa
{
	inclua biblioteca Matematica --> math
	inclua biblioteca Util
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
		cadeia desejaComprar = "", continuarCompra = "", opcaoPgto= ""
		//---------------------------------------------------------------------------------------
		
		//TELA INICIAL DO E-COMMERCE ------------------------------------------------------------
		enquanto(opcaoPgto=="" ou opcaoPgto=="1" ou opcaoPgto=="2" ou opcaoPgto=="3"){
		    	escreva ("..::|Livraria Gen|::..\n")//nome da loja
		    	escreva ("Leia um livro e vá além\n\n")//nome do slogan
	
			escreva ("Olá, deseja fazer uma compra ? Sim(S)/Não(N): ")
			leia(desejaComprar)
			limpa()
			enquanto (desejaComprar != "S" e desejaComprar != "s" e desejaComprar != "N" e desejaComprar != "n"){
				escreva("<Opção Inválida, escreva (S) ou (N)>\n\n")
				escreva ("Olá, deseja fazer uma compra ? Sim(S)/Não(N): ")
			leia(desejaComprar)
			limpa()
				
			}
		
		//----------------------------------------------------------------------------------------	
			para(inteiro y=0; y<QUANTIDADE; y++){
				

				//MOSTRA A LISTA DE PRODUTOS
				se(desejaComprar == "s" ou desejaComprar == "S"){
					escreva("Código:\tLivros:\t                       Valores:\tEstoque:\n")

					QUANTIDADE = 11 //Controla o laço
					
					para( x=0; x<10; x++){
						escreva(codigoProdutos[x]+"\t"+nomeProdutos[x]+"\t"+valoresdosProdutos[x]+"\t"+estoque[x]+"\n")
					}
					
					escreva("\n")
				}
				senao{
					escreva("\n\nATÉ BREVE!!!!")
					opcaoPgto = "0" //Finaliza o laço ENQUANTO
					pare
				}
	
				
				escreva("Selecione o código do produto que você deseja: ")
				leia(codigoEscolhido)
				
				//MOSTRA O PRODUTO SELECIONADO SELECIONA A QUANTIDADE E ADICIONA NO CARRINHO
				para(x=0; x<10; x++){
					se (codigoEscolhido == codigoProdutos[x]){
						limpa()
						escreva("<LIVRO ESCOLHIDO>\n\n")
						escreva ("Código:\tLivro:\t                        Valores:\tEstoque:\n")
						escreva (codigoProdutos[x]+"\t"+nomeProdutos[x]+"\tR$"+valoresdosProdutos[x]+"\t         "+estoque[x]+"\n")
						escreva ("\n")
						
						escreva ("Digite a quantidade necessária: ")
						leia(estoqueEscolhido[x])
						
						
						se (estoqueEscolhido[x] <= estoque[x] e carrinho[x]==" " e estoqueEscolhido[x]>0) {
							limpa()
							
							escreva ("<CARRINHO>\n\n")
							escreva ("Código:\tLivro:\t                      Valor:\tQuantidade:\n")
							carrinho[x]=codigoProdutos[x]+"\t"+nomeProdutos[x]+"\tR$"+(valoresdosProdutos[x]*estoqueEscolhido[x])+"\t   "+estoqueEscolhido[x]+"\n"
							
							para(inteiro c=0; c<10; c++){
								se(carrinho[c] != " "){
									escreva (carrinho[c])
									valorTotal = valoresdosProdutos[x]*estoqueEscolhido[x]
								}
							}
							escreva("\n")
							
							valorFinal = valorTotal+valorFinal
							
							escreva ("Continuar a compra ? Sim(S)/Não(N): ")
							leia(continuarCompra)
							limpa()// Limpa para a lista de produtos
							enquanto (continuarCompra != "S" e continuarCompra != "s" e continuarCompra != "N" e continuarCompra != "n"){
								escreva("<Opção Inválida, escreve (S) ou (N)>\n\n")
								escreva ("Continuar a compra ? Sim(S)/Não(N): ")
								leia(continuarCompra)
								limpa()
							}
							enquanto (carrinho[0] != " " e carrinho[1] != " " e carrinho[2] != " " e carrinho[3] != " " e carrinho[4] != " " e carrinho[5] != " " e carrinho[6] != " " e carrinho[7] != " " e carrinho[8] != " " e carrinho[9] != " "){
								escreva("Carrinho cheio, finalize sua compra")
													
								escreva ("\nContinuar a compra ? Sim(S)/Não(N) ")
								leia(continuarCompra)
								limpa()
								se(continuarCompra == "n" ou continuarCompra == "N"){
									pare
								}
							}
						}
						senao se (estoqueEscolhido[x] > estoque[x]) {
							limpa()
							escreva("\n\n<Desculpe, estoque indisponível - Escolha novamente!!>\n\n")
							contagem(5)
							limpa()
							pare
						}
						senao se (carrinho[x]!=" ") {
							limpa()
							escreva("\n\n<Não é possível adicionar dois produtos iguais. Escolha outro!!>\n\n")
							contagem(5)
							limpa()
							pare
						}
						senao se (estoqueEscolhido[x]<=0){
							limpa()
							escreva("\nQuantidade inválida - Escolha novamente!!\n\n")
							contagem(5)
							limpa()
							pare
							
						}
					}
					senao se (codigoEscolhido != codigoProdutos[0] e codigoEscolhido != codigoProdutos[1] e codigoEscolhido != codigoProdutos[2] e codigoEscolhido != codigoProdutos[3] e codigoEscolhido != codigoProdutos[4] e codigoEscolhido != codigoProdutos[5] e codigoEscolhido != codigoProdutos[6] e codigoEscolhido != codigoProdutos[7] e codigoEscolhido != codigoProdutos[8] e codigoEscolhido != codigoProdutos[9]) {
						limpa()
						escreva("\nProduto inválido\n\n")
						pare
					}	
					
				}
				
				
				
				se(continuarCompra == "s" ou continuarCompra == "S"){
						QUANTIDADE ++ //roda o para de novo
						
						
				}
				senao se(continuarCompra == "n" ou continuarCompra == "N"){
						
					escreva("..::|Livraria Gen|::..\n\n")
					escreva("\nValor a pagar: R$"+valorFinal)
					escreva("\nEsse produto teve 9% de tributos = R$"+math.arredondar(valorFinal*0.09,2))
	
					//opção de pagamento
					escreva("\n\n<Opções de pagamento>")
					escreva("\nOPÇÃO (1) - A vista com 10% de desconto: R$"+ (valorFinal - (valorFinal*0.10) ))	
					escreva("\nOPÇÃO (2) - No cartão com acrescimento de 10%: R$" + (valorFinal + (valorFinal*0.10) ))
					escreva("\nOPÇÃO (3) - Em 2x(acrescimento de 15%): R$"+(valorFinal + (valorFinal*0.15) ) +" 2 vezes de "+ ((valorFinal + (valorFinal*0.15))/2 ) )
					escreva("\n\nDigite a opção que você prefere: ")
					leia(opcaoPgto)
					
					enquanto (opcaoPgto != "1" e opcaoPgto != "2" e opcaoPgto != "3" ){
						limpa()
						escreva("<Opção Inválida, digite (1),(2) ou (3)>\n\n")
						escreva("<Opções de pagamento>")
						escreva("\nOPÇÃO (1) - A vista com 10% de desconto: R$"+ (valorFinal - (valorFinal*0.10) ))	
						escreva("\nOPÇÃO (2) - No cartão com acrescimento de 10%: R$" + (valorFinal + (valorFinal*0.10) ))
						escreva("\nOPÇÃO (3) - Em 2x(acrescimento de 15%): R$"+(valorFinal + (valorFinal*0.15) ) +" 2 vezes de "+ ((valorFinal + (valorFinal*0.15))/2 ) )
						escreva("\n\nDigite a opção que você prefere: ")
							leia(opcaoPgto)
					}
					se (opcaoPgto == "1"){
						limpa()
						escreva("!!!!!PARABÉNS PELA COMPRA - APROVEITE O(S) LIVRO(S) - VOLTE SEMPRE!!!!!!\n\n")
						escreva("==========================================================================\n")
						escreva("CUPOM FISCAL\n")
						escreva("ITEM:\t                        CÓDIGO\t  VL UNIT\t QUANT\t TOTAL UNIT\n")
						para(x=0;x<10;x++){
							se (estoqueEscolhido[x]!=0){
                              	 escreva(nomeProdutos[x]+"\t"+codigoProdutos[x]+"\t   R$"+valoresdosProdutos[x]+"\t   "+estoqueEscolhido[x]+"\t  R$"+(valoresdosProdutos[x]*estoqueEscolhido[x])+"\n")
							}
						}
						escreva("\n")
						escreva("IMPOSTO\t FORMA DE PAGAMENTO\n")
						escreva( "9%\t   A/V (-10%)\n\n")
						escreva("VALOR TOTAL\n")
						escreva("R$"+(valorFinal - (valorFinal*0.10))+"\n")
						escreva("==========================================================================\n\n")

						para (x=0;x<10;x++){
						estoque[x]= estoque[x]- estoqueEscolhido[x]
						estoqueEscolhido[x]=0
						carrinho[x]=" "
						continuarCompra=""
						}

						contagem(10)
						limpa()
						
					}
						
					senao se (opcaoPgto == "2"){
						
						limpa()
						escreva("!!!!!PARABÉNS PELA COMPRA - APROVEITE O(S) LIVRO(S) - VOLTE SEMPRE!!!!!!\n\n")
						escreva("==========================================================================\n")
						escreva("CUPOM FISCAL\n")
						escreva("ITEM:\t                        CÓDIGO\t  VL UNIT\t QUANT\t TOTAL UNIT\n")
						para(x=0;x<10;x++){
							se (estoqueEscolhido[x]!=0){
                              	 escreva(nomeProdutos[x]+"\t"+codigoProdutos[x]+"\t   R$"+valoresdosProdutos[x]+"\t   "+estoqueEscolhido[x]+"\t  R$"+(valoresdosProdutos[x]*estoqueEscolhido[x])+"\n")
							}
						}
						escreva("\n")
						escreva("IMPOSTO\t FORMA DE PAGAMENTO\n")
						escreva( "9%\t   C/C (+10%)\n\n")
						escreva("VALOR TOTAL\n")
						escreva("R$"+(valorFinal+(valorFinal*0.10))+"\n")
						escreva("==========================================================================\n\n")
						
						para (x=0;x<10;x++){
						estoque[x]= estoque[x]- estoqueEscolhido[x]
						estoqueEscolhido[x]=0
						carrinho[x]=" "
						continuarCompra=""
						}
						
						contagem(10)
						limpa()
						
					}
	
					senao se (opcaoPgto == "3"){
						limpa()
						escreva("!!!!!PARABÉNS PELA COMPRA - APROVEITE O(S) LIVRO(S) - VOLTE SEMPRE!!!!!!\n\n")
						escreva("==========================================================================\n")
						escreva("CUPOM FISCAL\n")
						escreva("ITEM:\t                        CÓDIGO\t  VL UNIT\t QUANT\t TOTAL UNIT\n")
						para(x=0;x<10;x++){
							se (estoqueEscolhido[x]!=0){
                              	 escreva(nomeProdutos[x]+"\t"+codigoProdutos[x]+"\t   R$"+valoresdosProdutos[x]+"\t   "+estoqueEscolhido[x]+"\t  R$"+(valoresdosProdutos[x]*estoqueEscolhido[x])+"\n")
							}
						}
						escreva("\n")
						escreva("IMPOSTO\t FORMA DE PAGAMENTO\n")
						escreva( "9%\t   2x C/C (+15%)\n\n")
						escreva("VALOR TOTAL\n")
						escreva("R$"+(valorFinal+(valorFinal*0.15))+"\nDuas vezes de (R$"+((valorFinal+(valorFinal*0.15))/2)+")\n")
						escreva("==========================================================================\n\n")
						
						para (x=0;x<10;x++){
						estoque[x]= estoque[x]- estoqueEscolhido[x]
						estoqueEscolhido[x]=0
						carrinho[x]=" "
						continuarCompra=""
						}

						contagem(10)
						limpa()
						
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

	funcao contagem(inteiro segundos){
		inteiro contador=segundos
		escreva("Você será redirecionado em... ")
		enquanto(contador > 0){
			escreva(contador+"..")
			contador = contador - 1
			Util.aguarde(1000)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9637; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */