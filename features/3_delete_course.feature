Feature: Exclusão de Curso
  Como administrador da plataforma
  Quero excluir cursos existentes
  Para manter a lista de cursos atualizada e consistente

  Background:
    Given o usuário está na página "/courses"

  Scenario: TC-023 - Excluir curso com confirmação (200/204)
    Given existe um curso cadastrado na lista
    When o usuário clica em "Excluir"
    And confirma a exclusão no diálogo
    Then o sistema deve remover o curso da lista
    And deve exibir uma mensagem de sucesso
    And a API deve retornar status 200 ou 204

  Scenario: TC-024 - Cancelar exclusão
    Given existe um curso cadastrado na lista
    When o usuário clica em "Excluir"
    And cancela a exclusão no diálogo
    Then o curso deve permanecer na lista
    And nenhuma alteração deve ser feita

  Scenario: TC-025 - Exclusão repetida (idempotência)
    Given um curso já foi excluído anteriormente
    When o usuário tenta excluir novamente o mesmo curso
    Then o sistema não deve falhar
    And deve exibir uma mensagem informando que o curso não existe mais
    And a lista não deve ser alterada

  Scenario: TC-026 - Exclusão sem permissão (403)
    Given o usuário não possui permissão para excluir cursos
    When o usuário tenta excluir um curso
    Then o sistema deve rejeitar a ação
    And deve exibir uma mensagem de erro de permissão negada
    And a API deve retornar status 403
