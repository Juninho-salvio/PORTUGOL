Algoritmo "ATIVIDADE VIRTUAL 2 - SÁLVIO"
// Disciplina  :  ALGORITMO 2
// Professor   : Ernani Claudio Borges
// Descrição   :Vamos trabalhar com uma matriz e para determinar qual a
//              dimensao desta, vamos permitir que o usuario (cliente)
//              informe via teclado quantas linhas e quantas colunas ele
//              deseja.
//              Validar corretivamente durante a entrada para que o numero
//              de linhas e numero de colunas sejam maiores que 1 (um)
//              e menores ou igual a 50 (cinquenta) e que o numero de colunas
//              seja diferente do numero de linhas.
//              Apos a definicao da dimensao da matriz (quantas linhas e
//              quantas colunas), vamos receber os numeros que o usuario
//              deseja digitar, porem, vamos validar corretivamente durante
//              a entrada para que nao haja numeros repetidos na matriz.
//              Apos a entrada, processar e mostrar a matriz em sua forma
//              de entrada.
//
//                          Observacoes e distribuicao de pontos:
//      1) (3,0) criar uma UNICA funcao para validar o numero de linhas e
//          numeros de colunas entre 2 e 50, bem como o numero de colunas
//          diferente do numero de linhas;
//      2) (10,0) Voce deve receber o numero na posicao atual da matriz, e
//         verificar se ele ja existe nas posicoes anteriores, caso ja exista,
//         receber outro numero nesta mesma posicao e tornar a verificar.
//         Caso nao exista, mante-lo na posicao e passar para proxima posicao
//         da matriz e receber o proximo numero.
//      3) (2,0) mostrar a matriz.
//
//                                      Importante:
//      a) Voce pode fazer utilizando o editor VISUALG e postar o arquivo no
//         ambiente. Nao esqueca de se identificar dentro do arquivo
//        (Nome, Polo, tipo da atividade), bem como no nome do arquivo.
//      b) Nao usar vetor para auxiliar na validacao.
//
// Autor(a)    : Sálvio de Oliveira Santos Júnior
//          CPF: 045.953.076 - 32   Polo DIVINÓPOLIS
// Data atual  : 05/04/2019

//------------------------------------------------------------------------------
// FUNÇAO EM RELAÇÃO AOS ITENS CITADOS NA OBSERVAÇÃO NUMERO 1

   FUNCAO Valida_mat ( LINHAS,COLUNAS:INTEIRO ):LOGICO
          INICIO
          se (LINHAS > 1) e (LINHAS <= 50) e (COLUNAS > 1) e (COLUNAS <= 50) e (LINHAS <> COLUNAS) entao
             retorne verdadeiro
          senao
               retorne falso
          fimse
   fimfuncao

//------------------------------------------------------------------------------
Var
   // VARIAVEL Principal
   coluna, linha :                   inteiro
   mat    : vetor[ 1..50, 1..50 ] de inteiro
   L, C , L1, C1, valor, boa, a, b:  inteiro
   igual:                            logico
   



//Principal GLOBAL
//---------------------------------------------------------------------------
Inicio
//CRIAÇÃO DO PROGRAMA, DADOS DA MATRIZ

      linha <- 1
      coluna <- 1
      enquanto (linha <> 0) E (coluna <> 0) faca


   escreval("       CRIAR UMA MATRIZ")
   escreval("       ----------------")
   escreval
   escreval("O numero de LINHAS deve conter entre 2 e 50")
   escreval("e o numero de COLUNAS deve conter entre 2 e 50")
   escreval
   escreval("OBS: números fora do padrão dará erro")
   escreval
   escreva("     1) Escreva o numero de LINHAS desejada: ")
   leia(linha)
   escreval
   escreva("     2) Escreva o numero de COLUNAS desejada: ")
   leia(coluna)
   escreval
   escreval

//VALIDAÇAO DA MATRIZ EM RELAÇÃO A FUNÇÃO(LINHA43)
//------------------------------------------------------------------------------

      se (Valida_mat ( linha, coluna ) = falso) entao
        limpatela
        escreval
        escreval(" MATRIZ INVALIDA ")
        escreval
        escreval("  **  DIGITE NOVAMENTE  **")
        escreval
        escreval

      senao
           se (Valida_mat(linha, coluna) = VERDADEIRO) entao
             L <- 1
             enquanto (L <= linha) faca
                C <- 1
              enquanto (C <= coluna) faca
                 escreval
                 escreval("Posição: LINHA:", L ," - COLUNA ", C)
                 leia(valor)
//linha atribuida com 1
                    L1 <- 1
//coluna atribuida com 1
                    C1 <- 1

                    igual <- FALSO
//procura se tem algum valor igual

           para L1 <- 1 ate L faca
                se (L1 = L) e (L >=1) entao
                   boa <- C-1
                senao
                   boa <- coluna
                fimse
           
              para C1 <- 1 ate boa faca
                  se ( mat[L1,C1]) = valor entao
                     igual <- VERDADEIRO
                     a <- L1
                     b <- C1
                  fimse
              fimpara
           fimpara
           
               se (igual = VERDADEIRO) entao
                  escreval
                  escreval
                  escreval("Valor ja foi digitado. ESTA NA LINHA ", a ," COLUNA ", b )
                  escreval
                  escreval(" *********       TENTE OUTRO VALOR    ***********")
                  escreval("=================================================")
                  escreval
                  escreval
               senao
                  mat[L,C] <- valor
                  C <- C + 1
               fimse
               
              fimenquanto  //referente a linha 106
                  L <- L + 1
             fimenquanto //referente a linha 104
      

      
// Matriz formada PROGRAMA FINALIZADO
   limpatela
   escreval
   escreval
   escreval("               MATRIZ")
   escreval("               ======")
   escreval
   escreval
   escreval(" Matriz possui ", linha , " linhas e " , coluna , " colunas")
   escreval
   escreval
   
      para L <- 1 ate linha  faca
         para C <- 1 ate coluna faca
         
            se C = 1 entao
               escreval
               escreva( "{ ", mat[L,C]:4 , " } " )
            senao
               escreva( "{ ", mat[L,C]:4 , " } " )
            fimse
         fimpara
      fimpara
      escreval
      
         linha <- 0
         coluna <- 0
         
      fimse
      
//finalizado
      escreval
      escreval
      escreval("*************************************************")
      escreval("                    acabou")
      escreval("*************************************************")
      escreval("     The End")
      escreval

      fimse
      fimenquanto

Fimalgoritmo