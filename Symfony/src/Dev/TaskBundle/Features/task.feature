# features/task.feature
Feature: Task
  In order to manage task
  As a user
  I need verify all CRUD task

  @javascript
  Scenario: Successful show task list
    Given I am on tasks page
    Then I should see "Task list"

  @javascript
  Scenario: Create task with succesful
    Given I am on tasks page
    Then I should see an "a#createNewEntry" element
    When I click on link new entry
    Then the url should match "/new"
    Then I should see "Task creation"
    Then I should see an "input#dev_taskbundle_task_task" element
    And I fill in "dev_taskbundle_task_task" with "Create Task with Task List Todo"
    When I press "dev_taskbundle_task_submit"
    Then I should see "Task : Create Task with Task List Todo"

  @javascript
  Scenario: Fail create task without name task
  	Given I am on tasks page
    Then I should see an "a#createNewEntry" element
    When I click on link new entry
    Then the url should match "/new"
    Then I should see an "input#dev_taskbundle_task_task" element
    And I fill in "dev_taskbundle_task_task" with ""
    When I press "dev_taskbundle_task_submit"
    Then I should not see "Task : Create Task with Task List Todo"
