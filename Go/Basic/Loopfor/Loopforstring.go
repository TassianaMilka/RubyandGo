
//Em um código contém no loop 200 e precisa imprimir só uma única vez a mensagem como podemos resolver?


package main //Ponto de entrada

import "fmt" //format(formatação para imprimir o println)

func main() {

     //Declaração da variável string
     string :="[Compreender Lógica de Programação é importante]";

    //Laço de loop
    for i:=0;i<200;i++{


    //Imprimir a string
    fmt.Println(string);

        
  
       
         break;
   }

}
