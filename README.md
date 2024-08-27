# Mineração de Dados - IFPB Campus Campina Grande

Este repositório contém os arquivos `.ipynb` utilizados nas atividades da disciplina optativa de Mineração de Dados do IFPB Campus Campina Grande. Cada arquivo representa uma aula, exercício ou experimento desenvolvido ao longo do curso.

### Estrutura do repositório

- **/notebooks**: Contém os arquivos Jupyter Notebook (`.ipynb`) com as atividades práticas.
- **/data**: Contém os arquivos de dados utilizados nas atividades, se aplicável.
- **requirements.txt**: Lista de bibliotecas Python necessárias para executar os notebooks.
- **DockerFile**
    
### Como Rodar o Projeto

Para executar os notebooks, siga os passos abaixo:

1. Clonar o repositório

```shell
git clone git@github.com:jmmarcoss/mineracao-dados.git
cd mineracao-dados
```

2. Build da imagem `Docker`
```shell
docker build -t meu-jupyter .
```

3. Iniciar container
```shell
docker run -p 8888:8888 -v $(pwd):/app meu-jupyter
```

### Sobre a Disciplina

A disciplina de **Mineração de Dados** foca em técnicas e métodos para extrair informações úteis a partir de grandes volumes de dados. Os tópicos incluem pré-processamento de dados, exploração de dados, técnicas de agrupamento (clustering), classificação, regras de associação, e métodos de avaliação de desempenho de modelos. Os notebooks deste repositório complementam o conteúdo teórico com exemplos práticos e exercícios aplicados a diferentes tipos de dados.


