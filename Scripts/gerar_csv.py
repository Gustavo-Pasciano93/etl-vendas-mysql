import pandas as pd
import random
from datetime import datetime, timedelta

# Listas de dados fictícios
produtos = ['Notebook', 'Smartphone', 'Tablet', 'Monitor', 'Teclado', 'Mouse', 'Impressora', 'Headset', 'Câmera', 'HD Externo']
regioes = ['Sudeste', 'Sul', 'Nordeste', 'Norte', 'Centro-Oeste']

# Função para gerar datas aleatórias
def gerar_data_aleatoria():
    data_inicio = datetime(2023,1,1)
    data_fim = datetime(2023, 12, 31)
    delta = data_fim-data_inicio
    dias_aleatorios = random.randint(0, delta.days)
    return data_inicio + timedelta(days= dias_aleatorios)


# Gerando dados fictícios
dados = []
for i in range(1,51):
    id_venda = 1
    data = gerar_data_aleatoria().strftime('%Y-%m-%d')
    produto = random.choice(produtos)
    quantidade = random.randint(1, 10)
    valor_unitario = round(random.uniform(100,2000), 2)
    regiao = random.choice(regioes)
    dados.append([id_venda, data, produto, quantidade, valor_unitario, regiao])
    
    
df = pd.DataFrame(dados, columns=['id_venda', 'data', 'produto', 'quantidade', 'valor_unitario', 'regiao'])

df.to_csv('vendas.csv', index=False)


print("Arquivo 'vendas.csv' gerado com sucesso!")    