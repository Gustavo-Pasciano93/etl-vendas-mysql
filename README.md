# Análise de Dados de Vendas com Python e MySQL

Este projeto demonstra minhas habilidades em engenharia de dados, utilizando Python para gerar dados fictícios de vendas, processá-los, integrá-los com um banco de dados MySQL e realizar análises exploratórias com visualizações de dados.

## Visão Geral

O objetivo deste projeto é simular um cenário de análise de dados de vendas, desde a geração dos dados até a extração de insights valiosos. O projeto é composto por quatro scripts Python principais:

1.  **geracao\_dados.py:** Script responsável por gerar dados fictícios de vendas, incluindo informações sobre produtos, datas, quantidades, valores e regiões. Os dados são salvos em um arquivo CSV.
2.  **processamento\_dados.py:** Script que carrega os dados do arquivo CSV, realiza a limpeza e transformação dos dados, como a padronização de tipos e a remoção de colunas desnecessárias. Os dados processados são salvos em um novo arquivo CSV.
3.  **banco\_dados.py:** Script que conecta a um banco de dados MySQL, cria um banco de dados e uma tabela para armazenar os dados de vendas. Os dados processados são inseridos na tabela.
4.  **analise\_dados.py:** Script que conecta ao banco de dados MySQL, executa consultas SQL para obter insights sobre os dados de vendas e gera visualizações de dados utilizando as bibliotecas Matplotlib e Seaborn.

## Tecnologias Utilizadas

*   Python
*   Pandas
*   MySQL
*   Matplotlib
*   Seaborn

## Pré-requisitos

*   Python 3.x
*   Bibliotecas listadas no arquivo `requirements.txt` (instale com `pip install -r requirements.txt`)
*   Banco de dados MySQL instalado e configurado

## Como executar

1.  Clone este repositório: `git clone https://github.com/seu-usuario/analise-dados-vendas.git`
2.  Crie um ambiente virtual (opcional): `python3 -m venv venv`
3.  Ative o ambiente virtual: `source venv/bin/activate` (Linux/macOS) ou `venv\Scripts\activate` (Windows)
4.  Instale as dependências: `pip install -r requirements.txt`
5.  Execute os scripts na ordem:
    *   `python geracao_dados.py`
    *   `python processamento_dados.py`
    *   `python banco_dados.py` (configure as credenciais do banco de dados no script)
    *   `python analise_dados.py` (configure as credenciais do banco de dados no script)

## Resultados

Os scripts gerarão arquivos CSV com os dados processados e exibirão visualizações de dados no console. Além disso, você pode consultar os dados diretamente no banco de dados MySQL.

## Insights

Alguns dos insights que podem ser obtidos com este projeto incluem:

*   Total de vendas por produto
*   Total de vendas por região
*   Produto mais vendido
*   Média de valor unitário por produto
*   Vendas por mês
*   Top 5 produtos com maior receita
*   Região com o maior número de vendas

## Próximos passos

*   Implementar testes unitários para garantir a qualidade do código
*   Criar um dashboard interativo com Streamlit para apresentar os resultados de forma mais dinâmica
*   Integrar com outras ferramentas de análise de dados, como o Power BI

## Contribuição

Contribuições são sempre bem-vindas! Sinta-se à vontade para abrir issues e enviar pull requests.

## Licença

Este projeto está sob a licença MIT.
