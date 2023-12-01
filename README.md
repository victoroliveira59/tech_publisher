# Tech Publisher

Bem-vindo ao repositório do Tech Publisher, um projeto completo desenvolvido em Ruby on Rails (versão 3.0.2) e Rails (versão 7.0.8). Este projeto abrange diversas funcionalidades essenciais para um ambiente de publicação tecnológica, desde a gestão de autores e livros até a criação de API's e a manipulação avançada do banco de dados.

## Como começar

Para começar a trabalhar com o projeto, siga estas etapas:

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/victoroliveira59/tech_publisher
   ```

2. **Instale as dependências:**
   Navegue até o diretório do projeto e execute o seguinte comando para instalar as dependências:
   ```bash
   cd tech-publisher
   bundle install
   ```

3. **Execute as migrações do banco de dados:**
   Certifique-se de que seu banco de dados esteja configurado corretamente no arquivo `config/database.yml`. Em seguida, execute as migrações:
   ```bash
   rails db:migrate
   ```

4. **Inicie o servidor:**
   Após a conclusão das migrações, inicie o servidor Rails:
   ```bash
   rails server
   ```

Agora, a aplicação estará em execução em [http://localhost:3000](http://localhost:3000). Você pode acessar o aplicativo em seu navegador para explorar e interagir com as funcionalidades.

## Primeira Etapa

Olá a todos! Estamos animados em apresentar a primeira versão do projeto - Release/v0.0.1. Esta versão marca o ponto de partida para a construção de uma aplicação incrível. Abaixo estão os principais marcos alcançados nesta fase inicial:

### Tópico 1: Criação de CRUDs

- [x] **Author**: Implementamos um CRUD completo para gerenciar autores.
- [x] **Book**: Desenvolvemos as operações de CRUD para gerenciar livros.
- [x] **Account**: Criamos funcionalidades de gerenciamento de contas.
- [x] **Supplier**: Gerenciamento fácil de fornecedores.
- [x] **Part e Assembly**: Implementamos CRUDs para gerenciar peças e montagens.

### Tópico 2: Configuração de Associações

Configuramos associações essenciais para a integridade de dados e funcionalidade da aplicação:

- [x] Associação de **Author com Book**: Relaciona autores com os livros que escreveram.
- [x] Associação de **Supplier com Account**: Vincula fornecedores a suas contas correspondentes.
- [x] Associação de **Assembly com Part e Book**: Configuramos relações cruciais entre montagens, peças e livros.

### Tópico 3: Configuração de Views

Dedicamos tempo para configurar as visualizações de todos os CRUDs:

- [x] **Configuração de Views do Author**: Implementamos visualizações necessárias para o CRUD de autores.
- [x] **Configuração de Views do Book**: Visualizações para o gerenciamento de livros.
- [x] **Configuração de Views do Supplier**: Interfaces para o CRUD de fornecedores.
- [x] **Configuração de Views do Account**: Desenvolvemos interfaces para a gestão de contas.
- [x] **Configuração de Views do Part e Assembly**: Visualizações necessárias para as peças e montagens.

## Segunda Etapa - Criar API's

Nesta fase, focamos na criação de API's para permitir interações externas com o sistema:

- [x] Cadastrar Author via API.
- [x] Cadastrar Book vinculado a Author via API.
- [x] Cadastrar Supplier com uma conta via API.
- [x] Cadastrar Parts vinculado a Supplier via API.
- [x] Cadastrar Assembly com várias Parts vinculadas a Livros via API.

## Terceira Etapa - Alterar/Incluir no Banco de Dados

Realizamos alterações e inclusões no banco de dados para melhor atender às necessidades do projeto:

- [x] Adicionar campo CNPJ em fornecedor.
- [x] Adicionar campo dígito verificador em conta.
- [x] Adicionar campo ISBN em livro.
- [x] Adicionar campo CPF em autor.

## Calcular

Desenvolvemos funcionalidades de cálculo para enriquecer a manipulação de dados:

- [x] Dígito verificador em Conta.

## Validar

Implementamos validações para garantir a integridade dos dados:

- [x] CNPJ em fornecedor.
- [x] ISBN em livro.
- [x] CPF em autor.

... Se tiver alguma dúvida ou sugestão, abra uma issue e vamos construir juntos. Happy coding! 🚀