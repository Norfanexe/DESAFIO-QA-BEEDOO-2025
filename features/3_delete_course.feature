Feature: Exclusão de Curso
  Como administrador da plataforma
  Quero excluir cursos existentes
  Para que eu possa manter a lista de cursos atualizada e consistente

  Background:
    Given o usuário acessa a página "/courses"
    And existe pelo menos um curso cadastrado na lista (exceto quando indicado no cenário)

  Scenario: TC-027 - Excluir curso com confirmação (200/204)
    Given um curso está visível na lista
    When o usuário clica em "Excluir"
    And confirma a exclusão no diálogo
    Then o sistema deve remover o curso da lista
    And deve exibir uma mensagem de sucesso

  Scenario: TC-028 - Cancelar exclusão
    Given um curso está visível na lista
    When o usuário clica em "Excluir"
    And cancela a exclusão no diálogo
    Then o curso deve permanecer na lista
    And nenhuma alteração deve ser feita

  Scenario: TC-029 - Exclusão repetida (idempotência)
    Given um curso já foi excluído anteriormente
    When o usuário tenta excluir novamente o mesmo curso
    Then o sistema não deve falhar
    And deve exibir uma mensagem informando que o curso não existe mais
    And a lista não deve ser alterada

  Scenario: TC-030 - Exclusão sem permissão (403)
    Given o usuário não possui permissão para excluir cursos
    When o usuário tenta excluir um curso
    Then o sistema deve rejeitar a ação
    And deve exibir uma mensagem de erro de permissão negada

  Scenario: TC-031 - Erro de backend (500)
    Given um curso está visível na lista
    When o usuário clica em "Excluir"
    And o backend retorna erro 500
    Then o sistema deve exibir uma mensagem de erro amigável
    And o curso não deve ser removido da lista