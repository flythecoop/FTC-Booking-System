@homepage
Feature: Being on the Homepage
  Even an anonymous user can see the next week's availability

	Scenario: Anonymous user sees homepage
		Given Im not logged in
		When  I go to the homepage
		Then  I should see "FlyThe.Coop"
		 And  I should see "ben@flythe.coop"
		 And  I should see "012345678"
		
	