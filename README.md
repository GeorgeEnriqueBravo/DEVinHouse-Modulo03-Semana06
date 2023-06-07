# Bem vindo à DEVinHouse <img width="180px" alt="Philips" src="ExerciciosM03S06/images/logo-phil.png"/>
## Módulo 03 - Semana 06

Repositório criado para a elaboração dos 7 exercícios referentes a PL/SQL dessa semana. <br>

Para visualizar os exercícios, <a href="https://github.com/GeorgeEnriqueBravo/DEVinHouse-Modulo03-Semana06/archive/refs/heads/main.zip" target="_blank">
    clique aqui
</a>
para baixa-los. <br>

Após o download, abra a pasta do projeto por um terminal ou pelo CMD do computador e digite o comando `npm install` para instalar a pasta node_modules e depois digite o comando `npm test` para carregar o resultado dos testes no seu navegador.
  
---

# Lista de exercícios <img width="75px" alt="Philips" src="ExerciciosM03S06/images/lista.png"/>
### [M3S06] Ex 1 - Crie a tabela Produto

Crie a tabela Produto com os campos

- ID tipo numero
- Descrição tipo texto com 50 caracters
- Status tipo boolean (precisa utilizar como number(1))
- Cadastro tipo data e hora
- QuantidadeEmEstoque tipo número
‌

Efetuar inserção dos dados de 10 registros na tabela

### [M3S06] Ex 2 - Crie a tabela ProdutoPreco

Crie a tabela Produto com os campos

- ID tipo numero
- ID Produto tipo número e sendo FK da tabela Produto
- Valor tipo decimal (aqui precisa ser number(10, 2))
- Status tipo boolean (precisa utilizar como number(1))
- Cadastro tipo data e hora
‌

Efetuar inserção dos dados de 15 registros na tabela

### [M3S06]  Ex 3 - Criar um Inner Join  entre as tabelas

O resultado do join entre as duas tabelas devem conter os campos

- Id produto
- Id preço produtos
- Descrição do produto
- Valor do produto
- Campo data trazer somente o Mês/Ano

### [M3S06] Ex 4 - Criar consulta que retorno a soma dos valores

Essa consulta deve efetuar a soma dos produtos.

E no código colocar o case when para utilizar a seguinte regra

Caso soma menor que 150.00 colocar o texto ‘Soma do produto menor 150.00’
Caso soma menor que 500.00 colocar o texto ‘Soma do produto está entre 150 e 500’
Se não, colocar o texto 'Soma dos produtos está acima de 500,00)
‌
Lembrando que o case when deve estar na escrita SQL SELECT

### [M3S06] Ex 5 - Criar um LEFT JON entre a tabela Produto e ProdutoPreco

Nesta consulta trazer todos os registro NULL na tabela ProdutoPreco

### [M3S06] Ex 6 - UPDATE com Laço tabela Produto Preço

Crie um laço de 1 até 3 e atualize o valor da tabela produtos preço utilizando o seguindo cálculo

valor = valor + ( valor * 0.15)

O filtro para where o valor do produto deve ser maior que 100 reais.

### [M3S06] Ex 7 - Utilizar o IF para retornar o status da tabela produto

Na tabela produto deve devolver o status ‘ativo' e 'desativado’ utilizando o condicional IF <br><br>

---

# O que é DEVinHouse?
DEVinhouse é uma jornada de aceleração da carreira com: grade curricular direcionada, professores do mercado, prática constante, interação frequente com as houses parceiras de cada turma, simulação do dia-a-dia DEV e vagas exclusivas que são abertas pelas Houses durante a jornada.

No DEVinHouse você vira um desenvolvedor Fullstack em 9 meses, ao longo de 900 horas de conteúdo, divididas em três módulos de 3 meses cada, com intervalo de uma semana entre cada um. Aproximadamente 25 horas de dedicação por semana entre aulas, atividades e vivências.

__1º módulo:__ Front-End – JavaScript e Angular <br/>
__2º módulo:__ Back-End – Java, Spring e SQL <br/>
__3º módulo:__ Full-Stack – Scrum, DevOps, Clean Code e Design Patterns <br/>
__Ferramentas__ – GitHub, Trello e Slack

---

# Tecnologias Utilizadas <img width="35px" alt="🌐" src="ExerciciosM03S06/images/tag.gif"/>
Nos exercícios dessa semana foram utilizadas as seguintes tecnologias:
<div style="display: inline_block">
    <img align="center" alt="Angular" src="https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white"/>
    <img align="center" alt="Bootstrap" src="https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white"/>
    <img align="center" alt="TypeScript" src="https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white"/>
    <img align="center" alt="HTML5" src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white"/>
    <img align="center" alt="CSS3" src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white"/>
    <img align="center" alt="JavaScript" src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"/>
    <img align="center" alt="Trello" src="https://img.shields.io/badge/Trello-0052CC?style=for-the-badge&logo=trello&logoColor=white"/>
    <img align="center" alt="GitHub" src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"/> 
</div>

