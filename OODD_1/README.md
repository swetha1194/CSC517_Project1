# Room Reservation System
## Getting Started
* Go the deployed website
* In homepage create super admin by clickin on Admin Sign up option
* Super admin Details: email: superadmin@admin.com 
* Login with super admin details
* After creating the super admin you can create many admins and members by choosing the appropriate option

## Admin Functionality
#### Admins: 
* Functions: Create new admins, destory admins, view other admins, update self details
* Constraints: Cannot view other admins' password, cannot delete self, cannot delete superadmin, cannot edit other admins' profile details

### Members:
* Functions: Create new members, destroy members, view all members, view reservation history of members, make reservations for members, delete member reservations, update member reservations
* Constraints: Cannot view members' password, cannot update member details
* Point to be noted: Cannot delete a member if he/she has any pending reservations

### Rooms
* Functions: Create new rooms, destroy rooms, view all rooms, view reservation history of rooms, update room details, search for rooms based on size and building
* Point to be noted: Cannot delete a room if it has any pending reservations

## Member Functionality
* Can view and update profile details
* View and search for rooms
* Make reservations
* View room schedule
* View reservation history
* Destroy pending reservations

## Reservation Constraints
* 2 hour time slots
* Member cannot have multiple room reservations at the same time
* No overlapping of room reservations
* Can reserve a room only upto a week in advance

## Pitfalls that needs to be fixed
* Update reservations
* Links not properly associated

## Further work remaining
* Email notifications
* Admin can reserve more than one room for a member at same point of time
* Intuitive User Interface


