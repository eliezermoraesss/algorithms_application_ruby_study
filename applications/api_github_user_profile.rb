require 'octokit'

# Configure o client do Octokit com seu token de acesso
client = Octokit::Client.new(access_token: ENV[GITHUB_ACCESS_TOKEN])

# Consulta a API do GitHub para obter informações do usuário
def buscar_perfil(username, client)
    begin
      user = client.user(username)
      puts "Nome: #{user.name}"
      puts "Login: #{user.login}"
      puts "Bio: #{user.bio}"
      puts "Localização: #{user.location}"
      puts "Número de repositórios públicos: #{user.public_repos}"
      puts "Número de seguidores: #{user.followers}"
    rescue Octokit::NotFound
      puts "Usuário não encontrado."
    rescue Octokit::Unauthorized
      puts "Token de acesso inválido."
    rescue Octokit::TooManyRequests
        puts "Limite de requisições excedido."
    rescue StandardError => e
        puts "Erro: #{e.message}"
    end
end

# Exemplo de uso
buscar_perfil('eliezermoraesss', client)

