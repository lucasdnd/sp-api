# sp-api
Uma API RESTful em Python com dados de São Paulo e região

Dados: http://www.metro.sp.gov.br/metro/numeros-pesquisa/pesquisa-mobilidade-urbana-2012.aspx

Esta API se propõe a disponibilizar os dados da Pesquisa de Mobilidade Urbana 2012 do Metrô de forma mais simples para desenvolvedores.

Dados podem conter erros de arredondamento.

### Métodos

Todos os métodos são do tipo GET e de acesso livre, sem a necessidade de autenticação. As notas sobre cada tabela são idênticas às da planilha da pesquisa de mobilidade urbana, disponível no site do Metrô.

Todos os métodos possuem o parâmetro opcional `id` da zona. Por exemplo: `http://spapi.co/geral/3` trará apenas dados sobre a zona de id 3.

#### `/geral`

Dados gerais sobre cada região.

Notas:

- A frota de automóveis particulares em posse das famílias exclui veículos pertencentes a empresas, táxis e ônibus.
- Viagens produzidas correspondem ao total de viagens diárias com origem nas zonas de pesquisa.
- Viagens atraídas correspondem ao total de viagens diárias com destino nas zonas de pesquisa.

#### `/emprego_interno_externo`
#### `/empregos_por_classe`
#### `/empregos_por_setor`
#### `/empregos_por_tipo_localidade`
#### `/empregos_por_vinculo`
#### `/trabalho_por_vinculo`

#### `/renda_familiar_per_capita`

#### `/matriculas_escolares_por_tipo`

#### `/populacao_por_faixa_etaria`
#### `/populacao_por_genero`
#### `/populacao_por_grau_de_instrucao`
#### `/populacao_por_condicao_atividade`
#### `/populacao_por_renda`

#### `/automoveis_por_residencia`

#### `/tempo_medio_viagens`

#### `/viagens_por_modo`
#### `/viagens_por_tipo`
#### `/viagens_produzidas_por_motivo`

#### `/viagens_atraidas_por_modo`
#### `/viagens_atraidas_por_motivo`
#### `/viagens_atraidas_por_tipo`

### Requerimentos

- Python 3.4
- Flask: `pip3 install flask`
- PyMySQL: `pip3 install pymysql`

### Setup

1. `cd db`

1. `python3 csv-to-mysql.py`

1. `mysql -u username [-p password] < create-schema.sql`

1. `cd ..`

1. `python3 run.py`
