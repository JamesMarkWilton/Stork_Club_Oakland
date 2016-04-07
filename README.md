README
------

Building a website for the The Stork Club In Oakland, Calif.
This is a project for Code Platoon, a coding bootcamp in Chicago
for Veterans of the U.S. Armed Forces

I have decided to take this website http://storkcluboakland.com/
and make it a Rails App. All functions will be automated, requiring
only limited interaction from the owner, via either a log-in or an email
button press, to handle all the described functionality.

Required Parts
--------------
- A basic website thats has:
  - A form for bands to request a booking on a particular calendar day.
  - A calendar that is updated via the DB when a bands booking is approved.
  - A feed to the front page that cycles through that weeks shows.
  - An archive of past show flyers
  - Email sent to bands and onwer updating the status of bookings.
  - Manager log-in with full CRUD capabilities

Other Possible features:
------------------------
  - Automatic social media Updates.
  - Band/Booker log-in for limited user-based CRUD

Plan of Attack
--------------
- [x] Wireframe the site
- [x] Integrate Bootstrap for mobile first consideration
- DataBase:
  - [ ] Bookings with date and has many Flyers
  - [ ] Bands which belong to a Booking
  - [ ] Contacts which belong to a Booking
  - [ ] Contacts which belong to a Band
  - [ ] Booking which can be pending/approved/or denied
- Control and Model of Data:
  - [ ] Display Flyers as Archive
  - [ ] Display Flyers as a Feed on Welocome Page
    - [ ] Limit Feed to a week?
    - [ ] Add Band Data to Flyer Description
  - [ ] Display Flyers in a Calendar Format
- Form:
  - [ ] Link imput to DB
  - [ ] Upload Flyer
- Styling:
  - [ ] Navbar
  - [ ] Pretify Archive Feed
  - [ ] Try to keep Grungy feel
