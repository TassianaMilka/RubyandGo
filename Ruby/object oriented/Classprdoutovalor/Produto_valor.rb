#Realiza um código destinado a saber o nome de um produto,preço e desconto.
 
# Nome da classe
class Produto_valor
  # Método construtor
  def initialize(nome_produto, preco,desconto)
    @nome_produto = nome_produto;
    @preco=preco;
    @desconto=desconto;
    @calculo=preco-desconto;
    
  end

  # Método para exibir informações
  def produto
    puts "#{@nome_produto} do valor de R$ #{@preco} com desconto #{@desconto} e preço final R$ #{@calculo}."
  end
end

# Dados
dados = Produto_valor.new("Blusa de Frio", 100,70)


# Chamando o método 
dados.produto
