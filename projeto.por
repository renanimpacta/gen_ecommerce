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

		cadeia codigoProdutos [10], codigoEscolhido
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

		inteiro estoque [10], estoqueEscolhido
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

		inteiro QUANTIDADE = 3

		//Variáveis -----------------------------------------------------------------------------
		real valorTotal = 0.0, valorFinal = 0.0
		caracter desejaComprar = 'x', continuarCompra = 'x', opcaoPgto= 'x'
		//---------------------------------------------------------------------------------------
		
		//TELA INICIAL DO E-COMMERCE ------------------------------------------------------------
		enquanto(opcaoPgto=='x'ou opcaoPgto=='1' ou opcaoPgto=='2' ou opcaoPgto=='3'){
		    	escreva ("...:::|LIVRARIA GEN|:::...\n")//nome da loja
		    	escreva (" Leia um livro e vá além\n\n")//nome do slogan
	
			escreva ("Olá, deseja fazer uma compra ? Sim(S)/Não(N): ")
			leia(desejaComprar)
			limpa()
		
		//----------------------------------------------------------------------------------------	
			para(inteiro y=0; y<QUANTIDADE; y++){

				//MOSTRA A LISTA DE PRODUTOS
				se(desejaComprar == 's' ou desejaComprar == 'S'){
					escreva("Código:\tLivros:\t                       Valores:\tEstoque:\n")

					QUANTIDADE = 3 //Controla o laço
					
					para(inteiro x=0; x<10; x++){
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
				para(inteiro x=0; x<10; x++){
					se (codigoEscolhido == codigoProdutos[x]){
						limpa()
						escreva("LIVRO ESCOLHIDO\n\n")
						escreva ("Código:\tLivro:\t                      Valores:\tEstoque:\n")
						escreva (codigoProdutos[x]+"\t"+nomeProdutos[x]+"\t"+valoresdosProdutos[x]+"\t"+estoque[x]+"\n")
						escreva ("\n")
						
						escreva ("Digite a quantidade necessária: ")
						leia(estoqueEscolhido)
						
						se (estoqueEscolhido <= estoque[x] e carrinho[x]==" ") {
							limpa()
							
							escreva ("CARRINHO\n\n")
							escreva ("Código:\tLivro:\t                      Valor:\tQuantidade:\n")
							carrinho[x]=codigoProdutos[x]+"\t"+nomeProdutos[x]+"\tR$"+(valoresdosProdutos[x]*estoqueEscolhido)+"\t   "+estoqueEscolhido+"\n"
							para(inteiro c=0; c<10; c++){
								se(carrinho[c] != " "){
									escreva (carrinho[c])
									valorTotal = valoresdosProdutos[x]*estoqueEscolhido
								}
							}
							escreva("\n")
							
							valorFinal = valorTotal+valorFinal
							
							escreva ("Continuar a compra ? Sim(S)/Não(N): ")
							leia(continuarCompra)
							limpa()
						}
						senao se (estoqueEscolhido > estoque[x]) {
							escreva("\n\nDesculpe, estoque indisponível.\n\n")
						}
						senao {
							escreva("\n\nNão é possível adicionar dois produtos iguais. Escolha outro.\n\n")
						}
						
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
	
					se (opcaoPgto == '1'){
						escreva("\nPago à vista\n")
					}
						
					senao se (opcaoPgto == '2'){
						escreva("\nCartão com acrescimo\n")
					}
	
					senao se (opcaoPgto == '3'){
						escreva("\n2x (acrescimento de 15%)\n")
					}
					senao{
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
 * @POSICAO-CURSOR = 4322; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {QUANTIDADE, 69, 10, 10}-{y, 86, 16, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */