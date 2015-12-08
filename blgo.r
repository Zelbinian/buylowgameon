# This R script is designed to help me build my boardgame collection.
# It pulls everything I both want to play and don't own from boardgame geek.
# Then it uses a pricing enging to figure out which games are the cheapest so I can
# buy new games I want to play without spending a lot of money!

# first, make sure packages are installed
require("XML")

# -- GET COLLECTION FROM BGG -- #

# own = 0 and wanttoplay = 1, should be obvious what those mean
collection.url <- "http://www.boardgamegeek.com/xmlapi/collection/zelbinian?own=0&wanttoplay=1"

# sending a request to the server, then unpacking the response in a usable XML form
collection.xml <- xmlRoot(xmlTreeParse(getURL(collection.url)))
