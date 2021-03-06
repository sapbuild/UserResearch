@userRes
Feature: Participate in Study
As a user, I want to participate publish study

    Scenario: Once Logged in go to the Study URL
        Given I am on the Landing Page
        And I have the link location
        When I navigate to the Study Url
        Then The start Study Button is available

    Scenario: Start study
          Given I am on the study screen
          When  I click start study
          Then  I should see the Start Task PopUp

    Scenario: Participate in the Task 1
        Given I am a Task Page to Participate
        When  I click on the Start Task Button
        And   Leave Feedack for the Page
        ########Leave Feedback First
        And   Click on "One" the Links in the Prototype
        And   I "Finish" the Task
        Then  I see the congratulations icon
        And   I enter next screen

    Scenario: Participate in the Task 2
        Given I am a Task Page to Participate
        When  I click on the Start Task Button
        And   Click on "All" the Links in the Prototype
        And   Leave Feedack for the Page
        And   I "Finish" the Task
        Then  I see the congratulations icon
        And   I enter next screen


    Scenario: Dropping annotations first Image screen.
        Given I am on screen enlarge page
        When  I drop annotations and comment
        And   I see No more floating toast after 3 comments
        Then  I should see "3" annotations
        And   I enter next screen

    Scenario: Dropping annotations first Image screen.
        Given  I am on a study Participant screen enlarge page
        When   I drop annotation no comment or sentiment
        And    I answer on the Free Text Question with "Hello There"
        Then   I see the Freetext "Hello There"
        And    I should see "1" annotations
        And    I enter next screen

    Scenario: Dropping annotations third screen.
        Given I am on a study Participant screen enlarge page
        When  I drop annotation no comment or sentiment
        And   I click Answer This
        Then  I should see "1" annotations
        Then  I enter next screen


   Scenario: Dropping annotations last screen.
        Given I am on a study Participant screen enlarge page
        When  I drop annotation no comment or sentiment
        And   I click Answer This
        And   I click Answer Those
        Then  I should see "1" annotations

    Scenario: Finishing Study and Go Back into the Application
        Given I am on last screen enlarge page
        When  I click done
        Then  I should be taken to stating page
        And   I have the Projects URL
        And   Reset Page to Projects Page

