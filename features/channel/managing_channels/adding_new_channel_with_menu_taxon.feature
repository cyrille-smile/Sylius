@managing_channels
Feature: Adding a new channel with menu taxon
    In order to sell through multiple channels of distributions products only from specific categories
    As an Administrator
    I want to add a new channel with a menu taxon

    Background:
        Given the store has currency "Euro"
        And the store has locale "English (United States)"
        And the store operates in "United States"
        And the store classifies its products as "Clothes" and "Guns"
        And I am logged in as an administrator

    @ui
    Scenario: Adding a new channel with menu taxon
        Given I want to create a new channel
        When I specify its code as "MOBILE"
        And I name it "Mobile channel"
        And I choose "Euro" as the base currency
        And I choose "English (United States)" as a default locale
        And I specify company as "Ragnarok"
        And I specify tax ID as "1100110011"
        And I specify menu taxon as "Clothes"
        And I add it
        Then I should be notified that it has been successfully created
        And the channel "Mobile channel" should appear in the registry
        And the channel "Mobile channel" should have "Clothes" as a menu taxon
