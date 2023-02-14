programa
{
	
	inclua biblioteca Util --> u 
	

	inteiro lista[50] 
	
	
	funcao inicio(){
		menu()
	}


	funcao menu(){
		inteiro opcao = 1
		
		escreva("***\n")
		escreva("1 - Mega sena \n")
		escreva("2 - Quina \n")
		escreva("3 - Lotomania \n")
		escreva("4 - Lotofácil \n")
		escreva("**\n")
		
		escreva("Você deseja qual jogo ? ")
		leia(opcao)

	  escolha(opcao){

		caso 1: mega_sena()
		pare

		caso 2: quina()
		pare

		caso 3: lotomania()
		pare

		caso 4: lotofacil()
		pare

		caso contrario: escreva("opcao inválida")
		pare 

	  }
    }
    
    
	funcao mega_sena() {

		const real precos[21] = {0.0,0.0,0.0,0.0,0.0,0.0,4.50,31.50,126.0,378.0,945.0,2.079,4.158,7.722,13.513,22.522,36.036,55.692,83.538,122.094,174.420}
		const inteiro min = 1
		const inteiro max = 60

		inteiro qntdDezenas
		inteiro qntdApostas
		real custoDaJogatina

    		escreva("Quantos sorteios deseja fazer? ")
		leia(qntdApostas)

		escreva("Quantas dezenas você deseja? ")
		leia(qntdDezenas)

		enquanto (qntdDezenas < 6 ou qntdDezenas > 20){
			escreva("Erro! informe um valor válido? ")
			leia(qntdDezenas)
		}

		para(inteiro i=0; i < qntdApostas; i++){
			
			
 			escreva("\nsorteio :",i+1, "\n")
			sorteioDezenas(qntdDezenas, min, max)
			ordenarLista(qntdDezenas)
			mostra(qntdDezenas)
			
		}

		custoDaJogatina = qntdApostas * precos[qntdDezenas]

		escreva("\nO valor do jogo em reais é de: ", custoDaJogatina)
	}

	funcao quina() {

		const real precos[16] = {0.0,0.0,0.0,0.0,0.0,3.0,3.0,3.0,3.0,5.40,10.08,18.48,31.68,51.48,80.08,120.12}
		inteiro qntdDezenas
		inteiro qntdApostas
		real custoDaJogatina

		const inteiro min = 1
		const inteiro max = 80

    		escreva("Quantos sorteios deseja fazer? ")
		leia(qntdApostas)

		escreva("Quantas dezenas você deseja? ")
		leia(qntdDezenas)

		enquanto (qntdDezenas < 5 ou qntdDezenas > 15){
			escreva("Erro! informe um valor válido? ")
			leia(qntdDezenas)
		}

		para(inteiro i=0; i < qntdApostas; i++){
			
 			escreva("\nsorteio :",i+1, "\n")
			sorteioDezenas(qntdDezenas, min, max)
			ordenarLista(qntdDezenas)
			mostra(qntdDezenas)
		}
		custoDaJogatina = qntdApostas * precos[qntdDezenas]

		escreva("\nO valor do jogo em reais é de: ", custoDaJogatina)	
	}

	funcao lotomania() {

		const real precos [51] = {0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5}
		inteiro qntdDezenas
		inteiro qntdApostas
		real custoDaJogatina

		const inteiro min = 1
		const inteiro max = 100

    		escreva("Quantos sorteios deseja fazer? ")
		leia(qntdApostas)

		escreva("Quantas dezenas você deseja? ")
		leia(qntdDezenas)

		enquanto (qntdDezenas < 20 ou qntdDezenas > 50){
			escreva("Erro! informe um valor válido? ")
			leia(qntdDezenas)
		}

		para(inteiro i=0; i < qntdApostas; i++){
			
 			escreva("\nsorteio :",i+1, "\n")
			sorteioDezenas(qntdDezenas, min, max)
			ordenarLista(qntdDezenas)
			mostra(qntdDezenas)
		}
		custoDaJogatina = qntdApostas * precos[qntdDezenas]

		escreva("\nO valor do jogo em reais é de: ", custoDaJogatina)	
	}

	funcao lotofacil() {

		const real precos[21] = {0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,2.50,40.0,340.0,2.040,9.690,38.760}
		inteiro qntdDezenas
		inteiro qntdApostas
		real custoDaJogatina

		const inteiro min = 1
		const inteiro max = 25

    		escreva("Quantos sorteios deseja fazer? ")
		leia(qntdApostas)

		escreva("Quantas dezenas você deseja? ")
		leia(qntdDezenas)

		enquanto (qntdDezenas < 15 ou qntdDezenas > 20){
			escreva("Erro! informe um valor válido? ")
			leia(qntdDezenas)
		}

		para(inteiro i=0; i < qntdApostas; i++){
			
 			escreva("\nsorteio :",i+1, "\n")
			sorteioDezenas(qntdDezenas, min, max)
			ordenarLista(qntdDezenas)
			mostra(qntdDezenas)
		}
		custoDaJogatina = qntdApostas * precos[qntdDezenas]

		escreva("\nO valor do jogo em reais é de: ", custoDaJogatina)	
	}

      			
      		
      funcao sorteioDezenas(inteiro qntdDezenas, inteiro min, inteiro max){
		
		
		inteiro sorteado 
		logico esta_repetido
		
		para(inteiro i=0; i < qntdDezenas ; i++ ){

			esta_repetido = falso
			
			sorteado = sorteia(min, max)

			//verificar se o numero sorteado ja existe na lista 
			para(inteiro j=0; j < qntdDezenas; j++){
				se(sorteado == lista[j]){
					esta_repetido = verdadeiro
					pare
				}
			}

			se(nao esta_repetido){
				lista[i] = sorteado 	
			} senao {
				i--
			}
			
		}
		
	}

	funcao mostra(inteiro qntdDezenas){
		
		para(inteiro i=0; i < qntdDezenas; i++){
			escreva(lista[i], "-")
		}
	}

       
       
	funcao ordenarLista(inteiro qntdDezenas){
		
      	inteiro aux
      	
      	para(inteiro j=0; j < qntdDezenas -1; j++){
      		para(inteiro i=0; i < qntdDezenas - 1 -j; i++){
      			se(lista[i] > lista[i+1]){
      				aux = lista[i]
      				lista[i] = lista[i+1]
      				lista[i+1] = aux
      			}			
      		}
      	}
      }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4995; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */