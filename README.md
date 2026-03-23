# 📱 Exercícios de Flutter — Widgets e Layout

Implementações práticas de interfaces Flutter cobrindo os principais widgets de layout, posicionamento e exibição de conteúdo.

---

## Exercício 1 — Container, Colors, Icon e Text

**Arquivo:** `exercicio1_container.dart`

Reprodução da interface "Flutter is Fun!" com um `AppBar` verde e um `Container` vermelho posicionado no corpo da tela exibindo o texto `"Hi Mom 🔥"`.

**Widgets utilizados:**
- `Container` — caixa com cor, dimensões e padding definidos
- `Colors` — `Colors.green[700]` na AppBar e `Colors.deepOrange` no Container
- `Text` — exibe o conteúdo textual dentro do Container
- `Align` — posiciona o Container dentro do `body`

**Estrutura de widgets:**
```
Scaffold
├── AppBar → Text("Flutter is Fun!")
└── body: Align
    └── Container (vermelho 120×110)
        └── Padding → Text("Hi Mom 🔥")
```

**Referências:**
- https://api.flutter.dev/flutter/widgets/Container-class.html
- https://api.flutter.dev/flutter/material/Colors-class.html
- https://api.flutter.dev/flutter/widgets/Icon-class.html
- https://api.flutter.dev/flutter/widgets/Text-class.html

---

## Exercício 2 — Barra de Botões (Row, Column, Icon, Text)

**Arquivo:** `exercicio2_botoes.dart`

Barra de ações com três botões — **CALL**, **ROUTE** e **SHARE** — cada um composto por um ícone acima e um rótulo abaixo, dispostos horizontalmente na tela.

**Widgets utilizados:**
- `Row` — alinha os três botões lado a lado com `spaceEvenly`
- `Column` — empilha o `Icon` acima e o `Text` abaixo em cada botão
- `Icon` — ícones `phone`, `near_me` e `share`
- `Text` — rótulos CALL, ROUTE, SHARE em maiúsculas
- `Container` — adiciona padding ao redor da barra

**Estrutura de widgets:**
```
Container
└── Row (spaceEvenly)
    ├── Column → Icon(phone)   + Text("CALL")
    ├── Column → Icon(near_me) + Text("ROUTE")
    └── Column → Icon(share)   + Text("SHARE")
```

**Referências:**
- https://api.flutter.dev/flutter/widgets/Container-class.html
- https://api.flutter.dev/flutter/widgets/Icon-class.html
- https://api.flutter.dev/flutter/widgets/Column-class.html
- https://api.flutter.dev/flutter/widgets/Row-class.html

---

## Exercício 3 — Stack & Positioned (Containers sobrepostos)

**Arquivo:** `exercicio3_stack.dart`

Três `Container` quadrados coloridos sobrepostos em pilha com deslocamento escalonado, simulando um efeito de camadas.

**Widgets utilizados:**
- `Stack` — permite que widgets filhos se sobreponham
- `Positioned` — define a posição absoluta (`top`, `left`) de cada Container
- `Container` — caixas 180×180 com cor sólida e rótulo de texto
- `Colors` — `green[400]`, `red[400]`, `purple[300]`
- `Text` — rótulo no canto superior esquerdo de cada caixa

**Posicionamento das camadas:**

| Camada | Cor | `top` | `left` |
|--------|-----|-------|--------|
| Fundo  | Verde    | 0 px  | 0 px  |
| Meio   | Vermelho | 30 px | 30 px |
| Frente | Roxo     | 60 px | 60 px |

**Estrutura de widgets:**
```
Stack
├── Positioned(top:0,  left:0)  → Container (Verde)
├── Positioned(top:30, left:30) → Container (Vermelho)
└── Positioned(top:60, left:60) → Container (Roxo)
```

**Referências:**
- https://api.flutter.dev/flutter/widgets/Container-class.html
- https://api.flutter.dev/flutter/widgets/Positioned-class.html
- https://api.flutter.dev/flutter/widgets/Stack-class.html
- https://api.flutter.dev/flutter/material/Colors-class.html

---

## Exercício 4 — Duas Imagens com SizedBox e FittedBox

**Arquivo:** `exercicio4_imagens.dart`

Tela com duas imagens carregadas da internet em tamanhos diferentes — a superior menor e a inferior maior — separadas por um `SizedBox` espaçador.

**Widgets utilizados:**
- `Image.network` — carrega imagens a partir de URLs
- `SizedBox` — define a altura de cada imagem e o espaço entre elas
- `FittedBox` — redimensiona a imagem para preencher o espaço sem distorção (`BoxFit.cover`)
- `Column` — empilha os elementos verticalmente
- `SingleChildScrollView` — permite rolagem caso o conteúdo ultrapasse a tela

**Dimensões:**

| Elemento | Altura |
|----------|--------|
| Imagem superior | 180 px |
| SizedBox separador | 12 px |
| Imagem inferior | 280 px |

**Estrutura de widgets:**
```
SingleChildScrollView
└── Column
    ├── SizedBox(h:180) → FittedBox → Image.network
    ├── SizedBox(h:12)              ← separador
    └── SizedBox(h:280) → FittedBox → Image.network
```

**Referências:**
- https://docs.flutter.dev/cookbook/images/network-image
- https://api.flutter.dev/flutter/widgets/SizedBox-class.html
- https://api.flutter.dev/flutter/widgets/FittedBox-class.html

---

## Exercício 5 — Tutorial de Layout Flutter (Oeschinen Lake)

**Arquivo:** `exercicio5_layout_tutorial.dart`

Implementação completa do tutorial oficial de layout do Flutter, reproduzindo a tela do **Oeschinen Lake Campground** com imagem, informações do local, barra de ações e texto descritivo.

**Widgets utilizados:**
- `ListView` — lista com scroll que contém todas as seções
- `Image.network` — foto do lago no topo (altura 240 px)
- `Row` / `Column` / `Expanded` — organização da seção de título
- `Icon(Icons.star)` — estrela vermelha com contagem numérica
- `Padding` — espaçamento interno de cada seção
- `Text` — título, localização e parágrafo descritivo
- Widget reutilizável `_ActionButton` — para os botões CALL, ROUTE e SHARE

**Seções da tela:**

| # | Seção | Descrição |
|---|-------|-----------|
| 1 | Foto | Imagem do lago ocupando a largura total |
| 2 | Título | Nome do local, cidade/país e avaliação com estrela |
| 3 | Ações | Barra de botões CALL, ROUTE e SHARE |
| 4 | Descrição | Parágrafo descritivo sobre o local |

**Estrutura de widgets:**
```
Scaffold
└── ListView
    ├── Image.network (lago, h:240)
    ├── _TitleSection
    │   └── Row
    │       ├── Expanded → Column(título + localização)
    │       └── Icon(star) + Text("41")
    ├── _ButtonBar
    │   └── Row(spaceEvenly)
    │       ├── _ActionButton("CALL")
    │       ├── _ActionButton("ROUTE")
    │       └── _ActionButton("SHARE")
    └── _DescriptionSection
        └── Padding → Text(descrição)
```

**Referência:**
- https://docs.flutter.dev/ui/layout/tutorial

---
