# Nome da classe
class Dados
  # Método construtor
  def initialize(nome, idade,profissao)
    @nome = nome
    @idade = idade
    @profissao=profissao
  end

  # Método para exibir informações
  def dados
    puts "Olá, meu nome é #{@nome} com idade de #{@idade} anos e estudante da #{@profissao}."
  end
end

# Dados
pessoa = Dados.new("Tassiana Milka", 22,"Tecnologia")


# Chamando o método 
pessoa.dados
