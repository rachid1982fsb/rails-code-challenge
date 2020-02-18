# Rails Code Challenge - Simple News Application

To get started please fork this project and carefully read the following instructions.

Commit all of the code to your fork of this project. If you screen record yourself working through the code challenge you'll get *(Extra Credit)*

## User Personas
The project will have multiple roles that interact with each other.
* Guest (No Login)
* Users (Logged in - No special role)
* Editor Users
* Admin Users *(Extra Credit)*

## Acceptance Criteria
##### Guest (A person with no user account or that is not currently logged in)
* As a **guest** I can see the homepage with first 3 articles from each category.
* As a **guest** I can see article index page.
* As a **guest** I am sent to signup page when I try to view an article show page.
* As a **guest** I can signup
* As a **guest** I can login

##### User
* As a **user** I can see everything a guest can
* As a **user** I can see article show pages. 
* As a **user** I can logout

##### Editor
* As a **editor** I can do everything a **user** can.
* As a **editor** I can create articles
* As a **editor** I can delete ONLY articles that I created
* As a **editor** I can edit ONLY articles that I created

##### Admin *(Extra Credit)*
* As a **admin** I can create users and set roles.
* As a **admin** I can edit users and change roles.
* As a **admin** I can't edit, destroy, or create articles.

## Article Table
Table will contain **title**, **content**, **category**, **user_id**.

## Roles
Use one of these gems: [Pundit](https://github.com/varvet/pundit), [Cancancan](https://github.com/CanCanCommunity/cancancan).
###### Role Names
* user
* editor
* admin *(Extra Credit)*

## Database
Use postgres

## Testing
Use [minitest](https://github.com/blowmage/minitest-rails) or Rspec as the test suite. 

## Authentication
Use [devise](https://github.com/plataformatec/devise) for authentication.

## Templating
Use one of these 3 for templating: [slim](https://github.com/slim-template/slim) *(Preferred)*, [haml](https://github.com/haml/haml), erb

