# Monte Athos — Como publicar

Pagina interativa de escolha de unidade do **Residencial Monte Athos - Torre B** (Abril 2026).

---

## PASSO 1 — Instalar as imagens (1 clique)

De um **duplo clique** no arquivo:

```
INSTALAR_IMAGENS.bat
```

Vai abrir uma janela preta. Aperte qualquer tecla quando pedir e aguarde aparecer **CONCLUIDO**.

O script vai copiar automaticamente:
- Logo da Oceano Imoveis (reaproveitada do projeto Monte Tivoli)
- Fachada do empreendimento (de monte-athos/MATERIAL/ATHOS/IMAGENS/fachada/1.png)
- Mapa das colunas (de fachada/4.png)
- Mapa de localizacao (de fachada/b1.png)
- Renders 3D (de monte-athos/GITHUB_PAGES_READY/docs/assets/gallery/)

---

## PASSO 2 — Salvar as plantas tecnicas

As **plantas tecnicas** (.png) precisam ser salvas manualmente em `docs/assets/plants/`:

| Arquivo | Tipologia | Area |
|---|---|---|
| `planta-2q-4547.png` | 2 Quartos | 45,47 m² |
| `planta-2q-4562.png` | 2 Quartos | 45,62 m² |
| `planta-2q-4604.png` | 2 Quartos | 46,04 m² |
| `planta-2q-4671.png` | 2 Quartos | 46,71 m² |
| `planta-2q-suite-4549.png` | 2Q + Suite | 45,49 m² |
| `planta-2q-suite-4756.png` | 2Q + Suite | 47,56 m² |
| `planta-2q-suite-4769.png` | 2Q + Suite | 47,69 m² |
| `planta-2q-suite-4785.png` | 2Q + Suite | 47,85 m² |
| `planta-2q-suite-4835.png` | 2Q + Suite | 48,35 m² |
| `planta-2q-suite-4933.png` | 2Q + Suite | 49,33 m² |
| `planta-2q-suite-5367.png` | 2Q + Suite | 53,67 m² |
| `planta-2q-suite-5368.png` | 2Q + Suite | 53,68 m² |
| `planta-2q-suite-5371.png` | 2Q + Suite | 53,71 m² |

> Se nao tiver alguma, a pagina nao quebra — o cartao da unidade so esconde a imagem da planta.

---

## PASSO 3 — Testar localmente (opcional)

Abra `docs\index.html` no navegador (Chrome, Edge, Firefox).

---

## PASSO 4 — Publicar no GitHub Pages

### Primeira publicacao
1. Crie um repositorio no GitHub. Sugestao: `monte-athos`.
2. **Settings → Pages → Source → GitHub Actions**.
3. Abra o terminal (PowerShell) na pasta do projeto:
   ```powershell
   git init
   git add .
   git commit -m "primeiro deploy monte athos"
   git branch -M main
   git remote add origin https://github.com/SEU_USUARIO/monte-athos.git
   git push -u origin main
   ```
4. Endereco final:
   ```
   https://SEU_USUARIO.github.io/monte-athos/
   ```

### Atualizacoes futuras
Qualquer `git push` para `main` republica o site automaticamente.

---

## Sistema de Corretores (links personalizados)

Cada corretor tem um link proprio:

| Corretor | Numero | Link |
|---|---|---|
| **David Costa** | (27) 99812-1015 | https://oceanoimoveis.github.io/monte-athos/?c=david |
| **Carol** | (27) 99900-4123 | https://oceanoimoveis.github.io/monte-athos/?c=carol |
| **Oceano 2** | (27) 99203-8013 | https://oceanoimoveis.github.io/monte-athos/?c=oceano2 |
| **Oceano 3** | (27) 99202-6390 | https://oceanoimoveis.github.io/monte-athos/?c=oceano3 |

Quem abrir sem `?c=` cai no padrao (27 99243-6034).

Para adicionar/editar corretores: abra `docs/data/corretores.json`.

---

## Atualizar tabela quando trocar o mes

1. Abra `docs/data/units.json`.
2. Para esconder unidade vendida/reservada: delete o objeto correspondente.
3. Para atualizar precos: altere os campos do objeto.
4. `git add . && git commit -m "atualiza tabela maio/2026" && git push`.

---

## Resumo da Torre B (Abril 2026)

- **60 unidades disponiveis** (4o ao 18o andar)
- Faixa de preco: **R$ 432.000 a R$ 588.000**
- **2 Quartos** (45,47 a 47,85 m²) — entrada ~R$ 34-37 mil
- **2 Quartos com Suite** (47,56 a 53,71 m²) — entrada ~R$ 38-47 mil
- Pagamento: Entrada (1x) + 60 mensais + 5 anuais + Financiamento CEF
