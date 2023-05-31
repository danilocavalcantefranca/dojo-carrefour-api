Quando('realizar a consulta no endpoint de informação de usuário') do
    @retorno_informacoes_usuario = InformacoesUsuarioService.new.retornar_informacoes_do_usuario
end
  
Então('deve retornar o status code {int}') do |status_code|
    expect(@retorno_informacoes_usuario.code).to eq(status_code)
end

Então('o primeiro numero retornado é igual a {int}') do |numero|
    expect(@retorno_informacoes_usuario[0]['id']).to eq(numero)
end

Então('o campo name deve ser do tipo String') do
    expect(@retorno_informacoes_usuario[0]["name"]).to be_a_kind_of(String)
end