@userRes
Feature: Create Study
    As a user, I want to create a study by selecting the Assets

    Scenario: User clicks on User Research.
        Given I am in the prototype page
        And I save the Project URL
        When  I click into User Research
        Then  Create New Study button is displayed

    Scenario: Create New Study.
        Given I am on the study list page
        When  create new study button is clicked
        And   name and description pop-up should be displayed
        And   User enters StudyName and StudyDescription in the name and description pop-up
        And   I Click Save Study
        Then  the study is created

    Scenario: Upload files through upload link
        Given I am on the study edit page
        When  I upload "../zip/nonangularPrototype.zip" Zip file
        And   I Name the Task "Proto Task" and Confirm
        And   I upload "../zip/angularPrototype.zip" Zip file
        And   I Name the Task "Task Test" and Confirm
        When  I Upload images
        And   I Confirm Upload of Images
        Then  selected Images "6" should displayed on the page

    Scenario: Associating Tasks/Info to Task 1
        Given I am on the study edit page
        When  I click on tile "1"
        And   the image enlarges
        Then  I should be able to enter question

    Scenario: Setup Task 1
        Given There is a task present
        When  I set Start and Target Pages
        And   I Give some user Guidance "This is the Non Angular Task"
        And   Page "1", with name "index" exists
        And   Page "2", with name "page1" exists
        And  Click Save and Close
        And  I click on tile "2"

    Scenario: Setup Task 2
        Given There is a task present
        When  I set Start and Target Pages
        And   I Give some user Guidance "This is the Angular Task"
        And   Click Save and Close
        And   I click on tile "3"

    Scenario: Add Question to Images
        Given   The Question Popover is Open
        When    I enter a question "Who am I?" Annotation Only
        And     Click Save and Close
        And     I click on tile "4"
        And     I enter a question "What am I?" Free Text Only
        And     Click Save and Close
        And     I click on tile "5"
        And     I enter a question "Where am I?" Multiple Choice Only 2 options
        And     Click Save and Close
        And     I click on tile "6"
        And     I enter a question "When am I?" Multiple Choice More than 2 options
        And     Click Save and Close

    Scenario: Publishing Study
        Given   I am on the study edit page
        When    I click on publish button
        And     I click on the confirm button
        Then    The study is published

        Given I am on the participant invitation page
        When I click email invitation textbox
        And Enter the email "tester@sap.c"
        Then Email error toast should display
        And Refresh Page for Textbox

    Scenario: Input an email to invite
        Given I am on the participant invitation page
        When I click email invitation textbox
        And I enter the email "tester@test.com" and click add
        Then Email is added to pending list

    Scenario: Delete email from pending list
        Given I am on the participant invitation page
        When I press delete button beside email
        Then Email should be deleted

    Scenario: Input an email to invite
        Given I am on the participant invitation page
        When I click email invitation textbox
        And I enter the email "tester@test.com" and click add
        Then Email is added to pending list

    Scenario: Invite the pending email
        Given I am on the participant invitation page
        When I click Sent Invitation button
        Then An invitation has been sent

    Scenario: Get the Study Address
        Given   I am on the Published Study Page
        When    I save the Study URL
        When    Click Done
        Then    The Study is Active
