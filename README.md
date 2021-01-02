# NerdStore

Projeto de acompanhamento do curso Modelagem de Domínios Ricos ministrado pelo Professor Eduardo Pires. Neste curso pudemos trabalhar uma das várias abordagens do DDD com a criação de um projeto, um ecommerce para venda de produtos nerd passando pelas etapas de cadastro do produto, venda e pagamento.
Para cada etapa foi criado um contexto dividindo as responsabilidades com isso temos o contexto de **Catalogo**, **Vendas** e **Pagamento** cada um isolado em uma _Class Library_ e para o compartilhamento de objetos comuns criamos uma outra chamada **Core** dessa forma temos uma estrutura de camadas, já para a camada de apresentação temos um projeto asp.net core mvc como nossa aplicação cliente responsável por realizar a exibição dos dados e o input de novos.
Para a troca de informações 

No contexto de Pagamentos foi implementanda uma camada _AntiCurruption_ para simular a comunicação com o Gateway do PayPal e entregando para a camada de Pagamentos um objeto "traduzido" com as informações do pagamento.

# Criando o projeto para trabalhar no vscode via CLI.

[Comandos para a criação dos projetos](https://github.com/davidterra/NerdStore/blob/main/src/Comandos%20para%20a%20cria%C3%A7%C3%A3o%20dos%20projetos.cmd)
