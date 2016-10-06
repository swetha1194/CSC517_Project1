# Room Reservation System
## Getting Started
* Use this link https://whispering-brushlands-12582.herokuapp.com to access the application
* Super Admin Details: email: superadmin@admin.com password: admin123
* You can either login as super admin and create other admins and room or you can sign up to be a member 
* Remember: A user session lasts for only 10 minutes

## Admin Functionality
### Admins: 
1. **Create new admins**
 * Click on View Admins link 
 * In the resulting page you can see a list of all admins
 * At the bottom of the page there is a link to create new admin
 * Enter appropriate details and create the new admin
2. **Destroy admins**
 * Click on View Admins link 
 * In the resulting page you can see a list of all admins
 * Next to each of the admin there is a destory link
 * Click on that to delete tthe admin
3. **View Other Admin Details**
 * Click on View Admins link 
 * In the resulting page you can see a list of all admins
 * Next to each of the admin there is a View link
 * Click on that to view admin details
4. **View Self Details**
 * Click on View Profile link at the top of the page
 * The resulting page displays the admin details
5. **Update Profile**
 * Click on Update Profile link at the top of the page
 * The admin can edit his profile details
 * An admin can edit only his/her profile details
 * A super admin cannot update his profile (We don't want people changing superadmin credentials)

### Members:
1. **Create new members**
 * Click on View Members link 
 * In the resulting page you can see a list of all members
 * At the bottom of the page there is a link to create new member
 * Enter appropriate details and create the new member
2. **Destroy members**
 * Click on View Members link 
 * In the resulting page you can see a list of all members
 * Next to each of the member there is a destory link
 * Click on that to delete tthe admin
 * Remember that any member who has any pending reservations cannot be deleted unless all the pending reservations are deleted
3. **View Other Member Details**
 * Click on View Members link 
 * In the resulting page you can see a list of all members
 * Next to each of the memberthere is a View link
 * Click on that to view member details

### Rooms
1. **View and Search for Rooms**
 * The page that is diplayed right after login dislays the list of rooms 
 * The search bar above can be used to filter out rooms based on either building or room size
 * There is a Show link next to the room list and clicking on it displays the room details
2. **Create new Rooms**
 * The page that is diplayed right after login dislays the list of rooms 
 * Below the list of rooms is the option to create a new room
 * The admin can enter the room number, building and size 
 * Room Number+Building is a unique entity 
 * Example: There can be a room number 1 in both Hunt and Hill but there cannot be 2 similar room numbers in one building
3. **Destroy Rooms**
 * The page that is diplayed right after login dislays the list of rooms
 * Next to each of the room there is a link to delete it
 * Clicking on the link deletes the room
 * Remember that any member who has any pending reservations cannot be deleted unless all the pending reservations are deleted
4. **Update Room Details**
 * The page that is diplayed right after login dislays the list of rooms
 * Next to each of the room there is a link to update the corresponding room
 * Clicking on the link displays form to update the room

## Reservation
1. **Book a room for a member**
 * The page that is diplayed right after login dislays the list of rooms
 * Next to each of the room there is a link to book the corresponding room
 * In the resulting page choose the member for whom you wish to reserve from the dropdown list of member names
 * Select the date and start time
 * The date portion in the start time should match the date field 
 * Choose an appropriate radio button to reserve the room for either 30, 60, 90 or 120 minutes
 * Click on Create Reservation button (See reservation constraints)
2. **View Member History, Update and Delete Reservations**
 * Click on View Members link
 * For every member displayed there is corresponding Reservation History Link
 * Clicking on that link displays all the reservations made by the member sorted by date and time
 * For pending room reservations, the reservation can be viewed, deleted and updated
 * Clicking on the appropriate link performs the necessary function
3. **View Room Schedule**
 * The page that is diplayed right after login dislays the list of rooms
 * Next to each of the room there is a link to view the schedule for the corresponding room
 * Clicking on the link displays all the possible reservations for the room along with member details


## Member Functionality
1. **View Self Details**
 * Click on View Profile link at the top of the page
 * The resulting page displays the member details
2. **Update Profile**
 * Click on Update Profile link at the top of the page
 * The member can edit his profile details
3. **View and Search for Rooms**
 * The page that is diplayed right after login dislays the list of rooms 
 * The search bar above can be used to filter out rooms based on either building or room size
 * There is a Show link next to the room list and clicking on it displays the room details
4. **Reserve a Room**
 * The page that is diplayed right after login dislays the list of rooms
 * Next to each of the room there is a link to book the corresponding room
 * Select the date and start time
 * The date portion in the start time should match the date field 
 * Choose an appropriate radio button to reserve the room for either 30, 60, 90 or 120 minutes
 * Click on Create Reservation button (See reservation constraints)
5. **View Room Schedule**
 * The page that is diplayed right after login dislays the list of rooms
 * Next to each of the room there is a link to view the schedule for the corresponding room
 * Clicking on the link displays all the possible reservations for the room sorted according to date and time
6. **View Reservation History, Update and Delete Reservations**
 * Click on Reservation History link
 * The resulting displays all the reservations made by the member sorted by date and time
 * For pending room reservations, the reservation can be viewed, deleted and updated
 * Clicking on the appropriate link performs the necessary function

## Reservation Constraints
* 2 hour time slot
* Member cannot reserve multiple room reservations at the same time
* Admin can reserve more than one room for a member at the same time
* Reservations cannot be made more than one week in advance
* No overlapping of room reservations

## Scope for Improvement
* UI needs to be improved 
* While booking, there is a necessity to enter date twice
* The user session is saved for 10 minutes after which the user automatically logs out. This is done because the session is saved if the user forgets to logout before on closing the browser and the current user can access the the previous user's account. To prevent this we explicitly made the session last for 10 minutes. 

## Further work remaining
* Email reservation details



