#Realiza uma API REST de CPF e Localização de país definido como usuarios.


require 'sinatra'
require 'json'

# "Banco de dados" em memória
USUARIOS = []

# Adicionar
post '/usuarios' do
  content_type :json
  dados = JSON.parse(request.body.read)
  usuario = { id: USUARIOS.size + 1, cpf: dados["cpf"], local: dados["local"] }
  USUARIOS << usuario
  usuario.to_json
end

# Lista
get '/usuarios' do
  content_type :json
  USUARIOS.to_json
end

# Busca do usuário
get '/usuarios/:id' do
  content_type :json
  usuario = USUARIOS.find { |u| u[:id] == params[:id].to_i }
  halt 404, { mensagem: "Usuário não encontrado" }.to_json unless usuario
  usuario.to_json
end

# Atualização
put '/usuarios/:id' do
  content_type :json
  usuario = USUARIOS.find { |u| u[:id] == params[:id].to_i }
  halt 404, { mensagem: "Usuário não encontrado" }.to_json unless usuario
  dados = JSON.parse(request.body.read)
  usuario[:cpf]  = dados["cpf"]  if dados["local"]
  usuario[:local] = dados["local"] if dados["local"]
  usuario.to_json
end

# Remover
delete '/usuarios/:id' do
  content_type :json
  usuario = USUARIOS.find { |u| u[:id] == params[:id].to_i }
  halt 404, { mensagem: "Usuário não encontrado" }.to_json unless usuario
  USUARIOS.delete(usuario)
  { mensagem: "Usuário removido com sucesso" }.to_json
end
