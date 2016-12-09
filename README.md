# Panacea

## Coder Factory Academy Term 2 Project: Two-sided marketplace app

### Problem
The purpose of this app is to improve patient access to community pharmacy services. When we or a loved one are sick, we often turn to the local pharmacy as the first port of call for primary care; however, it may not always be possible or practical to go to a pharmacy. 

### Solution
Panacea can be used for communicating with a pharmacist, from the comfort of one's own home. Using this app, pharmacies can register their business on the website. Members of the community can search for a local pharmacy and chat to an available pharmacist. 
Future releases could include video chat functionality and the ability to purchase products and medications recommended by the pharmacist directly through the app (not including prescription medications)

### Setup on Local Machine (Special Thanks to Tanim)

* Clone repository
* Navigate into app folder
* Make sure you have config variables for Stripe, Cloudinary and Mailgun
* run ```bundle install```
* run ```rails db:migrate```
* run ```rails server```
* Type localhost:3000 on your favourite browser to see the project in action!

### Design process
Wireframing: [Figma](https://www.figma.com/file/bM4Or99ES17FgSxC3Mpqo6/Panacea-2.0)

Project planning and User Stories: [Trello](https://trello.com/b/NTnHx7ao)

ERD: [DbDesigner](https://trello-attachments.s3.amazonaws.com/5823e14fb3cc4349bed4421b/582a7af96ebec27129c00cdd/7604ccb9795bc6d42a9f859015450453/Schema.png)

### Gems

* Devise for user authentication
* Stripe for payment
* Carrierwave for file upload
* Cloudinary for image management
* Geocoder for geolocation

### APIs

* Google Maps

### Highlights

* Creating chat functionality without the use of gems
* Ability to upload images for a profile
* Ability to search/filter pharmacies by suburb
* Display of Google map based on address
* Incorporating payment for pharmacy profile creation
* Creating an app with a look and feel that, while simple, is consistent and largely in keeping with my visual style
* Creating an app that again, while simple, has some semblance of logical workflow for the user
* Attending class throughout the project weeks in order to collaborate with fellow students - feeling grateful for the time and knowledge offered by others, as well as a sense of achievement when being the one that was able to provide help

### Challenges

* Deploying to Heroku
* Incorporating Mailgun and administrative rights
* Managing expectations - focussing on what is within the realm of possibility rather than being overwhelmed
* Understanding Git process

#### Cloudilicious thanks you for your custom
