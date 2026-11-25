
import re
import subprocess

BASE = "meus_dados.pl"
SWIPL = r"C:\Users\1036377\Documents\swipl\bin\swipl.exe"


def consultar(consulta, variaveis=()):
    variaveis = list(variaveis)

    if variaveis:
        molde = "\\t".join(["~w"] * len(variaveis)) + "~n"
    else:
        molde = "sim~n"

    objetivo = f'forall(({consulta}), format("{molde}", [{", ".join(variaveis)}]))'

    r = subprocess.run(
        [
            SWIPL,
            "-q",
            "-g", "set_stream(user_output, encoding(utf8))",
            "-g", objetivo,
            "-t", "halt",
            BASE
        ],
        capture_output=True,
        text=True,
        encoding="utf-8",
    )

    if r.returncode != 0:
        raise RuntimeError("Erro no Prolog:\n" + r.stderr.strip())

    if r.stderr.strip():
        print("[aviso do Prolog]", r.stderr.strip())

    linhas = [linha for linha in r.stdout.splitlines() if linha.strip()]

    if not variaveis:
        return linhas

    return [
        dict(zip(variaveis, linha.split("\t")))
        for linha in linhas
    ]


def verdade(consulta):
    return len(consultar(consulta)) > 0


def atomo(texto):
    t = texto.strip().lower().replace(" ", "_")

    if not re.fullmatch(r"[a-z][a-z0-9_]*", t):
        raise ValueError("Digite só letras minúsculas, números e _ (sem acento).")

    return t
