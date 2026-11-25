

# Assistente Lógico Pessoal

> Atividade da disciplina Linguagem de Programação e Paradigmas · UNIDAVI · 2026/2

**Aluno(a):** Marcelo Henrique Justen  
**Linguagem do sistema:** Python

## O que é

Uma base de conhecimento em Prolog (`meus_dados.pl`) com fatos e regras sobre mim e um assistente em linha de comando desenvolvido em Python, que consulta essa base por meio da ponte (`prolog.py`).

## Como executar

Requisitos: Python 3 e SWI-Prolog instalados. O caminho do executável do SWI-Prolog deve estar configurado no arquivo `prolog.py`.

```bash
# testar a ponte
python teste_ponte.py

# executar o assistente
python assistente.py
```

## Minha base

- **Fatos:** `eu/1`, `fase/1`, `cidade/1`, `cursa/3`, `compromisso/3`, `sabe/2`, `gosta/2`, `dia/1` e `turno/1`.
- **Regras:** `ocupado/2`, `livre/2`, `o_que_faco/3`, `pode_ensinar/1`, `dia_cheio/1` e `noite_livre/1`.

## Minha regra (R6)

```prolog
noite_livre(Dia) :-
    dia(Dia),
    livre(Dia, noite).
```

**O que ela significa:**

A regra verifica quais dias possuem a noite livre. Primeiro, consulta os dias cadastrados na base de conhecimento por meio de `dia(Dia)`. Depois, verifica se o turno da noite está livre usando `livre(Dia, noite)`. Se as duas condições forem verdadeiras, o dia é apresentado como resultado.

## Saída real do assistente

PS C:\assistente-logico-pessoal> python assistente.py

=== Assistente pessoal de marcelo ===
1. Minhas disciplinas
2. Agenda de um dia
3. Horários livres
4. Estou livre em...?
5. Linguagens que posso ensinar
6. Meus gostos por categoria
7. Dias cheios
8. Minha regra - noites livres
0. Sair
> 1

== Minhas disciplinas ==
  - redes_de_computadores (segunda, noite)
  - desenvolvimento_mobile (terca, noite)
  - linguagens_de_programacao_e_paradigmas (quarta, noite)
  - gerencia_de_projetos (quinta, noite)
  - consultoria_financeira (sexta, noite)

=== Assistente pessoal de marcelo ===
1. Minhas disciplinas
2. Agenda de um dia
3. Horários livres
4. Estou livre em...?
5. Linguagens que posso ensinar
6. Meus gostos por categoria
7. Dias cheios
8. Minha regra - noites livres
0. Sair
> 2
Qual dia? (segunda, terca, quarta, quinta, sexta, sabado): segunda

== Agenda de segunda ==
  - noite: redes_de_computadores
  - manha: trabalho
  - tarde: trabalho

=== Assistente pessoal de marcelo ===
1. Minhas disciplinas
2. Agenda de um dia
3. Horários livres
4. Estou livre em...?
5. Linguagens que posso ensinar
6. Meus gostos por categoria
7. Dias cheios
8. Minha regra - noites livres
0. Sair
> 3

== Horários livres ==
  - sabado de manha
  - sabado de tarde
  - sabado de noite

=== Assistente pessoal de marcelo ===
1. Minhas disciplinas
2. Agenda de um dia
3. Horários livres
4. Estou livre em...?
5. Linguagens que posso ensinar
6. Meus gostos por categoria
7. Dias cheios
8. Minha regra - noites livres
0. Sair
> 4
Dia: quarta
Turno (manha, tarde, noite): noite

Não: quarta de noite está ocupado (ou dia/turno inválido).

=== Assistente pessoal de marcelo ===
1. Minhas disciplinas
2. Agenda de um dia
3. Horários livres
4. Estou livre em...?
5. Linguagens que posso ensinar
6. Meus gostos por categoria
7. Dias cheios
8. Minha regra - noites livres
0. Sair
> 5

== Linguagens que posso ensinar ==
  - DELPHI

=== Assistente pessoal de marcelo ===
1. Minhas disciplinas
2. Agenda de um dia
3. Horários livres
4. Estou livre em...?
5. Linguagens que posso ensinar
6. Meus gostos por categoria
7. Dias cheios
8. Minha regra - noites livres
0. Sair
> 6
Categoria (series, jogos_eletronicos, futebol, viagens): futebol

== Gosto de (futebol) ==
  - flamengo
  - real madrid

=== Assistente pessoal de marcelo ===
1. Minhas disciplinas
2. Agenda de um dia
3. Horários livres
4. Estou livre em...?
5. Linguagens que posso ensinar
6. Meus gostos por categoria
7. Dias cheios
8. Minha regra - noites livres
0. Sair
> 7

== Dias cheios (2 turnos ou mais ocupados) ==
  - segunda
  - terca
  - quarta
  - quinta
  - sexta

=== Assistente pessoal de marcelo ===
1. Minhas disciplinas
2. Agenda de um dia
3. Horários livres
4. Estou livre em...?
5. Linguagens que posso ensinar
6. Meus gostos por categoria
7. Dias cheios
8. Minha regra - noites livres
0. Sair
> 8

== Noites livres ==
  - sabado

=== Assistente pessoal de marcelo ===
1. Minhas disciplinas
2. Agenda de um dia
3. Horários livres
4. Estou livre em...?
5. Linguagens que posso ensinar
6. Meus gostos por categoria
7. Dias cheios
8. Minha regra - noites livres
0. Sair
> 0
Até mais!
PS C:\assistente-logico-pessoal>