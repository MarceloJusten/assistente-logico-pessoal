
:- encoding(utf8).

% Dados pessoais
eu(marcelo).
fase(6).
cidade(ituporanga).

% Disciplinas
cursa(redes_de_computadores, segunda, noite).
cursa(desenvolvimento_mobile, terca, noite).
cursa(linguagens_de_programacao_e_paradigmas, quarta, noite).
cursa(gerencia_de_projetos, quinta, noite).
cursa(consultoria_financeira, sexta, noite).

% Compromissos
compromisso(segunda, manha, trabalho).
compromisso(segunda, tarde, trabalho).

compromisso(terca, manha, trabalho).
compromisso(terca, tarde, trabalho).

compromisso(quarta, manha, trabalho).
compromisso(quarta, tarde, trabalho).

compromisso(quinta, manha, trabalho).
compromisso(quinta, tarde, trabalho).

compromisso(sexta, manha, trabalho).
compromisso(sexta, tarde, trabalho).

% Conhecimentos
sabe(delphi, avancado).
sabe(python, basico).
sabe(javascript, basico).

% Preferencias
gosta(serie, o_mentalista).
gosta(serie, la_casa_de_papel).

gosta(jogos_eletronicos, cs2).
gosta(jogos_eletronicos, valorant).

gosta(futebol, flamengo).
gosta(futebol, real_madrid).

gosta(viagens, madrid).


% Dias da semana
dia(segunda).
dia(terca).
dia(quarta).
dia(quinta).
dia(sexta).
dia(sabado).

% Turnos
turno(manha).
turno(tarde).
turno(noite).


% R1 - Estou ocupado se tenho aula ou compromisso
ocupado(Dia, Turno) :- cursa(_, Dia, Turno).
ocupado(Dia, Turno) :- compromisso(Dia, Turno, _).

% R2 - Estou livre se não tenho aula nem compromisso
livre(Dia, Turno) :- dia(Dia), turno(Turno), \+ ocupado(Dia, Turno).

% R3 - Mostra o que faço em determinado dia e turno
o_que_faco(Dia, Turno, Atividade) :- cursa(Atividade, Dia, Turno).
o_que_faco(Dia, Turno, Atividade) :- compromisso(Dia, Turno, Atividade).

% R4 - Posso ensinar linguagens que conheço em nível intermediário ou avançado
pode_ensinar(Linguagem) :-
    sabe(Linguagem, Nivel),
    member(Nivel, [intermediario, avancado]).

% R5 - Dia cheio é aquele que possui dois ou mais turnos ocupados
dia_cheio(Dia) :-
    dia(Dia),
    findall(Turno, ocupado(Dia, Turno), Turnos),
    sort(Turnos, TurnosUnicos),
    length(TurnosUnicos, Quantidade),
    Quantidade >= 2.

% R6 - Minha regra personalizada:
% Mostra os dias em que posso aproveitar a noite livre
noite_livre(Dia) :-
    dia(Dia),
    livre(Dia, noite).
