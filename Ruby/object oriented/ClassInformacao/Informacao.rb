#Faça uma orientação a objeto sobre utilização de getter com setter e imprima os dados.

class Informacao #Nome da classe
  def initialize(dado)
    @dado = dado
    
  end
   
  # Getter
  def dado
    @dado
  end

  # Setter
  def dado=(novo_dado)
    @dado = novo_dado
  end
end

p = Informacao.new("O número de identificação de name é ........")
puts p.dado       
p.dado = "O número de identificação de nameO é ........"  
puts p.dado     
