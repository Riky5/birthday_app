# Birthday App

User story:

_As a user,  
so that I can receive a personalised message,  
I'd like to input my name. birth day and month._  

---
# Built with
- [Sinatra](https://github.com/sinatra/sinatra)

# Getting Started
## Installation

1. Clone the repo
```
    git clone https://github.com/Riky5/birthday_app.git
```
2. Install all the gems
```
    bundle install
```
3. Connect to your local server
```
    rackup
```
4. Open the browser and type in the url
```
    localhost:port_number

    example:

    localhost:9292
```

---
# Usage

In the Homepage you can enter your name, birth day and birth month.

Example 1

A user's birth date is in the future.
![Homepage1](/images/homepage1.png)

Message 1

The user receives this message:
![Days left to birthday](/images/days_left_to_bday.png)

---
Example 2

A user's birth date is today = 9 December 2021
![Homepage2](/images/homepage2.png)

The user receives this message instead:
![Happy Birthday message](/images/happy_birthday_message.png)

---
Give it a try with your birthday ☺️
