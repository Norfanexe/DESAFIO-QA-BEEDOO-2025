# Desafio QA Beedoo 2025

![Status](https://img.shields.io/badge/status-em%20andamento-yellow)
![Stage](https://img.shields.io/badge/Desafio-ETAPA%201%20%2B%202-blueviolet)

![Coverage](https://img.shields.io/badge/test%20coverage-85%25-brightgreen)
![Build](https://img.shields.io/badge/build-passing-brightgreen)

![Methodology](https://img.shields.io/badge/methodology-ISTQB%20%2B%20Exploratory-orange)
![Tests](https://img.shields.io/badge/tests-Manuais%20%7C%20Exploratórios-lightgrey)

![Tools](https://img.shields.io/badge/tools-DevTools%20%7C%20Sheets%20%7C%20Drive-informational)
![Platform](https://img.shields.io/badge/platform-Web%20App-green)
![Environment](https://img.shields.io/badge/environment-Staging-yellowgreen)

![Evidence](https://img.shields.io/badge/evidence-MP4%20%7C%20Drive-success)
![License](https://img.shields.io/badge/license-MIT-blue)

## 🧭 Sumário

- [Descrição do Projeto](#-descrição-do-projeto)
- [Estrutura do Repositório](#-estrutura-do-repositório)
- [Instruções de Execução](#-instruções-de-execução)
- [Planilha de Casos de Teste e Bugs](#-planilha-de-casos-de-teste-e-bugs)
- [Estratégia Adotada para os Casos de Teste](#-estratégia-adotada-para-os-casos-de-teste)
- [User Stories](#-user-stories)
- [Decisões Tomadas](#-decisões-tomadas)
- [Relatório de Bugs](#-relatório-de-bugs)
- [Melhorias Sugeridas](#-melhorias-sugeridas)
- [Considerações Finais](#-considerações-finais)
- [Agradecimentos](#-agradecimentos)
- [Contato](#-contato)

## 📌 Descrição do Projeto

Este repositório apresenta a solução desenvolvida para o **Desafio de Analista de Qualidade de Software Júnior da Beedoo**. O objetivo central é demonstrar competências em **testes manuais**, **documentação estruturada**, **análise crítica de bugs** e **raciocínio orientado à qualidade de software** na prática em uma ferramenta web.

## 📂 Estrutura do Repositório

A estrutura deste repositório foi cuidadosamente planejada para promover **clareza, rastreabilidade e excelência profissional** em todas as etapas do ciclo de qualidade de software. Cada diretório e arquivo possui um propósito definido, facilitando a colaboração, manutenção e auditoria dos artefatos.

```
DESAFIO-QA-BEEDOO-2025/
├── README.md                # Guia principal do projeto e instruções iniciais
├── CHANGELOG.md             # Registro de alterações e histórico de execuções
├── setup.md                 # Procedimentos detalhados para configuração de ambiente
├── exploratory.md           # Relatórios e notas de testes exploratórios
├── gaps.md                  # Levantamento de gaps, riscos e oportunidades de melhoria
│
├── docs/                    # Documentação técnica e estratégica
│   ├── decisions.md         # Registro de decisões técnicas e de processo
│   ├── strategy.md          # Estratégia de testes e critérios de qualidade
│   └── vulnerabilities.md   # Mapeamento e análise de vulnerabilidades identificadas
│
├── features/                # Especificações de testes BDD (Gherkin)
│   ├── create_course.feature
│   ├── list_course.feature
│   └── delete_course.feature
│
├── sheets/                  # Evidências, planilhas e rastreabilidade de casos de teste
│   ├── 01-TestCases.csv
│   ├── 02-TestCases.csv
│   ├── 03-TestCases.csv
│   └── evidence_links.md
│
└── .github/                 # Templates e recursos de automação para o GitHub
    ├── ISSUE_TEMPLATE.md
    └── PULL_REQUEST_TEMPLATE.md
```

> Esta organização visa garantir a máxima transparência, facilitar auditorias e suportar a evolução contínua dos processos de qualidade.

### Ambiente de Teste

- **Aplicação:** https://creative-sherbet-a51eac.netlify.app/  
- **Ambiente:** Staging (ou Production)  
- **Sistema Operacional:** Windows 11 Pro 22H2  
- **Navegadores testados:**  
  - **Microsoft Edge:** 118.0.2088.0 (Stable)  
  - **Google Chrome:** 118.0.5993.90 (Stable)  
- **Resolução:** 1920 x 1080  
- **Condições de rede:** Conexão doméstica estável; testes adicionais com throttle 3s / 1 Mbps para simular alta latência / baixa banda  
- **Ferramentas:** DevTools (Network / Console); gravação: capcut (MP4), 60 FPS, 1280x720, codec H.264  
- **Observações:** limpar cache e cookies antes de cada execução da suíte; desabilitar extensões do navegador.

## 🛠️ Instruções para Execução dos Testes

1. Acesse o ambiente de testes: [https://creative-sherbet-a51eac.netlify.app/](https://creative-sherbet-a51eac.netlify.app/)
2. Abra o **DevTools** (F12) e selecione a aba **Network** > **Fetch/XHR**.
3. Siga os procedimentos descritos na planilha de casos de teste.
4. Utilize os dados de teste (`TestData`) especificados para cada cenário.
5. Compare os resultados obtidos com os resultados esperados (`ExpectedResult`).
6. Consulte os vídeos de evidência (formato MP4) para validação visual dos testes.

### Considerações sobre o Ambiente de Testes

O módulo disponível em [creative-sherbet-a51eac.netlify.app](https://creative-sherbet-a51eac.netlify.app/) consiste em um front-end estático hospedado no Netlify, sem integração com um back-end real. Durante a execução dos testes, foram observadas as seguintes limitações:

- **Ausência de persistência de dados:** Cursos criados não permanecem após atualização da página.
- **Inexistência de requisições GET/POST:** Não há comunicação com API, o que pode ser verificado na aba Network do DevTools.
- **Rotas inválidas:** Algumas rotas geradas pelo front-end resultam em erro 404 (exemplo: `/QA Essencial`).

Essas restrições foram devidamente consideradas na elaboração e execução dos casos de teste, bem como no registro dos bugs identificados.

> **Nota:** A análise concentrou-se na validação da interface, usabilidade, mensagens de erro e comportamento esperado do front-end, com o objetivo de identificar gaps e inconsistências relevantes.

## 📊 Planilha de Casos de Teste

Esta planilha consolida todos os cenários de teste, assegurando **rastreabilidade completa** das três User Stories: **Criar Curso**, **Listar Curso** e **Excluir Curso**. Cada caso de teste foi elaborado com foco em **cobertura total**, contemplando situações de **sucesso**, **falha**, **bordas**, **exceções** e **segurança**, alinhado às melhores práticas de QA.

### 🧪 Estrutura da Documentação

Os cenários e casos de teste estão organizados por User Story (US1, US2, US3), promovendo clareza, rastreabilidade e fácil manutenção. A estrutura contempla:

- **Abordagem dos Testes**: Casos descritos em **Gherkin** (`Given / When / Then`) ou em formato **passo a passo**, conforme a natureza do requisito.
- **Colunas Principais**:
    - `ID`, `StoryId`, `Title`, `PreCondition`, `Steps`, `ExpectedResult`, `ObtainedResult`, `Severity`, `Priority`, `Notes`, `Methodology`, `Performance`, entre outras.
- **Usabilidade**: Colunas congeladas para facilitar navegação e leitura, otimizando a análise horizontal dos dados.
- **Status dos Testes**:
    - **US1 – Criar Curso**: Todos os testes executados, com resultados documentados (`Passed`, `Failed`, `Blocked`).
    - **US2 – Listar Curso**: Testes registrados com status `Blocked`, devido a restrições de persistência no ambiente.
    - **US3 – Excluir Curso**: Estrutura de testes pronta, resultados em fase de consolidação.

📎 [Planilha Google Sheets](https://docs.google.com/spreadsheets/d/117UMb9cgL2hvZKnPAlYS_xqoPKqJS3Jy8xluBRSShbo/edit?usp=sharing)

---

### ▶️ Processo de Execução dos Testes

- Cada caso de teste possui instruções detalhadas nos campos `Steps` e `PreCondition`, permitindo execução reprodutível e auditável.
- Os testes foram conduzidos manualmente no ambiente [https://creative-sherbet-a51eac.netlify.app](https://creative-sherbet-a51eac.netlify.app), utilizando o navegador Google Chrome.
- Evidências de execução foram registradas em **vídeos MP4**, nomeados conforme o ID do teste (exemplo: `TC-003 - Criar com só título e descrição.mp4`).
- Os vídeos estão organizados por User Story e serão disponibilizados em repositório próprio.

📎 [Google Drive](https://drive.google.com/drive/folders/1ddDH1xobSX0sFvMgwXwk0TDnhJPZOoE1?usp=sharing)

---

### 🐞 Metodologia para Relato de Bugs

> Todos os defeitos identificados foram devidamente registrados em planilha específica, seguindo o padrão definido no desafio e alinhados às melhores práticas de documentação de qualidade de software.

### Estrutura do Relatório de Bugs

Cada registro contempla os seguintes campos obrigatórios:  
- **BugId**  
- **StoryId**  
- **TC-Relacionado**  
- **Título/Resumo**  
- **Descrição Curta**  
- **Resultado Esperado**  
- **Resultado Obtido**  
- **Evidências (links)**  
- **Severity**  
- **Priority**  
- **Observações Adicionais**  
- **Metodologia**

Além dos cenários previstos, foram identificados bugs em situações de validação negativa, ausência de persistência de dados e falhas de feedback visual. Todos os registros encontram-se organizados na planilha e devidamente referenciados no README do projeto.

📌 **Observações Importantes:**  
- Alguns testes foram classificados como **Blocked** (por exemplo, exclusão via interface do usuário) devido a limitações de implementação.  

- Nesses casos, a validação foi realizada parcialmente por meio de ferramentas de desenvolvedor (**DevTools**), utilizando requisições **DELETE** diretas, com as evidências devidamente anexadas ao relatório.

Os defeitos identificados foram documentados em uma **planilha dedicada**, seguindo padrão profissional:

📎 [Acessar relatório de bugs](https://docs.google.com/spreadsheets/d/117UMb9cgL2hvZKnPAlYS_xqoPKqJS3Jy8xluBRSShbo/edit?gid=324846143#gid=324846143)


## ✅ Estratégia adotada para os Casos de Teste

### 🧭 Metodologia Utilizada

> Para garantir a qualidade e a rastreabilidade dos testes realizados, foi adotada uma abordagem estruturada, combinando práticas de tecnicas recomendadas e complementares:

- **ISTQB (International Software Testing Qualifications Board)**  
    - Utilizado como referência para a elaboração dos casos de teste, definição de critérios de aceitação e classificação de defeitos. Padronização da documentação e garantia de rastreabilidade dos requisitos testados. Aplicação consistente dos critérios de **Severity** e **Priority**, considerando impacto no negócio e urgência de resolução.

- **Testes Exploratórios**  
    - Execução de sessões exploratórias para identificar falhas não previstas nos roteiros formais. Identificação de vulnerabilidades como XSS, ausência de validação de campos obrigatórios e duplicidade de registros.

- **Risk-Based Testing**  
    - Priorização dos cenários críticos com maior impacto para o negócio, como criação e listagem de cursos. Foco direcionado aos pontos mais sensíveis da aplicação, otimizando o esforço de teste.

- **Performance Check**  
    - Coleta de métricas de desempenho (LCP, CLS, INP) utilizando Chrome DevTools em fluxos representativos. Avaliação complementar de requisitos não-funcionais, como responsividade e experiência do usuário.

> Os casos de teste foram escritos em formato **Gherkin** e também em **passo a passo detalhado**, garantindo clareza e rastreabilidade. A estratégia aplicada buscou cobrir diferentes dimensões da qualidade do sistema, contemplando:

- **Cenários de sucesso**  
  - Fluxos principais de criação, listagem e exclusão de cursos.  
  - Validação de campos obrigatórios e limites definidos (ex.: título ≤ 255 caracteres).  
  - Verificação de ordenação, paginação e feedback visual esperado.  

- **Cenários de erro**  
  - Tentativas de criar cursos com dados inválidos (campos vazios, formatos incorretos, datas inconsistentes).  
  - URLs de imagem inválidas ou quebradas.  
  - Erros de rede simulados (timeout, backend 500).  
  - Exclusão de curso inexistente (404) ou sem permissão (403).  

- **Casos de borda**  
  - Limite máximo de caracteres em campos (255/256).  
  - Vagas zero ou negativas.  
  - Listagem com 0 cursos (estado vazio).  
  - Paginação com mais de 10 cursos.  
  - Double submit (cliques múltiplos no botão de salvar).  

- **Fluxos de exceção**  
  - Tratamento de falhas no backend (500, timeout).  
  - Mensagens de erro claras e localizadas (i18n).  
  - Consistência eventual entre criação e listagem.  
  - Exclusão repetida do mesmo curso (idempotência).  

- **Testes de segurança**  
  - Sanitização de inputs contra XSS (`<script>` removido, `<b>` permitido).  
  - Tentativas de payloads maliciosos.  
  - Exclusão sem permissão (403).  
  - Garantia de que dados inválidos não corrompem o sistema.  

## 📋 User Stories

### 📌 Metodologia para Definição das User Stories

As User Stories foram elaboradas a partir de uma análise funcional detalhada do módulo de cursos disponível no ambiente do Beedoo Challenge: [https://creative-sherbet-a51eac.netlify.app](https://creative-sherbet-a51eac.netlify.app). O processo adotado seguiu as melhores práticas, visando garantir cobertura abrangente e rastreabilidade dos requisitos.

### Critérios Utilizados

- **Análise Exploratória da Interface:** Realizada navegação sistemática por todas as rotas disponíveis (`/new-course`, `/courses`) para mapear fluxos, identificar elementos interativos e possíveis pontos críticos.
- **Cobertura Funcional Abrangente:** As histórias contemplam os principais fluxos do sistema — **criação de curso**, **listagem de cursos** e **exclusão de curso** — incluindo cenários de sucesso, falha e segurança.
- **Validação Negativa e de Borda:** Foram definidos cenários para campos obrigatórios em branco, valores inválidos, tentativas de duplicidade, ataques XSS e simulação de falhas de rede, validando deste modo a robustez da aplicação.
- **Observação de Limitações do Ambiente:** Alguns testes foram classificados como *Blocked* devido a restrições do ambiente, como ausência de persistência, feedback visual insuficiente ou falta de validações.
- **Padronização em Gherkin:** Todos os cenários foram documentados no padrão `Given / When / Then`, promovendo clareza, padronização e facilidade de manutenção.
- **Priorização Baseada em Risco:** Os testes foram categorizados por severidade e prioridade, considerando o impacto potencial ao usuário final e a criticidade das funcionalidades.

### US1 – Criar Curso

### Descrição
Como usuário (sem autenticação), desejo cadastrar um novo curso na tela `/novo-curso`, garantindo validação de campos, prevenção de dados inválidos/maliciosos, integração correta com o backend, resiliência a diferentes tipos de dados, anexos e links, segurança e testabilidade em múltiplos navegadores.

> **Nota:** A aplicação não possui autenticação atualmente. Qualquer usuário pode criar cursos. Isso é uma **limitação de escopo** e uma **oportunidade de melhoria futura** para garantir a integridade da ferramenta.

### Atores
- Usuário (sem autenticação): qualquer pessoa que acessa a aplicação.

### Critérios de Aceite

#### Regras Funcionais
- Campos obrigatórios: título, descrição.
- Limite de caracteres: título ≤ 255; descrição ≤ 2000.
- Datas: `start_date` deve ser anterior a `end_date`.
- Vagas: campo numérico, valor maior que zero.
- Unicidade: cursos duplicados tratados conforme regra de negócio.
- URLs de imagem: inválidas ou quebradas exibem imagem padrão (placeholder).
- Double submit: ao clicar duas vezes em “Salvar”, apenas um curso é criado.

#### Regras Não Funcionais
- Mensagens de erro claras e localizadas (i18n).
- Feedback visual consistente (loading, erros, confirmações).
- Sanitização de inputs:
    - Bloquear ou escapar tags perigosas (`<script>`, `<iframe>`, `<img onerror>`).
    - Permitir tags inofensivas (`<b>`, `<i>`).

### US2 – Listar Cursos

### Descrição
Como usuário (sem autenticação), desejo visualizar os cursos cadastrados, com dados claros, ordenação adequada e feedback visual, incluindo tratamento de estados vazios, erros de rede e paginação.

### Atores
- Usuário (sem autenticação): qualquer pessoa pode visualizar cursos.

### Critérios de Aceite

#### Regras Funcionais
- Listagem exibe título e trecho da descrição de cada curso.
- Estado vazio: exibir mensagem “Nenhum curso encontrado”.
- Após criação de curso (US1), ele aparece na listagem imediatamente ou após delay aceitável.
- Indicador de carregamento até resposta da API.
- Timeout/erro de rede: mensagem clara e opção de recarregar.
- Paginação correta, mantendo ordenação estável.

#### Regras Não Funcionais
- Feedback visual: loading spinner até resposta da API.
- Mensagens de erro claras e localizadas (i18n).
- Tratamento de falhas de rede: mensagem de erro e botão de retry.
- Consistência eventual documentada, se houver delay na replicação.

### US3 – Excluir Curso

### Descrição
Como usuário, desejo remover um curso existente, com confirmação explícita, feedback claro e operação idempotente (repetição não causa efeitos colaterais).

> **Nota:** Exclusão não está implementada na interface (botão não funcional). Só pode ser validada parcialmente via requisições diretas no DevTools. Gap de implementação registrado.

### Atores
- Usuário (sem autenticação): pode visualizar cursos.
- Usuário com permissão de remoção: esperado em sistemas reais, não implementado neste escopo.

### Critérios de Aceite

- CA-1: Exclusão exige confirmação explícita (modal Confirmar/Cancelar).
- CA-2: Após confirmação e sucesso, o curso desaparece da listagem.
- CA-3: Repetir exclusão do mesmo recurso retorna erro claro (404) sem efeitos colaterais.
- CA-4: Tentativa de excluir sem permissão retorna 403 e não remove o recurso.
- CA-5: Em caso de erro de backend, a UI informa falha e mantém o item na lista.
- CA-6: Operação deve registrar código HTTP apropriado (200/204 no sucesso, 404/403/500 conforme o caso).

## 🧠 Decisões Tomadas

**Escopo definido**  
- Funcionalidades testadas: `Create Course` (US1), `List Courses` (US2), `Delete Course` (US3)  
- Cobertura inclui: validação de formulário, integração com API, tratamento de erros, segurança e compatibilidade entre navegadores

**Critérios de aceite gerais**  
- Dados válidos devem ser aceitos e persistidos  
- Dados inválidos devem ser rejeitados com mensagens claras  
- Respostas da API devem retornar status HTTP corretos  
- A interface deve refletir o estado do backend de forma consistente

**Cobertura de testes**  
- **Happy path**: criação, listagem e exclusão com dados válidos  
- **Casos negativos**: campos inválidos, datas incorretas, URLs quebradas  
- **Casos de borda**: limite de caracteres, duplicidade, `double submit`  
- **Segurança**: XSS, tentativa de IDOR, falhas de backend

**Priorização**  
- Aplicado `Risk-Based Testing`:  
  - Alta prioridade: validação de dados, segurança, integração com API  
  - Média prioridade: mensagens de erro, feedback visual  
  - Baixa prioridade: questões cosméticas

**Abordagem de validação**  
- Validação na **interface (UI)**: comportamento do formulário, mensagens de erro  
- Validação na **API**: payload, status de resposta, consistência de dados  
- Testes em múltiplos navegadores: Edge e Chrome  
- Todas as execuções foram gravadas em vídeo (MP4) e linkadas na planilha

## 💡 Melhorias Sugeridas

---

## 📬 Agradecimentos

 
 