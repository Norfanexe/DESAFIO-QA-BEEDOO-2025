Feature: Listagem de Cursos
  Como aluno ou administrador da plataforma
  Quero visualizar a lista de cursos disponíveis
  Para que eu possa acompanhar, acessar ou gerenciar os cursos corretamente

  Background:
    Given o usuário acessa a página "/courses"

  Scenario: TC-018 - Listar cursos com dados válidos
    Given existem cursos cadastrados no sistema
    When o sistema busca a lista de cursos
    Then a lista de cursos deve ser exibida
    And cada curso deve mostrar título, descrição, instrutor, datas, vagas e imagem de capa

  Scenario: TC-019 - Listar cursos sem nenhum curso
    Given não existe nenhum curso cadastrado
    When o sistema busca a lista de cursos
    Then o sistema deve exibir um estado vazio
    And a mensagem "Nenhum curso disponível" deve estar visível

  Scenario: TC-020 - Verificar ordenação por data
    Given existem múltiplos cursos cadastrados com datas diferentes
    When o sistema busca a lista de cursos
    Then os cursos devem ser exibidos em ordem cronológica decrescente pela data de início
    And o curso mais recente deve aparecer primeiro

  Scenario: TC-021 - Verificar indicador de loading
    When o sistema inicia a busca da lista de cursos
    Then um indicador de carregamento deve ser exibido
    And deve desaparecer após os dados serem carregados

  Scenario: TC-022 - Timeout de rede
    Given a rede está lenta ou ocorre timeout
    When o sistema tenta buscar a lista de cursos
    Then uma mensagem de erro ou timeout amigável deve ser exibida
    And nenhum dado obsoleto deve ser mostrado

  Scenario: TC-023 - Paginação com mais de 10 cursos
    Given existem mais de 10 cursos cadastrados
    When o sistema busca a lista de cursos
    Then controles de paginação ou scroll infinito devem estar disponíveis
    And ao navegar, cursos adicionais devem ser carregados

  Scenario: TC-024 - Curso recém-criado aparece na lista
    Given um novo curso foi criado com sucesso
    When a lista de cursos é recarregada ou carregada novamente
    Then o curso recém-criado deve aparecer na listagem

  Scenario: TC-025 - Curso excluído desaparece da lista
    Given um curso foi excluído com sucesso
    When a lista de cursos é recarregada ou carregada novamente
    Then o curso excluído não deve mais aparecer na listagem

  Scenario: TC-026 - Listagem em diferentes navegadores
    Given existem cursos cadastrados
    When o usuário acessa a listagem em diferentes navegadores
    Then a listagem deve ser exibida corretamente em todos os navegadores testados