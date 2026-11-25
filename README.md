# Assistente Lógico Pessoal

Projeto desenvolvido para a disciplina de Linguagem de Programação e Paradigmas, do curso de Sistemas de Informação.

## Sobre o projeto

O Assistente Lógico Pessoal utiliza Prolog para armazenar fatos e regras sobre minha rotina, conhecimentos e preferências. O Python realiza consultas à base de conhecimento e apresenta os resultados em um menu interativo.

## Tecnologias utilizadas

- Python
- SWI-Prolog
- Visual Studio Code

## Arquivos do projeto

- `meus_dados.pl`: fatos e regras pessoais.
- `prolog.py`: comunicação entre Python e Prolog.
- `teste_ponte.py`: teste da comunicação.
- `assistente.py`: menu interativo.

## Como executar

Execute no terminal:

```powershell
python teste_ponte.py
python assistente.py
```

**Observação:** o caminho do SWI-Prolog configurado em `prolog.py` pode precisar ser ajustado em outros computadores.

## Regras implementadas

- R1 – Verifica horários ocupados.
- R2 – Identifica horários livres.
- R3 – Consulta atividades por dia e turno.
- R4 – Identifica linguagens que posso ensinar.
- R5 – Identifica dias com dois ou mais turnos ocupados.
- R6 – Identifica noites livres.

## Opções do assistente

1. Minhas disciplinas.
2. Agenda de um dia.
3. Horários livres.
4. Verificar disponibilidade.
5. Linguagens que posso ensinar.
6. Meus gostos por categoria.
7. Dias cheios.
8. Minha regra personalizada.

## Autor

Marcelo Henrique Justen

Sistemas de Informação – UNIDAVI  
2026/2