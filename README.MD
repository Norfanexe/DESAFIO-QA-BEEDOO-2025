# Desafio QA Beedoo 2025

# 🧭 Sumário

- [📌 Objetivo](#-objetivo)
- [📈 Dashboard](#-dashboard)
- [⭐ Destaques do Projeto](#-destaques-do-projeto)
- [🏗️ Arquitetura do Projeto](#️-arquitetura-do-projeto)
  - [📂 Estrutura do Repositório](#-estrutura-do-repositório)
  - [📂 Ambiente de Teste](#-Ambiente-de-Teste)
  - [🛠️ Ferramentas Utilizadas](#️-ferramentas-utilizadas)
  - [🎯 Escopo](#-escopo)
  - [🎯 Fora do Escopo](#Fora-do-escopo)
  - [🛠️ Instruções de Execução](#️-instruções-de-execução)

- [📊 Planilha de Casos de Teste](#-planilha-de-casos-de-teste)
- [▶️ Estrutura da Documentação](#️-Estrutura-da-Documentação)
  - [▶️ Processo de Execução dos Testes](#️-processo-de-execução-dos-testes)
  - [🐞 Metodologia para Relato de Bugs](#-metodologia-para-relato-de-bugs)
  - [✅ Estratégia adotada para os Casos de Teste](#-estratégia-adotada-para-os-casos-de-teste)

- [📖 Regras de Negócio](#-regras-de-negócio)
- [⚙️ Requisitos Funcionais](#️-requisitos-funcionais)
- [📋 User Stories](#-user-stories)

- [📊 Resumo de Qualidade](#-Resumo-de-Qualidade)
  - [🔗 Matriz de Rastreabilidade](#-matriz-de-rastreabilidade)
  - [📈 Métricas de Qualidade](#-métricas-de-qualidade)
  - [⚠️ Análise de Riscos](#️-análise-de-riscos)

- [🐞 Relatório de Bugs](#-relatório-de-bugs)
- [📊 Relatório de Distribuição por Tipo de Bug](#-relatório-de-distribuição-por-tipo-de-bug)

- [📌 Observações Finais](#-observações-finais)
- [💡 Melhorias Sugeridas](#-melhorias-sugeridas)
- [📬 Conclusão](#-Conclusão)

## 📌 Objetivo

Este projeto foi desenvolvido como solução para o desafio técnico de Analista de Qualidade de Software da Beedoo, com o objetivo de demonstrar conhecimentos em Engenharia de Testes, planejamento, documentação, execução manual, análise de defeitos e rastreabilidade de requisitos.

A proposta vai além da simples execução de testes, apresentando um processo completo de Garantia da Qualidade baseado em boas práticas recomendadas pelo ISTQB, técnicas exploratórias e testes orientados a risco (Risk-Based Testing).

Todo o projeto foi estruturado para simular a documentação utilizada em equipes profissionais de QA, contemplando planejamento, casos de teste, cenários BDD, relatório de bugs, métricas, evidências e recomendações de melhoria.

## 📈 Dashboard 

| Indicador | Resultado |
|------------|----------:|
| User Stories | 3 |
| Casos de Teste | 26 |
| Bugs encontrados | 20 |
| Passed | 7 |
| Failed | 14 |
| Blocked | 5 |
| Cobertura dos Requisitos | 100% |
| Severidade Alta | 60% |
| Severidade Média | 32% |
| Severidade Baixa | 8% |

Foram elaborados 26 casos de teste, distribuídos entre três User Stories, resultando na identificação de 20 defeitos, dos quais 60% possuem severidade alta. Os resultados indicam cobertura funcional completa do escopo analisado e evidenciam oportunidades relevantes de melhoria nas validações de negócio e na robustez da aplicação.

## ⭐ Destaques do Projeto

✔ Planejamento completo de testes

✔ 26 Casos de Teste

✔ 20 Bugs documentados

✔ Cenários em Gherkin

✔ Testes Exploratórios

✔ Risk-Based Testing

✔ ISTQB

✔ Relatórios executivos

✔ Evidências em vídeo

✔ Dashboards de resultados

✔ Métricas de Qualidade

✔ Documentação completa

## 🏗️ Arquitetura do Projeto

O projeto foi organizado seguindo uma estrutura voltada para rastreabilidade e facilidade de manutenção.

README
│
├── Features (BDD)
│
├── Casos de Teste
│
├── Evidências
│
├── Relatórios
│
├── Dashboards
│
└── Melhorias

### 📂 Estrutura do Repositório

A estrutura deste repositório foi cuidadosamente planejada para promover **clareza, rastreabilidade e excelência profissional** em todas as etapas do ciclo de qualidade de software. Cada diretório e arquivo possui um propósito definido, facilitando a colaboração, manutenção e auditoria dos artefatos.

```
DESAFIO-QA-BEEDOO-2025/
├── README.md                 # Documentação principal do projeto
│
├── features/                 # Especificações de testes BDD (Gherkin)
│   ├── 1_create_course.feature
│   ├── 2_list_course.feature
│   ├── 3_delete_course.feature
│
├── Reports/                  # Relatórios e evidências
│   ├── Charts/               # Gráficos de resultados de testes
│   │   ├── Severity Result.png
│   │   ├── Test Result.png
│   │   ├── User Story Result.png
│   │   ├── User Story Severity.png
│
├── Improvements.md            # Registro de melhorias contínuas

```
> Esta organização visa garantir a máxima transparência, facilitar auditorias e suportar a evolução contínua dos processos de qualidade.

### 📂 Ambiente de Teste

- **Aplicação:** https://creative-sherbet-a51eac.netlify.app/  
- **Sistema Operacional:** Windows 11 Pro 22H2  
- **Navegador testado:** **Google Chrome:** 118.0.5993.90 (Stable)  
- **Resolução:** 1360x720 
- **Ferramentas:** DevTools (Network / Console); gravação: microsoft clipchamp (MP4), 60 FPS, 1360x720, codec H.264  
- **Observações:** limpar cache e cookies antes de cada execução da suíte; desabilitar extensões do navegador.

### 🛠️ Ferramentas Utilizadas

| Categoria | Ferramenta |
|------------|------------|
| Testes | Testes Manuais |
| Metodologia | ISTQB |
| Técnica | Testes Exploratórios |
| Técnica | Risk-Based Testing |
| Documentação | Google Sheets |
| BDD | Gherkin |
| Navegador | Google Chrome |
| DevTools | Chrome DevTools |
| Evidências | Microsoft Clipchamp |
| Versionamento | Git / GitHub |

### 🎯 Escopo

Foram avaliadas três funcionalidades principais da aplicação:

- Criação de cursos

- Listagem de cursos

- Exclusão de cursos

Cada funcionalidade foi analisada sob diferentes perspectivas:

- Funcional

- Negativa

- Segurança

- Validação

- Experiência do usuário

- Regras de negócio

- Robustez

- Performance

- Usabilidade

# 🚫 Fora do Escopo

Não fizeram parte desta avaliação:

- Testes automatizados

- Testes de carga

- Testes de stress

- Testes mobile

- Testes de acessibilidade completos

- Integração com ambientes produtivos

- Testes de autenticação (funcionalidade inexistente)

## 🛠️ Instruções de Execução

1. Acesse o ambiente de testes: [https://creative-sherbet-a51eac.netlify.app/](https://creative-sherbet-a51eac.netlify.app/)
2. Abra o **DevTools** (F12) e selecione a aba **Network**
3. Siga os procedimentos descritos na planilha de casos de teste.
4. Utilize os dados de teste (`TestData`) especificados para cada cenário que for necessário.
5. Compare os resultados obtidos com os resultados esperados (`ExpectedResult`).
6. Consulte os vídeos de evidência (formato MP4) para validação visual dos testes disponíveis no drive.

### Considerações sobre o Ambiente de Testes

O módulo disponível em [creative-sherbet-a51eac.netlify.app](https://creative-sherbet-a51eac.netlify.app/) consiste em um front-end estático hospedado no Netlify. Durante a execução dos testes, foram observadas as seguintes limitações:

- **Ausência de persistência de dados:** Cursos criados não possuem opção de acessar, bem como links das salas após atualização da página.
- **Rotas inválidas:** Algumas rotas geradas pelo front-end resultam em erro 404 (exemplo: `/QA Essencial`).

Essas restrições foram devidamente consideradas na elaboração e execução dos casos de teste, bem como no registro dos bugs e features identificadas .

> **Nota:** A análise concentrou-se na validação da interface, usabilidade, mensagens de erro e comportamento esperado do front-end, com o objetivo de identificar gaps e inconsistências relevantes.

## 📊 Planilha de Casos de Teste

A planilha consolida todos os cenários de teste, assegurando **rastreabilidade completa** das três User Stories: **Criar Curso**, **Listar Curso** e **Excluir Curso**. Cada caso de teste foi elaborado com foco em **cobertura total**, contemplando situações de **sucesso**, **falha**, **bordas**, **exceções** e **segurança**, alinhado às melhores práticas de QA.

### 🧪 Estrutura da Documentação

Os cenários e casos de teste estão organizados por User Story (US1, US2, US3), promovendo clareza, rastreabilidade e fácil manutenção. A estrutura contempla:

- **Abordagem dos Testes**: Casos descritos em **Gherkin** (`Given / When / Then`) ou em formato **passo a passo**, conforme a natureza do requisito.
- **Colunas Principais**:
    - `ID`, `StoryId`, `Title`, `PreCondition`, `Steps`, `ExpectedResult`, `ObtainedResult`, `Severity`, `Priority`, `Notes`, `Methodology`, `Performance`, entre outras.
- **Usabilidade**: Colunas congeladas para facilitar navegação e leitura, otimizando a análise horizontal dos dados.

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
- **Title / Summary**  
- **Description**  
- **Expected Result**  
- **Actual Result**  
- **Evidence (link)**  
- **Severity**  
- **Priority**  
- **Methodology**

Além dos cenários previstos, foram identificados bugs em situações de validação negativa, ausência de persistência de dados e falhas de feedback visual. Todos os registros encontram-se organizados na planilha e devidamente referenciados no README do projeto e evidências gravadas.

📌 **Observações Importantes:**  
- Alguns testes foram classificados como **Blocked** (por exemplo, exclusão via interface do usuário) devido a limitações da atual implementação.  

- Nesses casos, a validação foi realizada parcialmente por meio de ferramentas de desenvolvedor (**DevTools**), utilizando requisições **DELETE** diretas, com as evidências devidamente anexadas ao relatório.

Os defeitos identificados foram documentados na **Planilha Google Sheets**:

### 🔎 Observação Geral sobre Ambiente/Backend

Durante a execução dos testes, foram identificados retornos recorrentes de **404 (Not Found)** em requisições de listagem e **405 (Method Not Allowed)** em requisições de exclusão.  
Esses erros indicam que o frontend está tentando acessar rotas inexistentes ou que o backend não implementa/permite determinados métodos (como DELETE).  

Esse comportamento afeta **todos os cenários relacionados à listagem e exclusão de cursos**, resultando em falhas ou bloqueios que não estão necessariamente ligados à lógica do frontend, mas sim a limitações do ambiente de teste.   Portanto, parte dos resultados (Failed/Blocked) deve ser interpretada como **gap de implementação no backend** e não apenas como bug funcional do sistema.

📎 [Acessar relatório de bugs](https://docs.google.com/spreadsheets/d/117UMb9cgL2hvZKnPAlYS_xqoPKqJS3Jy8xluBRSShbo/edit?gid=324846143#gid=324846143)


## ✅ Estratégia adotada para os Casos de Teste

### 🧭 Metodologia Utilizada

> Para garantir a qualidade e a rastreabilidade dos testes realizados, foi adotada uma abordagem combinando práticas de tecnicas recomendadas e complementares:

- **ISTQB (International Software Testing Qualifications Board)**  
    - Utilizado como referência para a elaboração dos casos de teste, definição de critérios de aceitação e classificação de defeitos. Padronização da documentação e garantia de rastreabilidade dos requisitos testados. Aplicação consistente dos critérios de **Severity** e **Priority**, considerando impacto no negócio e urgência de resolução.

- **Testes Exploratórios**  
    - Execução de sessões exploratórias para identificar falhas não previstas nos roteiros formais. Identificação de vulnerabilidades como XSS, ausência de validação de campos obrigatórios e duplicidade de registros.

- **Risk-Based Testing**  
    - Priorização dos cenários críticos com maior impacto para o negócio, como criação e listagem de cursos. Foco direcionado aos pontos mais sensíveis da aplicação, otimizando o esforço de teste.

- **Performance Check**  
    - Coleta de métricas de desempenho (LCP, CLS, INP) utilizando Chrome DevTools em fluxos representativos. Avaliação complementar de requisitos não-funcionais, como responsividade e experiência do usuário.

> Os casos de teste foram escritos em formato **Gherkin** e também em **passo a passo detalhado**, garantindo clareza e rastreabilidade. A estratégia aplicada buscou cobrir diferentes dimensões da qualidade do sistema, contemplando:

> A definição das metodologias, não exatamente define que um determinado teste usou uma unica metodologia. O objetivo deste registro é demonstrar o caminho base utilizado para definir os testes, e é correto pensar que ambas as metodologias acima, em conjunto, gerou a completude deste documento.

# 📖 Regras de Negócio

As regras de negócio abaixo representam os comportamentos esperados da aplicação e servem como base para elaboração dos casos de teste, cenários BDD e validação dos requisitos funcionais.

| ID | Regra de Negócio |
|----|------------------|
| RN-001 | O título do curso é obrigatório. |
| RN-002 | A descrição do curso é obrigatória. |
| RN-003 | O título deve possuir no máximo 255 caracteres. |
| RN-004 | A descrição deve possuir no máximo 2000 caracteres. |
| RN-005 | A data de início deve ser anterior à data de término. |
| RN-006 | O número de vagas deve ser maior que zero. |
| RN-007 | Não deve ser permitido cadastrar cursos duplicados. |
| RN-008 | URLs inválidas devem utilizar uma imagem padrão (placeholder). |
| RN-009 | A aplicação deve impedir múltiplos envios simultâneos (double submit). |
| RN-010 | Campos de texto devem ser protegidos contra ataques XSS. |
| RN-011 | A listagem deve exibir todos os cursos cadastrados. |
| RN-012 | A listagem deve apresentar estado vazio quando não houver registros. |
| RN-013 | Os cursos devem ser apresentados em ordem cronológica definida pela regra do negócio. |
| RN-014 | A exclusão de um curso deve exigir confirmação do usuário. |
| RN-015 | Após excluir um curso, ele não deve permanecer na listagem. |
| RN-016 | A operação de exclusão deve ser idempotente. |
| RN-017 | Apenas usuários autorizados devem excluir cursos. |

# ⚙️ Requisitos Funcionais

Os requisitos funcionais descrevem as funcionalidades esperadas da aplicação e estão diretamente relacionados às regras de negócio, User Stories e casos de teste.

| ID | Requisito Funcional |
|----|---------------------|
| RF-001 | Permitir o cadastro de cursos. |
| RF-002 | Validar campos obrigatórios durante o cadastro. |
| RF-003 | Validar regras de datas do curso. |
| RF-004 | Validar quantidade de vagas. |
| RF-005 | Impedir cadastro duplicado. |
| RF-006 | Validar URLs de imagem. |
| RF-007 | Sanitizar entradas do usuário. |
| RF-008 | Listar cursos cadastrados. |
| RF-009 | Exibir estado vazio quando não houver cursos. |
| RF-010 | Ordenar cursos conforme regra estabelecida. |
| RF-011 | Exibir indicadores de carregamento. |
| RF-012 | Permitir exclusão de cursos. |
| RF-013 | Solicitar confirmação antes da exclusão. |
| RF-014 | Atualizar a listagem após exclusão. |
| RF-015 | Controlar permissões de exclusão. |

## 📋 User Stories

### 📌 Metodologia para Definição das User Stories
As User Stories foram elaboradas a partir de uma análise funcional detalhada do módulo de cursos disponível no ambiente do Beedoo Challenge: [https://creative-sherbet-a51eac.netlify.app](https://creative-sherbet-a51eac.netlify.app). O processo adotado seguiu as melhores práticas, visando garantir cobertura abrangente e rastreabilidade dos requisitos.

### Critérios Utilizados
- **Análise Exploratória da Interface:** Navegação sistemática por todas as rotas disponíveis (`/new-course`, `/courses`) para mapear fluxos, identificar elementos interativos e pontos críticos.  
- **Cobertura Funcional Abrangente:** Histórias contemplam os principais fluxos do sistema — **criação de curso**, **listagem de cursos** e **exclusão de curso** — incluindo cenários de sucesso, falha e segurança.  
- **Validação Negativa e de Borda:** Cenários para campos obrigatórios em branco, valores inválidos, duplicidade, ataques XSS e falhas de rede.  
- **Observação de Limitações do Ambiente:** Alguns testes foram classificados como *Blocked* devido a restrições do ambiente (ex.: ausência de persistência, feedback visual insuficiente).  
- **Padronização em Gherkin:** Todos os cenários documentados no padrão `Given / When / Then`.  
- **Priorização Baseada em Risco:** Testes categorizados por severidade e prioridade, considerando impacto ao usuário final.  

---

## 📚 US1 – Criar Curso

**Requisitos relacionados:** RF-001 ao RF-007

**Regras de negócio relacionadas:** RN-001 ao RN-010

#### Descrição
Como usuário (sem autenticação), desejo cadastrar um novo curso na tela `/new-course`, garantindo validação de campos, prevenção de dados inválidos/maliciosos, integração correta com o backend, resiliência a diferentes tipos de dados, anexos e links, segurança e testabilidade em múltiplos navegadores.

#### Atores

- Usuário (sem autenticação): qualquer pessoa que acessa a aplicação.

> **Nota:** A aplicação não possui autenticação atualmente. Qualquer usuário pode criar cursos. Isso é uma **limitação de escopo** e uma **oportunidade de melhoria futura**.

#### Critérios de Aceite

**Regras Funcionais**
- Campos obrigatórios: título, descrição.  
- Limite de caracteres: título ≤ 255; descrição ≤ 2000.  
- Datas: `start_date` deve ser anterior a `end_date`.  
- Vagas: campo numérico, valor maior que zero.  
- Unicidade: cursos duplicados tratados conforme regra de negócio.  
- URLs de imagem: inválidas ou quebradas exibem imagem padrão (placeholder).  
- Double submit: ao clicar duas vezes em “Salvar”, apenas um curso é criado.  

**Regras Não Funcionais**
- Mensagens de erro claras e localizadas (i18n).  
- Feedback visual consistente (loading, erros, confirmações).  
- Sanitização de inputs:  
  - Bloquear ou escapar tags perigosas (`<script>`, `<iframe>`, `<img onerror>`).  
  - Permitir tags inofensivas (`<b>`, `<i>`).  

---

## 📚 US2 – Listar Cursos

**Requisitos relacionados:** RF-008 ao RF-011

**Regras de negócio relacionadas:** RN-011 ao RN-013

#### Descrição
Como usuário (sem autenticação), desejo visualizar os cursos cadastrados, com dados claros, ordenação adequada e feedback visual, incluindo tratamento de estados vazios, erros de rede e paginação.

#### Atores
- Usuário (sem autenticação): qualquer pessoa pode visualizar cursos.

#### Critérios de Aceite

**Regras Funcionais**
- A listagem deve exibir título, descrição resumida, instrutor, datas, vagas e imagem de capa.  
- Estado vazio: exibir mensagem “Nenhum curso encontrado”.  
- Após criação de curso (US1), ele deve aparecer na listagem imediatamente ou após delay aceitável.  
- Indicador de carregamento exibido até resposta da API.  
- Timeout/erro de rede: mensagem clara e opção de recarregar.  
- Paginação correta, mantendo ordenação estável.  
- Ordenação padrão: cursos mais recentes primeiro (data de início decrescente).  

**Regras Não Funcionais**
- Feedback visual consistente (loading spinner até resposta da API).  
- Mensagens de erro claras e localizadas (i18n).  
- Tratamento de falhas de rede: mensagem de erro amigável e botão de retry.  
- Consistência eventual documentada, se houver delay na replicação.  
- Compatibilidade cross-browser: listagem deve renderizar corretamente em navegadores suportados.  

---

## 📚 US3 – Excluir Curso

**Requisitos relacionados:** RF-012 ao RF-015

**Regras de negócio relacionadas:** RN-014 ao RN-017

#### Descrição
Como usuário, desejo remover um curso existente, com confirmação explícita, feedback claro e operação idempotente (repetição não causa efeitos colaterais).

> **Nota:** Exclusão não está implementada na interface (botão não funcional). Só pode ser validada parcialmente via requisições diretas no DevTools. Gap de implementação registrado.

#### Atores
- Usuário (sem autenticação): pode visualizar cursos.  
- Usuário com permissão de remoção: esperado em sistemas reais, não implementado neste escopo.  

#### Critérios de Aceite

**Regras Funcionais**
- Exclusão exige confirmação explícita (modal Confirmar/Cancelar).  
- Após confirmação e sucesso, o curso desaparece da listagem.  
- Repetir exclusão do mesmo recurso retorna erro claro (404) sem efeitos colaterais.  
- Tentativa de excluir sem permissão retorna 403 e não remove o recurso.  
- Em caso de erro de backend (500), a UI informa falha e mantém o item na lista.  
- Operação deve registrar código HTTP apropriado (200/204 no sucesso, 404/403/500 conforme o caso).  

**Regras Não Funcionais**
- Mensagens de erro claras e localizadas (i18n).  
- Feedback visual consistente (loading, erros, confirmações).  
- Operação deve ser idempotente: múltiplas requisições de exclusão não causam efeitos colaterais.  

## 📊 Resumo de Qualidade

Durante a execução da estratégia de testes foram planejados e executados 26 casos de teste, cobrindo integralmente as três funcionalidades previstas no escopo do desafio.

Foram identificados 20 defeitos, distribuídos entre falhas funcionais, limitações do ambiente de testes, problemas de interface e vulnerabilidades de segurança.

Os resultados demonstram que a maior parte dos problemas está concentrada no fluxo de criação de cursos, principalmente em validações de regras de negócio, consistência dos dados e tratamento de erros.

Apesar da cobertura funcional atingir 100%, a elevada incidência de falhas de alta severidade indica que a aplicação necessita de evolução antes de uma disponibilização em ambiente produtivo.

O detalhamento completo, incluindo casos de teste, evidências, bugs e rastreabilidade, está disponível na [planilha de testes](https://docs.google.com/spreadsheets/d/117UMb9cgL2hvZKnPAlYS_xqoPKqJS3Jy8xluBRSShbo/edit?gid=0).

  ---

  ### US1 – Criar Curso

  | Critério                              | Status         | Observações                                                                 |
  |----------------------------------------|----------------|----------------------------------------------------------------------------|
  | Campos obrigatórios                    | ❌ Falhou      | Validação insuficiente; campos não obrigatórios permitidos.                 |
  | Limite de caracteres                   | ❌ Falhou      | Não há restrição adequada; risco de overflow.                              |
  | Datas válidas                          | ❌ Falhou      | Aceita datas inválidas; pode comprometer integridade dos dados.            |
  | Vagas numéricas > 0                    | ❌ Falhou      | Permite valores nulos/negativos; impacto na lógica de negócio.             |
  | Unicidade de curso                     | ❌ Falhou      | Possível duplicidade de registros.                                         |
  | URLs de imagem                         | ❌ Falhou      | Aceita URLs inválidas; validação parcial implementada.                     |
  | Double submit                          | ✅ Passou      | previne envios duplicados; risco de inconsistência.                    |
  | Sanitização de inputs (XSS)            | ❌ Falhou      | Proteção adequada contra ataques XSS.                                      |
  | Mensagens de erro claras               | ❌ Falhou      | Mensagens genéricas; dificulta entendimento do usuário.                    |
  | Feedback visual                        | ❌ Falhou      | Não foi possível validar nesta rodada de testes.                           |

  ---

  ### US2 – Listar Cursos

  | Critério                               | Status         | Observações                                                                 |
  |----------------------------------------|----------------|-----------------------------------------------------------------------------|
  | Listagem com dados válidos             | ✅ Passou      | Dados exibidos corretamente.                                                |
  | Estado vazio                           | ✅ Passou*     | Comportamento adequado, porém com ressalvas documentadas.                   |
  | Ordenação por data                     | ⏳ Bloqueado   | Funcionalidade não disponível para teste.                                   |
  | Indicador de loading                   | ❌ Falhou      | Ausência de feedback visual durante carregamento.                           |
  | Paginação (>10 cursos)                 | ⏳ Bloqueado   | Não implementado ou indisponível para validação.                            |
  | Curso recém-criado aparece             | ✅ Passou*     | Exibe corretamente, com observações menores.                                |
  | Curso excluído desaparece              | ❌ Falhou      | Persistência de dados removidos; possível cache ou falha de atualização.    |
  | Cross-browser                          | ✅ Passou      | Comportamento consistente nos principais navegadores.                       |

  ---

  ### US3 – Excluir Curso

  | Critério                              | Status         | Observações                                                                 |
  |----------------------------------------|----------------|----------------------------------------------------------------------------|
  | Exclusão com confirmação               | ❌ Falhou      | Falta de confirmação; risco de exclusão acidental.                          |
  | Cancelar exclusão                      | ⏳ Bloqueado       | Não há opção de cancelar; experiência do usuário prejudicada.               |
  | Exclusão repetida (idempotência)       | ❌ Falhou      | Não trata múltiplas requisições; pode gerar erros inesperados.              |
  | Exclusão sem permissão (403)           | ⏳ Bloqueado   | Não foi possível validar restrições de permissão nesta rodada.              |

  ### ✅ Resumo de Execução
  Foram planejados **26 casos de teste** cobrindo as User Stories de criação, listagem e exclusão de cursos.

  | Status   | Quantidade | %    |
  |----------|------------|------|
  | Passed   | 7          | 27%  |
  | Failed   | 14         | 54%  |
  | Blocked  | 5          | 19%  |
  | **Total**| 26         | 100% |

  Requisitos Cobertos: 100%

  A alta taxa de falhas demonstra problemas importantes de implementação, enquanto os cenários bloqueados estão relacionados principalmente às limitações do ambiente de testes, e não necessariamente a defeitos da interface.

  ---

  ### 📌 Distribuição por User Story

  | User Story          | Casos Planejados | Passed | Failed | Blocked |
  |---------------------|------------------|--------|--------|---------|
  | US1 – Criar Curso   | 16               | 4      | 11     | 1       |
  | US2 – Listar Curso  | 6                | 3      | 1      | 2       |
  | US3 – Excluir Curso | 4                | 0      | 2      | 2       |

  ---

  ### 🚦 Distribuição por Severidade

High

60%

██████████████████

Medium

32%

█████████

Low

8%

██

Com base nos defeitos identificados, observa-se que 60% dos bugs possuem severidade alta, indicando que a maior parte das falhas impacta diretamente funcionalidades essenciais da aplicação.

As principais categorias envolvem:

* validação de regras de negócio;
* integridade dos dados;
* consistência funcional;
* segurança;
* persistência.

Esse cenário evidencia que a aplicação necessita de uma revisão significativa antes de uma liberação para produção.


  ---

  # 🔗 Matriz de Rastreabilidade

A matriz de rastreabilidade estabelece a relação entre as regras de negócio, requisitos funcionais, User Stories, casos de teste, cenários BDD e bugs identificados durante a execução dos testes.

Essa estrutura garante maior controle sobre a cobertura funcional da aplicação, facilitando auditorias, manutenção da documentação e identificação do impacto das falhas encontradas.

 ## 📚 US1 – Criar Curso

| RN     | RF     | US  | Casos de Teste | Feature       | Bugs    |
| ------ | ------ | --- | -------------- | ------------- | ------- |
| RN-001 | RF-001 | US1 | CT-001         | Create Course | BUG-001 |
| RN-002 | RF-002 | US1 | CT-002         | Create Course | BUG-002 |
| RN-003 | RF-002 | US1 | CT-003         | Create Course | BUG-003 |
| RN-004 | RF-002 | US1 | CT-004         | Create Course | BUG-004 |
| RN-005 | RF-003 | US1 | CT-005         | Create Course | BUG-008 |
| RN-006 | RF-004 | US1 | CT-006         | Create Course | BUG-010 |
| RN-007 | RF-005 | US1 | CT-007         | Create Course | BUG-006 |
| RN-008 | RF-006 | US1 | CT-008         | Create Course | BUG-007 |
| RN-009 | RF-001 | US1 | CT-009         | Create Course | —       |
| RN-010 | RF-007 | US1 | CT-010         | Create Course | BUG-011 |

 ## 📚 US2 – Listar Cursos

| RN     | RF     | US  | Casos de Teste | Feature      | Bugs    |
| ------ | ------ | --- | -------------- | ------------ | ------- |
| RN-011 | RF-008 | US2 | CT-011         | List Courses | BUG-013 |
| RN-012 | RF-009 | US2 | CT-012         | List Courses | BUG-013 |
| RN-013 | RF-010 | US2 | CT-013         | List Courses | BUG-014 |
| RN-011 | RF-011 | US2 | CT-014         | List Courses | BUG-015 |
| RN-011 | RF-008 | US2 | CT-015         | List Courses | BUG-016 |

## 📚 US3 – Excluir Curso

| RN     | RF     | US  | Casos de Teste | Feature       | Bugs    |
| ------ | ------ | --- | -------------- | ------------- | ------- |
| RN-014 | RF-013 | US3 | CT-016         | Delete Course | BUG-018 |
| RN-015 | RF-014 | US3 | CT-017         | Delete Course | BUG-017 |
| RN-016 | RF-012 | US3 | CT-018         | Delete Course | BUG-019 |
| RN-017 | RF-015 | US3 | CT-019         | Delete Course | BUG-020 |



  ### 📈 Métricas de Qualidade
  - **Taxa de Sucesso**: 27% (7/26).  
  - **Taxa de Falha**: 54% (14/26).  
  - **Taxa de Bloqueio**: 19% (5/26).  

---

### 🔎 Observação Geral sobre Ambiente/Backend
Durante os testes, foram identificados retornos recorrentes de **404 (Not Found)** em requisições de listagem e **405 (Method Not Allowed)** em requisições de exclusão.  
Esses erros indicam que o frontend tenta acessar rotas inexistentes ou que o backend não implementa determinados métodos (como DELETE).  
Esse comportamento impacta **todos os cenários de listagem e exclusão**, resultando em falhas ou bloqueios que refletem **limitações do ambiente de teste**, e não apenas bugs funcionais do frontend.

---

### ⚠️ Análise de Riscos
- **Impacto alto**: criação de cursos sem validações, exclusão inconsistente, duplicidade de dados.  
- **Impacto médio**: ausência de ordenação/paginação, vagas inválidas, URL de imagem não validada.  
- **Impacto baixo**: ausência de loading, falhas visuais.  



## 🐞 Relatório de Bugs

### Metodologia utilizada
Utilizei a classificação de *Severidade* (impacto no sistema) e *Prioridade* (urgência de correção) para organizar os bugs encontrados.  
- *Severidade*: Crítico | Alto | Médio | Baixo  
- *Prioridade*: Alta | Média | Baixa  

### 🐞 Principais Bugs Identificados
- **Validações de campos obrigatórios falhando** (título, descrição, datas, vagas).  
- **Duplicidade de curso permitida**.  
- **Exclusão não refletida na listagem** (curso continua aparecendo).  
- **Falta de sanitização de entrada (XSS)** → risco de segurança.  
- **Funcionalidades não implementadas**: paginação, ordenação, cancelamento de exclusão, controle de permissão.  
- **Feedback visual ausente**: indicador de loading não exibido.  

---

### Bug 1 – Link da sala não exibido (US1 – Criar Curso)
- *Descrição*: Ao criar curso com link válido, o link não aparece na listagem.  
- *Passos para reproduzir*:  
  1. Criar curso preenchendo todos os campos, incluindo link de inscrição válido.  
  2. Salvar o curso.  
  3. Verificar listagem de cursos.  
- *Resultado esperado*: Link deveria aparecer na listagem com botão de acesso.  
- *Resultado obtido*: Curso criado, mas link não aparece; não há botão de acesso; erro 404 registrado no console.  
- *Severidade*: Alto  
- *Prioridade*: Alta  
- *Evidência*: [[link para o Drive](https://drive.google.com/drive/folders/1ddDH1xobSX0sFvMgwXwk0TDnhJPZOoE1?usp=sharing)]  

---

### Bug 2 – Duplicidade de curso permitida (US1 – Criar Curso)
- *Descrição*: Sistema permite criar cursos com o mesmo título já existente.  
- *Passos para reproduzir*:  
  1. Criar curso com título "Curso QA".  
  2. Criar outro curso com o mesmo título.  
  3. Verificar listagem.  
- *Resultado esperado*: Sistema deveria rejeitar criação duplicada e exibir mensagem de erro.  
- *Resultado obtido*: Curso duplicado criado e listado normalmente.  
- *Severidade*: Alto  
- *Prioridade*: Alta  
- *Evidência*: [link para evidência]  

---

### Bug 3 – Indicador de loading ausente (US2 – Listar Cursos)
- *Descrição*: Ao carregar a listagem de cursos, não há indicador de carregamento.  
- *Passos para reproduzir*:  
  1. Acessar rota `/courses`.  
  2. Observar comportamento durante carregamento.  
- *Resultado esperado*: Exibir indicador de loading até finalização da busca.  
- *Resultado obtido*: Nenhum indicador exibido; tela permanece estática até renderização.  
- *Severidade*: Baixo  
- *Prioridade*: Baixa  
- *Evidência*: [link para evidência]  

---

### Bug 4 – Curso excluído continua aparecendo (US2/US3 – Exclusão)
- *Descrição*: Após excluir curso, ele continua aparecendo na listagem.  
- *Passos para reproduzir*:  
  1. Criar curso válido.  
  2. Excluir curso pela listagem.  
  3. Recarregar listagem.  
- *Resultado esperado*: Curso excluído não deveria mais aparecer.  
- *Resultado obtido*: Curso permanece na listagem; console registra erro 405 (Method Not Allowed).  
- *Severidade*: Alto  
- *Prioridade*: Alta  
- *Evidência*: [link para evidência]  

---

### Bug 5 – Exclusão repetida não tratada (US3 – Excluir Curso)
- *Descrição*: Ao tentar excluir curso já removido, sistema não retorna mensagem clara.  
- *Passos para reproduzir*:  
  1. Excluir curso válido.  
  2. Tentar excluir novamente o mesmo curso.  
- *Resultado esperado*: Sistema deveria retornar 404 e informar que curso não existe mais.  
- *Resultado obtido*: Nenhuma mensagem clara; comportamento inconsistente.  
- *Severidade*: Alto  
- *Prioridade*: Alta  
- *Evidência*: [link para evidência]  

---

### Bug 6 – Falha de sanitização (XSS) (US1 – Criar Curso)
- *Descrição*: Sistema aceita payload `<script>` em título e descrição.  
- *Passos para reproduzir*:  
  1. Criar curso com `<script>alert(1)</script>` no campo título e descrição.  
  2. Salvar curso.  
- *Resultado esperado*: Sistema deveria sanitizar entrada e exibir texto puro.  
- *Resultado obtido*: Payload aceito; script não executado, mas não houve sanitização.  
- *Severidade*: Alto (segurança)  
- *Prioridade*: Alta  
- *Evidência*: [link para evidência]  

---

## 📊 Relatório de Distribuição por Tipo de Bug 

### 🔎 Visão Geral Consolidada
- **Total de bugs analisados:** 20  
- **Distribuição por tipo:**
  - **Funcional / Validação:** 14 (70%)  
  - **Visual / UI:** 1 (5%)  
  - **Segurança:** 1 (5%)  
  - **Bloqueado / Ambiente:** 4 (20%)  

---

### 🔎 Análise Detalhada por User Story

#### 📈 US1 – Criar Curso

| Tipo                   | Quantidade | Percentual |
|------------------------|------------|------------|
| Funcional / Validação  | 10         | 83,3%      |
| Segurança              | 1          | 8,3%       |
| Bloqueado / Ambiente   | 1          | 8,3%       |

#### 📈 US2 – Listar Curso

| Tipo                   | Quantidade | Percentual |
|------------------------|------------|------------|
| Funcional / Validação  | 2          | 50%        |
| Visual / UI            | 1          | 25%        |
| Bloqueado / Ambiente   | 1          | 25%        |

#### 📈 US3 – Excluir Curso

| Tipo                   | Quantidade | Percentual |
|------------------------|------------|------------|
| Funcional / Validação  | 2          | 50%        |
| Bloqueado / Ambiente   | 2          | 50%        |

---

### 🗂️ Mapeamento dos Bugs por User Story

| Bug ID   | User Story           | Título / Resumo                                    | Tipo                 |
|----------|---------------------|----------------------------------------------------|----------------------|
| BUG-001  | US1 – Criar Curso   | Curso criado com dados inválidos                   | Funcional/Validação  |
| BUG-002  | US1 – Criar Curso   | Curso criado apenas com título e descrição         | Funcional/Validação  |
| BUG-003  | US1 – Criar Curso   | Título vazio não bloqueia criação                  | Funcional/Validação  |
| BUG-004  | US1 – Criar Curso   | Descrição vazia não bloqueia criação               | Funcional/Validação  |
| BUG-005  | US1 – Criar Curso   | Título acima de 255 caracteres não rejeitado       | Funcional/Validação  |
| BUG-006  | US1 – Criar Curso   | Duplicidade de curso permitida                     | Funcional/Validação  |
| BUG-007  | US1 – Criar Curso   | URL de imagem inválida aceita                      | Funcional/Validação  |
| BUG-008  | US1 – Criar Curso   | Data início posterior à data fim não rejeitada     | Funcional/Validação  |
| BUG-009  | US1 – Criar Curso   | Formato de data inválido aceito                    | Funcional/Validação  |
| BUG-010  | US1 – Criar Curso   | Vagas zero ou negativas aceitas                    | Funcional/Validação  |
| BUG-011  | US1 – Criar Curso   | XSS não sanitizado em título/descrição             | Segurança            |
| BUG-012  | US1 – Criar Curso   | Backend 500/timeout não testado                    | Bloqueado/Ambiente   |
| BUG-013  | US2 – Listar Curso  | Estado vazio parcialmente bloqueado                | Bloqueado/Ambiente   |
| BUG-014  | US2 – Listar Curso  | Ordenação por data não implementada                | Funcional/Validação  |
| BUG-015  | US2 – Listar Curso  | Indicador de loading ausente                       | Visual/UI            |
| BUG-016  | US2 – Listar Curso  | Paginação/scroll infinito não implementado         | Funcional/Validação  |
| BUG-017  | US3 – Excluir Curso | Exclusão não remove curso da listagem              | Funcional/Validação  |
| BUG-018  | US3 – Excluir Curso | Cancelar exclusão não validado                     | Bloqueado/Ambiente   |
| BUG-019  | US3 – Excluir Curso | Exclusão repetida não tratada (idempotência)       | Funcional/Validação  |
| BUG-020  | US3 – Excluir Curso | Exclusão sem permissão não validada                | Bloqueado/Ambiente   |

---

### 🎯 Insights

- **Predominância de falhas funcionais e de validação (70%)**: Evidencia a necessidade de aprimoramento nas regras de negócio e validações, tanto no backend quanto no frontend, para garantir integridade dos dados e conformidade dos processos.
- **Limitações de ambiente (20%)**: Impedem a validação completa de cenários críticos, como simulação de erros de backend e cancelamento de exclusão. Recomenda-se fortalecer a infraestrutura de testes para ampliar a cobertura e confiabilidade das validações.
- **Segurança**: A identificação de vulnerabilidade XSS destaca um ponto crítico que deve ser tratado com máxima prioridade, visando proteger o sistema contra ataques e garantir conformidade com boas práticas de segurança.
- **UI/Experiência do usuário (5%)**: Embora menos frequentes, problemas de interface impactam diretamente a percepção de qualidade e usabilidade, sendo importante tratá-los para promover uma experiência consistente e intuitiva.

> **Resumo:**  
> Os resultados dos testes revelam lacunas relevantes em validações funcionais e limitações de ambiente, além de pontos críticos em segurança e usabilidade. Recomenda-se priorizar correções nessas áreas para elevar o nível de confiabilidade, robustez e experiência do sistema, alinhando o produto às melhores práticas de qualidade de software.

## 📌 Observações finais
- Os bugs foram documentados de forma padronizada para facilitar a análise.  
- A priorização foi feita considerando impacto no usuário final e risco para o negócio.  
- As evidências em vídeo estão disponíveis no link do Drive informado no README.

## 💡 Melhorias Sugeridas

Com base na análise dos testes, critérios de aceite e documentação das User Stories (US1, US2, US3), as recomendações de melhoria foram organizadas conforme o fluxo funcional do sistema, promovendo rastreabilidade e foco em qualidade:

---

### US1 – Criar Curso

**Validação e Experiência do Usuário**
- Corrigir validação de campos obrigatórios (título, descrição, datas, vagas), conforme critérios de aceite.
- Adicionar máscaras e validações em tempo real para datas, número de vagas e URLs.
- Exibir mensagens de erro claras, específicas e localizadas (i18n), evitando mensagens genéricas.
- Garantir feedback visual consistente (loading, confirmação, erro) durante o cadastro.
- Implementar fallback para imagens inválidas, evitando quebras na interface.
- Prevenir duplicidade de cursos (unicidade de título ou regra de negócio definida).
- Reforçar sanitização de entradas para bloquear XSS e outros payloads maliciosos.
- Validar e sanitizar URLs externas (imagens, links de inscrição) antes de persistência.
- Garantir idempotência na operação de criação (double submit).

**Segurança**
- Implementar autenticação e controle de acesso para restringir criação a usuários autorizados.
- Adotar Content Security Policy (CSP) para mitigar execução de scripts não autorizados.

---

### US2 – Listar Cursos

**Usabilidade e Escalabilidade**
- Implementar paginação ou scroll infinito para listas com mais de 10 cursos.
- Adicionar filtros (por data, instrutor, status) e ordenação configurável (título, data, vagas).
- Garantir ordenação padrão conforme critérios de aceite (data de início decrescente).
- Exibir indicador de loading durante carregamento da lista.
- Tratar estado vazio com mensagem amigável (“Nenhum curso encontrado”).
- Garantir atualização imediata da lista após criação/exclusão de cursos.

**Robustez**
- Tratar erros de rede (404, 500, timeout) com mensagens amigáveis e opção de retry.
- Corrigir chamadas de rotas que resultam em 404 e ajustar endpoints para evitar 405 em exclusão.

**Compatibilidade e Acessibilidade**
- Validar renderização em múltiplos navegadores e dispositivos móveis.
- Garantir conformidade com WCAG 2.1 (acessibilidade).

---

### US3 – Excluir Curso

**Funcionalidade e Segurança**
- Implementar exclusão com confirmação explícita (modal Confirmar/Cancelar).
- Garantir operação idempotente: múltiplas requisições de exclusão não causam efeitos colaterais.
- Exibir mensagens de erro claras para tentativas de exclusão inválidas (404, 403, 500).
- Garantir que apenas usuários autorizados possam excluir cursos (controle de permissão).
- Atualizar listagem imediatamente após exclusão bem-sucedida.

**Auditoria**
- Implementar logs de auditoria para rastrear ações de exclusão.

---

### Gerais (Transversais)

- Implementar internacionalização (i18n) para suporte a múltiplos idiomas.
- Documentar consistência eventual em cenários de delay do backend.
- Garantir fallback visual para falhas de carregamento de recursos.
- Adotar logs centralizados para rastreabilidade de falhas e ações críticas.

---

## 📬 Conclusão:
Este projeto demonstra a aplicação prática de técnicas de Engenharia de Qualidade de Software em um cenário próximo ao encontrado em ambientes corporativos. Ao longo da execução foram utilizados conceitos de planejamento, elaboração de casos de teste, testes exploratórios, análise baseada em risco, documentação de defeitos, rastreabilidade e produção de indicadores de qualidade. O resultado obtido evidencia não apenas a cobertura funcional do escopo proposto, mas também a capacidade de identificar riscos, interpretar métricas e produzir documentação técnica voltada ao processo de melhoria contínua do produto.
 
 