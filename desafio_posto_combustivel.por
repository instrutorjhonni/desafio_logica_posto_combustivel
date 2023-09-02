programa
{
	const real GC = 5.199
	const real GA = 5.229
	const real ET = 4.999
	const real DI = 6.299
	const cadeia MSG_INVALIDO = "ATENÇÃO! \nOpção Inválida! \nO programa será encerrado...!"
	const cadeia MENU_COMBUSTIVEL = "+------------------ POSTOS PROWAY ------------------+\n|---------------------------------------------------|\n|          Selecione o combustível desejado         |\n+---------------------------------------------------+\n| 1- Gasolina Comum           2- Gasolina Aditivada |\n| 3- Etanol                   4- Díesel             |\n+---------------------------------------------------+\n"
	const cadeia MENU_OPCOES = "+-------------------------------------------+\n| Selecione a opção para abastecimento      |\n| 1- Informar litros desejados              |\n| 2- Informar valor que deseja pagar        |\n+-------------------------------------------+\n"
	const cadeia MSG_LITROS_DESEJADOS = "Informe quantos litros deseja abastecer:\n"
	const cadeia MSG_VALOR_DESEJADO = "Informe o valor que deseja pagar para o combustível:\n"
	const cadeia MSG_TOTAL_PAGAR = "Total a pagar: "
	const cadeia MSG_TOTAL_LITROS = "Volume abastecido: "
	const cadeia CIFRAO = " R$ "
	const cadeia LT = " litros."
	inteiro opcao
	real vl_pagar, t_litros, pr_descontoCadastro = 0., pr_desconto = 0.
	logico ehCadastrado = falso
	
	funcao inicio()
	{
		limpa()
		escreva("\nCliente já cadastrado? ")
		escreva("\n1- Sim | 2- Não ")
		leia ( opcao )
		se ( opcao == 1 ) 
			ehCadastrado = verdadeiro
		escreva(MENU_COMBUSTIVEL)
		leia( opcao )
		escolha ( opcao )
		{
			caso 1:
					limpa()
					escreva(MENU_OPCOES)
					leia ( opcao )
					escolha ( opcao )
					{
						caso 1:
							limpa()
							escreva(MSG_LITROS_DESEJADOS)
							leia( t_litros )
							limpa()
							se ( ehCadastrado ) 
								pr_descontoCadastro = 0.03
							se ( t_litros >= 30 )
							{
								se ( t_litros < 50 )
									pr_desconto = 0.09
								senao
									pr_desconto = 0.05
							}
							escreva(MSG_TOTAL_PAGAR , CIFRAO , ( GC * t_litros ) - ( GC * t_litros * ( pr_desconto + pr_descontoCadastro )) ) 
							pare
						caso 2:
							limpa()
							escreva(MSG_VALOR_DESEJADO)
							leia( vl_pagar )
							limpa()
							se ( ( vl_pagar / GC ) >= 30 )
							{
								se ( ( vl_pagar / GC ) < 50 )
									pr_desconto = 0.09
								senao
									pr_desconto = 0.05
							}
							escreva(MSG_TOTAL_LITROS , ( vl_pagar /  GC ) + ( ( vl_pagar / GC ) * pr_desconto ) , LT)
							pare
						caso contrario:
							limpa()
							escreva(MSG_INVALIDO)
					}
					pare
			caso 2:
					limpa()
					escreva(MENU_OPCOES)
					leia ( opcao )
					escolha ( opcao )
					{
						caso 1:
							limpa()
							escreva(MSG_LITROS_DESEJADOS)
							leia( t_litros )
							limpa()
							escreva(MSG_TOTAL_PAGAR , CIFRAO , ( GA * t_litros ))
							pare
						caso 2:
							limpa()
							escreva(MSG_VALOR_DESEJADO)
							leia( vl_pagar )
							limpa()
							escreva(MSG_TOTAL_LITROS , ( vl_pagar / GA ) , LT)
							pare
						caso contrario:
							limpa()
							escreva(MSG_INVALIDO)
					}
					pare
			caso 3:
					limpa()
					escreva(MENU_OPCOES)
					leia ( opcao )
					escolha ( opcao )
					{
						caso 1:
							limpa()
							escreva(MSG_LITROS_DESEJADOS)
							leia( t_litros )
							limpa()
							escreva(MSG_TOTAL_PAGAR , CIFRAO , ( ET * t_litros ))
							pare
						caso 2:
							limpa()
							escreva(MSG_VALOR_DESEJADO)
							leia( vl_pagar )
							limpa()
							escreva(MSG_TOTAL_LITROS , ( vl_pagar / ET ) , LT)
							pare
						caso contrario:
							limpa()
							escreva(MSG_INVALIDO)
					}
					pare
			caso 4:
					limpa()
					escreva(MENU_OPCOES)
					leia ( opcao )
					escolha ( opcao )
					{
						caso 1:
							limpa()
							escreva(MSG_LITROS_DESEJADOS)
							leia( t_litros )
							limpa()
							escreva(MSG_TOTAL_PAGAR , CIFRAO , ( DI * t_litros ))
							pare
						caso 2:
							limpa()
							escreva(MSG_VALOR_DESEJADO)
							leia( vl_pagar )
							limpa()
							escreva(MSG_TOTAL_LITROS , ( vl_pagar / DI ) , LT)
							pare
						caso contrario:
							limpa()
							escreva(MSG_INVALIDO)
					}
					pare
			caso contrario:
					limpa()
					escreva(MSG_INVALIDO)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1614; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */