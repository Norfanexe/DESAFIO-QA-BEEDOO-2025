Feature: Cadastro de Curso
  Como administrador da plataforma
  Quero criar um novo curso com todos os dados obrigatórios e opcionais
  Para que os alunos possam visualizar e se inscrever corretamente

  Background:
    Given o usuário acessa a página "/new-course"
    And o formulário de criação de curso está visível

  Scenario: TC-001 - Criar curso completo válido
    Given o campo "Nome do curso" é preenchido com "Introdução a QA"
    And o campo "Descrição do curso" é preenchido com "Curso básico sobre fundamentos de teste"
    And o campo "Instrutor" é preenchido com "João Silva"
    And o campo "URL da imagem de capa" é preenchido com "https://via.placeholder.com/300"
    And o campo "Data de início" é preenchido com "01/11/2025"
    And o campo "Data de fim" é preenchido com "30/11/2025"
    And o campo "Número de vagas" é preenchido com "20"
    And o campo "Tipo de curso" é selecionado como "online"
    And o campo "Link de inscrição" é preenchido com "https://cursos.exemplo.com/inscricao/qa"
    When o usuário clica em "Salvar"
    Then a API deve retornar status 201
    And o curso deve aparecer na listagem de cursos disponíveis
    And a imagem de capa deve ser exibida corretamente

  Scenario: TC-002 - Criar curso com dados inválidos
    When o usuário preenche apenas "Nome do curso" e "Descrição" com valores aleatórios
    And deixa os demais campos vazios
    And clica em "Salvar"
    Then o sistema deve rejeitar a criação
    And uma mensagem de erro deve ser exibida

  Scenario: TC-003 - Criar curso com só título e descrição
    When o usuário preenche apenas "Nome do curso" e "Descrição"
    And deixa os demais campos vazios
    And clica em "Salvar"
    Then o curso deve ser criado com sucesso
    And o curso deve aparecer na listagem

  Scenario: TC-004 - Título vazio bloqueia criação
    When o usuário deixa "Nome do curso" vazio
    And preenche os demais campos com dados válidos
    And clica em "Salvar"
    Then o sistema deve bloquear a criação
    And uma mensagem de erro deve ser exibida

  Scenario: TC-005 - Descrição vazia bloqueia criação
    When o usuário deixa "Descrição" vazia
    And preenche os demais campos com dados válidos
    And clica em "Salvar"
    Then o sistema deve bloquear a criação
    And uma mensagem de erro deve ser exibida

  Scenario: TC-006 - Título com 255 caracteres aceito
    When o usuário preenche "Nome do curso" com 255 caracteres
    And preenche os demais campos com dados válidos
    And clica em "Salvar"
    Then o curso deve ser criado com sucesso

  Scenario: TC-007 - Título com 256 caracteres rejeitado
    When o usuário preenche "Nome do curso" com 256 caracteres
    And preenche os demais campos com dados válidos
    And clica em "Salvar"
    Then o sistema deve rejeitar a criação
    And uma mensagem de erro deve ser exibida

  Scenario: TC-008 - Duplicidade de curso
    Given já existe um curso cadastrado com título "Curso QA"
    When o usuário preenche "Nome do curso" com "Curso QA"
    And preenche os demais campos com dados válidos
    And clica em "Salvar"
    Then o sistema deve rejeitar a criação
    And uma mensagem de erro sobre duplicidade deve ser exibida

  Scenario: TC-009 - URL de imagem inválida
    When o usuário preenche "URL da imagem de capa" com "abc123"
    And preenche os demais campos com dados válidos
    And clica em "Salvar"
    Then o sistema deve rejeitar a criação
    And uma mensagem de erro sobre URL inválida deve ser exibida

  Scenario: TC-010 - URL de imagem 404
    When o usuário preenche "URL da imagem de capa" com um link inexistente
    And preenche os demais campos com dados válidos
    And clica em "Salvar"
    Then o curso deve ser criado com sucesso
    But a imagem de capa não deve ser exibida (fallback mostrado)

  Scenario: TC-011 - Data início posterior à data fim
    When o usuário preenche "Data de início" com "10/12/2025"
    And preenche "Data de fim" com "05/12/2025"
    And preenche os demais campos com dados válidos
    And clica em "Salvar"
    Then o sistema deve rejeitar a criação
    And uma mensagem de erro sobre intervalo de datas inválido deve ser exibida

  Scenario: TC-012 - Formato de data inválido
    When o usuário preenche "Data de início" com "32/13/2025"
    And preenche os demais campos com dados válidos
    And clica em "Salvar"
    Then o sistema deve rejeitar a criação
    And uma mensagem de erro sobre formato de data inválido deve ser exibida

  Scenario: TC-013 - Vagas não numérico
    When o usuário preenche "Número de vagas" com "dez"
    And preenche os demais campos com dados válidos
    And clica em "Salvar"
    Then o sistema deve rejeitar a criação
    And uma mensagem de erro deve ser exibida

  Scenario: TC-014 - Vagas zero ou negativas
    When o usuário preenche "Número de vagas" com "0"
    And preenche os demais campos com dados válidos
    And clica em "Salvar"
    Then o sistema deve rejeitar a criação
    And uma mensagem de erro deve ser exibida

  Scenario: TC-015 - XSS em título e descrição
    When o usuário preenche "Nome do curso" com "<script>alert(1)</script>"
    And preenche "Descrição" com "<script>alert(1)</script>"
    And preenche os demais campos com dados válidos
    And clica em "Salvar"
    Then o sistema deve sanitizar a entrada
    And o script não deve ser executado

  Scenario: TC-016 - Click duplo / double submit
    When o usuário preenche todos os campos com dados válidos
    And clica duas vezes rapidamente em "Salvar"
    Then apenas um curso deve ser criado

  Scenario: TC-017 - Backend 500 / timeout
    When o usuário preenche todos os campos com dados válidos
    And clica em "Salvar"
    And o backend retorna erro 500 ou timeout
    Then o sistema deve exibir uma mensagem de erro
    And o curso não deve ser criado

    

