# JH BI-FI

## Heroku Deployment Link
URL: https://calm-coast-42273.herokuapp.com/

## Summary
### Problem
Electronics have been a strongly growing market in the last few decades

People need an outlet to buy/sell old and new electronic products. There are outlets such as eBay and Gumtree that can be used, but they cover a wide range of products besides electronics. Small electronics businesses struggle to compete with well the well established oligopolies (e.g. JB HI FI, Harvey Norman).

### Solution
A 2-sided marketplace with similarity to Gumtree as a medium to make purchases and sales of electronic products. It allows those with a special interest in electronics, regular people who are interested and small-time businesses to have a medium to buy and sell electronic goods.

### Target Market
- Electronics enthusiasts
- People who need to buy/sell specific electronic items
- Small-time electronics business owners looking to advertise their goods

## Inspiration
Electronics store templates for inspiration
https://www.templatemonster.com/category/electronics-store-templates/

- There are many electronics products sites that use
- I like the layout for many gaming products websites, I think they look sleek and the general colour schemes appeal to me.

Razer -
https://www2.razerzone.com/au-en

Astro -
http://www.astrogaming.com/

Alienware -
http://www.alienware.com.au/


## Formatting and Miscellaneous Resources
### Google fonts:
Major Headings & Logo - Anton
General Font - Ubuntu

### Hamburger Bar -
https://codepen.io/petitflodev/pen/ZyPVVo

Thanks Isabelle!

### Upload multiple photos -
https://github.com/GlennDimaliwat/multi-photo-upload

Cheers Glen!

### Possible Brand Name Ideas (decided against them in the end):

Elektrek
Elekdeck
Elec-tree-city (kinda like Gumtree)

- Maybe a God of Thunder/Electricity (thor?)
- Anything do to do with electricity that rhymes with a word similar to store

## Wireframes
Figma
https://www.figma.com/file/EsaPn73u6FWcCcpfIRtCZAnE/Untitled

![Figma 1](https://github.com/JazzHutchy/jhbifi/blob/master/app/assets/images/important-docs/figma-1.png)
![Figma 2](https://github.com/JazzHutchy/jhbifi/blob/master/app/assets/images/important-docs/figma-2.png)
![Figma 3](https://github.com/JazzHutchy/jhbifi/blob/master/app/assets/images/important-docs/figma-3.png)
![Figma 3.5](https://github.com/JazzHutchy/jhbifi/blob/master/app/assets/images/important-docs/figma-3.5.png)
![Figma 4](https://github.com/JazzHutchy/jhbifi/blob/master/app/assets/images/important-docs/figma-4.png)

## ERD
Db Designer
https://dbdesigner.net/designer/schema/122922

![ERD](https://github.com/JazzHutchy/jhbifi/blob/master/app/assets/images/important-docs/erd-diagram.png)

## User Stories
# Buyer
- In order to discover new/unique/exotic electronics goods, as a user (buyer), I want to a see listings and search for goods on the site (using a search bar)
- In order to discover new/unique/exotic electronics goods, as a user (buyer), I want to a see listings and search for goods on the site (using a search bar)
- In order to discover new/unique/exotic electronics goods, as a user (buyer), I want to a see listings and search for goods on the site (using a search bar)
- In order to gain specific information about each product, as a user (buyer), I want to be able to read a description of each item to ensure I know what I'm buying
- In order to keep an open mind and find out about other deals/offers available on the website, as a user (buyer), I want to see a list of similar items available when I'm browsing a selected item
- In order to keep an open mind and find out about other deals/offers available on the website, as a user (buyer), I want to see a list of similar items available when I'm browsing a selected item
- To keep tabs on items I’m interested in, as a user (buyer), I need be able to save listings to my profile

# Seller
- In order to off-load items I no longer want to use, as a user (seller), I want the option to sell my electronics to other users
- In order to advertise my goods, as a user (seller), I need the ability to list my items for resale
- In order to help buyers visualise what they are going to purchase, as a user (seller), I need to be able to upload images of my product (shrine, etc)
- In order to describe to the buyers what I am offering, as a user (seller), I need a section where I describe the product and its attributes within the listing
- To make potential buyers aware of other products that I am selling, as a user (seller), I need to have a section that displays every item that I am currently selling
- In order to allow buyers to contact me, as a user (seller), I need a messaging system

# Buyer and Seller
- In order to ensure that the person I am dealing with is trustworthy, as a user (buyer & seller), I want to be able to check the other user's reputation on the website (and rate them according to my personal interactions with them)
- In order to pay for items conveniently, as a user (buyer/seller), I want to link my credit card or Paypal account to the website (use Stripe for this)
- In order to stay updated on newly listed items, as a user (buyer/seller), I want to see the latest listings that have been posted on every page of the site
- In order to quickly access all major sections of the site, as a user (buyer & seller), there needs to be a nav bar at top of the page
- In order to stop abusive users, as a user (buyer and seller), I need the ability to block other users
- In order to complain about issues with the site to the owner(s), as a user (buyer and seller), I need to be able send them messages indicating my problems

# Misc
- In order to deal with users who are breaking the rules of the site, as an administrator, I need the ability to ban users
- In order to bind the users to a contract to provide legal protection, as the owner, I must provide a terms and conditions page that also needs to be verified when a new account is created
- In order to prevent bots from signed up to the site, as the owner, I need to set up a captcha system upon account creation

## Project Plan
Trello board
https://trello.com/b/AT32Dyy3/2-sided-marketplace-assignment

## Gems
- Bootstrap
- Dotenv
- HTTParty
- Shrine (and associated gems: fastimage, image processing and minimagick)
- Mailgun
- AWS

### Coding management
- Rspec
- Awesome Print

### Planned to use but didn't end up using
- Stripe
- Geocoder
- Pundit

### Future Plans
- Stripe payment
- Include more APIs: reCaptcha, Google Maps, Algolia (search), Omniauth (social media login)
- Admin functionality
- Blocking/Banning users
- Favourite listings

## Review
### Challenges
- Overestimated my capabilities to get everything I planned out initially implemented
- Getting my ERD correct and making sure I have the right models and the right number of them
- Created some incorrect attributes and had to go through my files and correct them all as I didn't want to restart if I could help it
- Getting photo uploading to work as intended (had to deal with incorrect attributes)
- Messaging system gave me many headaches (and still doesn't quite work as intended)

### Favourite Parts
- The initial planning phase in Figma went very smoothly for the most part
- Bootstrapping everything was the most relaxing part of my assignment, I gained a better understanding of bootstrap from using it in my assignment (such as understanding when to separate bootstrap classes onto appropriate div levels)

