//Faça um código destinado para saber o cáclulo de valores  da soma R$1.569,00 e R$80,00 e menos R$120,00 o seu resultado final.

package main //Ponto de entrada

import "fmt" //format(formatação para imprimir o println)

func main() {

   //Declaração de variavel e realização do cálculo
    
   var calculo float64=1569/80-120;

    //Imprimir o resultado
    
    fmt.Println("O valor final R$",calculo);
}
