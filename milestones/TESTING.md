Who: Nicholas Mozdzier, Kevin Yang, Matthew Penington, Kira Johnson

Title: KMNK Online Food Ordering 

Vision: We will gain experience building a full fledged website that can be used in the real world; potentially, our team could make a lasting impact on CU Boulder and its future students by providing a desired service that is not currently offered in the form of a website for WeatherTech Cafe that allows users to order food in advance.

User Acceptance Test Plans

The first feature that we will test is navigation of the website. We will have the user navigate to the various pages (About, Contact, Menu, and Home). If the user can successfully find and navigate to those pages, then we will consider the test to be passed. In this test case, the only data the user will need is the location of the homepage. After that, all the information they need will already be located on the website. There are two separate locations on the webpage that the user can use to navigate to the desired locations.

The second feature that we will test is the user using the embedded map on the Contact page. We will have the user navigate to the Contact page, then locate the location of WeatherTech Cafe on the map. If the user can successfully find the map and locate the restaurant, then we will consider the test to be passed. If the user has passed the first test then they should have all the data they need to navigate to the map which is located on the Contact page. The Contact page will already have the location of the restaurant embedded in the map. All the user needs to do is locate their current location to give them an idea of where the restaurant is located relative to their current position.

The last feature that we will use is the cart feature. We will have the user navigate to the Menu page and have them add an item to the cart. If the item is placed in the cart, then we will consider the test to be passed. Having passed the first two tests, the user will already be familiar with how to navigate to the Menu page. On the Menu page, there will be a number of food items for the user to select. Selecting the ‘Add to Cart’ option on an individual food page will add said item to the cart. That will complete the user testing portion of the project.


Automated Test Plans

screenshot is in milestones.jpg

For the automated testing, we will be using Ruby on Rails’ built-in testing features (described here). The tests that we perform are as follows:

Navigating between pages
Successful: 
- When any link is clicked, the user is taken to the appropriate page
    - Test if link clicked=new URL
    - Pages displaying correctly

Successful: 
- Each pages correctly displays all relevant menu and form information for the current item and updates correctly when a new item is selected
    - Test against manual query if answer matches what is displayed on webpage
    - Adding things to the cart (and them staying there)
    
Successful: 
- Pressing add to cart places item based on the appropriate ID in the appropriate container
    - Perform sample order, compare to expected results

