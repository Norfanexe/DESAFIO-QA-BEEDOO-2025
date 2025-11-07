## 📊 Visualização dos Resultados dos Testes

A fim de proporcionar uma análise abrangente dos casos de teste e dos bugs reportados, foram desenvolvidas **visualizações interativas** utilizando Google Sheets e Excel. Essas ferramentas visam facilitar a interpretação dos dados, apoiar decisões estratégicas e promover transparência entre as partes interessadas. Ambos os conteúdos estarão disponíveis na [Planilha Google Sheets](https://docs.google.com/spreadsheets/d/117UMb9cgL2hvZKnPAlYS_xqoPKqJS3Jy8xluBRSShbo/edit?usp=sharing) na sessão **GraficReports** e no projeto na pasta Reports/Charts.

### 🔎 Tipos de Gráficos Utilizados

- **Distribuição dos Resultados dos Testes (Gráfico de Pizza)**  
    Apresenta a proporção de testes classificados como *Passed*, *Failed* e *Blocked*, permitindo avaliação rápida da efetividade da suíte de testes.

- **Severidade dos Bugs (Gráfico de Pizza)**  
    Demonstra a distribuição dos bugs por severidade (*High, Medium, Low*), auxiliando na priorização das correções conforme o impacto identificado.

- **Severidade por User Story (Gráfico de Barras)**  
    Quantifica os bugs por severidade, segmentados por User Story (ex.: US1 – Criar Curso, US2 – Listar Curso, US3 – Excluir Curso), evidenciando funcionalidades com maior concentração de riscos.

- **Resultados por User Story (Gráfico de Barras)**  
    Exibe o status dos testes (*Passed*, *Failed*, *Blocked*) para cada User Story, permitindo análise detalhada da qualidade e estabilidade de cada funcionalidade.

### 🎯 Benefícios das Visualizações

As representações gráficas agregam valor ao processo de garantia de qualidade ao proporcionar:

- **Clareza**: visão objetiva e imediata sobre o estado atual do sistema.
- **Priorização**: identificação ágil de áreas críticas, direcionando esforços para correções de maior impacto.
- **Transparência**: comunicação acessível e assertiva para stakeholders técnicos e não técnicos.
- **Evolução Contínua**: base comparativa para monitoramento da melhoria contínua em execuções futuras.

---

📌 *Esta seção foi adicionada para enriquecer o projeto e ampliar a forma de documentar os resultados obtidos durante a fase de testes.*

---

## 📊 Relatório de Distribuição por Tipo de Bug 

O objetivo deste relatório é fornecer uma visão **qualitativa** dos problemas encontrados durante os testes, complementando os relatórios já existentes de severidade e status. Enquanto os gráficos de severidade mostram o impacto dos bugs e os relatórios de execução revelam o progresso dos testes, a distribuição por tipo de bug permite identificar **o perfil dos problemas** que mais afetam o sistema.

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
