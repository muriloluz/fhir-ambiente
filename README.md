# Ambiente para fhir/ig utilizando docker

## Requisitos mínimos:
Docker instalado e executando.

## Exemplo execução

A partir do diretório docker executar:

`docker build -t fhir-ambiente:latest .`

Essa instrução cria a imagem fhir-ambiente em sua versão mais recente, com os requisitos para execução de um exemplo do Guia de implementação.

O arquivo exemplo.sh está disponível dentro da imagem, porém não foi executado.

A imagem também disponibiliza o apache para visualização da aplicação web gerada.

Exemplo de criação do container a partir da imagem:

`docker run -d -p 80:80 fhir-ambiente`

Observe que houve um direcionamento de porta do host para o container (80:80) , então será possível visualizar a página disponível em http://localhost/


Para ter acesso a shell do container executando: 

`docker exec -it nome-do-container /bin/bash`

Executar o exemplo.sh dentro do container:

`./exemplo.sh`

Executa um exemplo a partir de https://github.com/kyriosdata/ig e substitui no apache do container.

Em caso de sucesso o Guia ficará disponível em http://localhost/
