# Campaign Chronographer

A system for creating custom fantasy calendars and tracking events with them.

## Project Description

***Objectives:***
 - Design a system of calendar rules by which a variety of calendar systems can be described
 - Write the correct date math functions necessary to determine how particular days lie in relation to the calendar system's months and weeks
 - Make a rudimentary UI for creating these calendars and adding events to them

***Optional project goals:***
 - Authentication and permissions
 - Allow calendar creators can invite other users to add and edit events on the calendar
 - More sophisticated UI for displaying the calendar in a traditional month-grid view

## Team

I'm looking for 2-4 additional team members to help with this project.  Team members will be expected to submit their code for review by the rest of the team before it will be merged in - be ready to have team members suggest style nitpicks or alternate solutions on every commit.

***Requirements:***

 - Solid experience with using Git in a team setting
 - Experience with SQL
 - Experience writing HTTP API servers

***Bonuses:***

 - Experience with transactions and stored procedures in Postgres
 - Experience with NodeJS
 - Experience with React

## SQL

We will be using PostgreSQL for this project - my experience has shown it to be fairly easy to interface with from several backend server languages, and it performs quite well even under heavy load.

## NoSQL

I'm not entirely decided on this one.  I've used Mongo before and it works quite well, although I would be interested in trying out other NoSQL databases.  Additionally it would be interesting to try augmenting Postgres (rather than replace it entirely) with a cache layer such as Redis or Memcached.

## External Implications

This project isn't groundbreaking by any means, so its implications are naturally limited in scope:

### Business

While perhaps we could place limits on free users (limit the number of collaborators or events in a calendar) and then raise or remove those limits for paid customers, we will not initially do so.  This is primarily a practical consideration - tiering our service in this way raises complexity and is not necessary for our initial proof of concept.

### Legal

<<<<<<< HEAD
We will have to make clear that users retain intellectual property of any stories or adventures they plan or track in this system.  Additionally, while this system is not aimed at any rule systems in particular, it will appeal primarily to players of role-playing games such as _Dungeons & Dragons_, so it would be wise to ensure we do not accidentally affiliate ourselves with Wizards of the Coast. 

### Technical

In order to facilitate easier frontend interface development, we will strive to present a well-constructed and sane HTTP API.  This will have the additional benefit of potentially allowing other developers to create their own clients for or consumers of our API, potentially allowing this to be of technical benefit to them.
=======
### Technical
>>>>>>> ff4fe35b982d19db4db8854f3f3beaae284bd609
