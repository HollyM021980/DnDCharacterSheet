== README

Welcome to Holly's Online version of a Dungeons and Dragons Character Sheet!

# General
It is deployed to Heroku here: http://arcane-cove-7551.herokuapp.com/

There are two types of users: admin and player.  If the term "user" will be used if something applies to both admin and player.

# DataModel

## Character


## User


## User Stories
- Sign in, sign up and log out
  - As a system, I will provide sign in, sign up and log out functionality
  - Sign in
    - Appropriate error messages will be provided if a non-existant user tries to sign in
    - The user is given the option to sign up
  - Sign up
    - Once signed up, the user is directed to their character sheet listing page which will be empty
  - Log out
    - When the user logs out they are directed to the index page showing all of the public character sheets
- Permissions
  - As a system, I will have both a player and an admin user
  - As a system, I will have the ability to identify a sheet as private or public
  - As an admin user, I'm able to add, edit, copy any player's character sheets regardless if it is public or private
  - As a player, I will be able to add, edit and copy my own character sheets
  - As a player, I will be able to copy any publicly viewable character sheet

- Flow
  - There will be a sign up, sign in and log out functionality
  - As an unknown/anonymous user, I will see the site welcome page
  - Common page elements
    - All pages will have a common look and feel
    - All pages will have  a common header and footer
    - The footer will contain a copyright for the site
    - The header will contain a title for the site
    - The header will contain common navigation elements
      - Home returns the user to the welcome listing page
      - Sign in if user is anonymous
      - Log out if user is signed in
      - My Character sheets if user is signed in
      - New Character if user is signed in

  - Site Welcome page
    - The site welcome page will contain a list of publicly viewable character sheets
    - Each character sheet listed will have navigational elements for copy/cloning and viewing (non-edit mode)
    - Clicking edit of a character sheet will take the user to the character sheet edit page
    - Clicking clone of a character sheet will make a copy of that sheet and take the user the character sheet edit page
    - Clicking add will generate an empty character sheet and take the user to the character sheet edit page
  - Character sheet edit page
    - Navigation elements
      - Copy (saves and then copies)
      - Final save (overwrites original and discards temp)
    - The user will be able to edit sheet attributes inline w/o navigation to other pages/forms
  - New Character (edit page or welcome page)
    - Checks that don't allow changes unless the required info is filled in first. Below is the order in which changes will be allowed:
      - Ability score roll comes first
      - Enables choice of Class and Race
      - Fills in with starter package info and enables all fields
  - Edit Character
    - Due to inline editing functionality, a temporary copy will be created to allow revert prior to final save
    - Will contain a final save navigation element
      - Final save will overwrite the existing data and delete the temporary copy
  - Dice rolls
    - The system will have the ability to do dice rolls as appropriate
      - Ability
      - Within elements of the edit page

## Task list
- [] Create user stories
- [] Define data model
- [] Initial Setup
  - [] New app & create db
  - [] Init git & create github repo & do initial commit & push
  - [] Create silly welcome page so you have something to look at when you run
  - [] Init Heroku & push app to Heroku
- [] Sign-in/sign-up/log out using devise
- [] Header and footer
  - [] Header navigation sign in, sign up, log out, Home
  - [] Header and footer styles
- [] Add unstyled listing page elements, reusable for "My character sheets"
  - [] Each character sheet listed will only contain viewing (non-edit mode) option
  - [] Add "My character sheets" navigation element to user-specific unstyled listing page
  - [] Add Non-edit character sheet viewing page with "back navigation" (sub-nav??)
- [] Style listing page & non-edit viewing page
- [] Add clone/copy ability
  - [] Copy navigates to unstyled edit page
  - [] Style edit page
- [] Add New character navigation
  - [] Displays empty edit page

