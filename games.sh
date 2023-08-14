#!/bin/bash

declare -a missing_packages=()

# Verify that the required packages are installed
if ! [ -x "$(command -v figlet)" ]; then
  echo -e 'Error: figlet is not installed\nYou can install it with: sudo apt install figlet' >&2
  missing_packages+=("figlet")  
fi
if ! [ -x "$(command -v bastet)" ]; then
  echo -e 'Error: bastet is not installed\nYou can install it with: sudo apt install bastet' >&2
  missing_packages+=("bastet")
fi
if ! [ -x "$(command -v pacman4console)" ]; then
  echo -e 'Error: pacman4console is not installed\nYou can install it with: sudo apt install pacman4console' >&2
  missing_packages+=("pacman4console")
fi
if ! [ -x "$(command -v nsnake)" ]; then
  echo -e 'Error: nsnake (Snake Package) is not installed\nYou can install it with: sudo apt install nsnake' >&2
  missing_packages+=("nsnake")
fi
if ! [ -x "$(command -v nudoku)" ]; then
  echo -e 'Error: nudoku (Sudoku Package) is not installed\nYou can install it with: sudo apt install nudoku' >&2
  missing_packages+=("nudoku")
fi
if ! [ -x "$(command -v moon-buggy)" ]; then
  echo -e 'Error: moon-buggy (Google Dinosaur Game) is not installed\nYou can install it with: sudo apt install moon-buggy' >&2
  missing_packages+=("moon-buggy")
fi
if ! [ -x "$(command -v ninvaders)" ]; then
  echo -e 'Error: ninvaders (Space Invaders Package) is not installed\nYou can install it with: sudo apt install ninvaders' >&2
  missing_packages+=("ninvaders")
fi
if ! [ -x "$(command -v greed)" ]; then
  echo -e 'Error: greed (Greed Package) is not installed\nYou can install it with: sudo apt install greed' >&2
  missing_packages+=("greed")
fi

# If there are missing packages, ask the user if he wants to install them
if [ ${#missing_packages[@]} -gt 0 ]; then
  echo -e "\nDo you want to install the missing packages? (y/n)"
  read -p "" choice
  case $choice in
    y|Y) sudo apt install ${missing_packages[@]} ;;
    n|N) ;;
    *) echo "Invalid value"
      sleep 2 ;;
  esac
fi

# Display welcome message
figlet -f slant "Welcome $USER!"

while true; do

  # Display menu with numbered options
  echo -e "\nSelect a game:
    1. Tetris
    2. Pacman
    3. Snake
    4. Sudoku
    5. Moon Buggy (Google Dinosaur Game)
    6. Space Invaders
    7. Greed
    ---HarvardX GD50 Games---
    I. Pong
    II. Flappy Bird
    ---------------------------------------------
    g|G. Installing Instructions for GD50 Games
    ---------------------------------------------
    q|exit. EXIT"

  # Read user input
  read -p "" choice

  # Execute the selected game
  case $choice in
      1) bastet ;;
      2) pacman4console ;;
      3) nsnake ;;
      4) nudoku ;;
      5) moon-buggy ;;
      6) ninvaders ;;
      7) greed ;;
      # ---Homemade Games---
      I) love CS50G-Projects/pong ;;
      II) love CS50G-Projects/flappy ;;
      # --------------------
      g|G) clear 
        echo -e "DISCLAIMER. Pending automation of this section of the code\n"
        echo -e "Instructions:\n  - Install LOVE2D \"sudo apt install love2d\"\n  - Install git \"sudo apt install git\"\n  - Clone CS50G-Projects repository \"git clone https://github.com/NachoGV/CS50G-Projects.git\"\n  - Modify path in games.sh (line 85) to match your /CS50G-Projects path\n\nPRESS TO GO BACK TO MENU"
        read -p "" ;;
      # --------------------
      q|exit) break ;;
      *) echo "Invalid value"
         sleep 2 ;;
  esac

  clear
  figlet -f slant "Welcome $USER!"

done

# Exiting the script
echo "Exiting..."
exit 0

# Other games:
# package: bsd-games
# command: sudo apt install bsd-games
# adventure - an exploration game
# arithmetic - quiz on simple arithmetic
# atc - air traffic controller game
# backgammon - the game of backgammon
# banner - print large banner on printer
# battlestar - a tropical adventure game
# bcd - reformat input as punch cards, paper tape or morse code
# boggle - word search game
# caesar - decrypt caesar cyphers
# canfield - the solitaire card game canfield
# cfscores - show scores for canfield
# cribbage - the card game cribbage
# fish - play Go Fish
# gomoku - game of 5 in a row
# hangman - Computer version of the game hangman
# hunt - a multi-player multi-terminal game
# huntd - hunt daemon, back-end for hunt game
# mille - play Mille Bornes
# monop - Monopoly game
# morse - reformat input as punch cards, paper tape or morse code
# number - convert Arabic numerals to English
# phantasia - an interterminal fantasy game
# pom - display the phase of the moon
# ppt - reformat input as punch cards, paper tape or morse code
# primes - generate primes
# quiz - random knowledge tests
# rain - animated raindrops display
# random - random lines from a file or random numbers
# robots - fight off villainous robots
# rot13 - rot13 encrypt/decrypt
# sail - multi-user wooden ships and iron men
# snake - display chase game
# teachgammon - learn to play backgammon
# tetris-bsd - the game of tetris
# trek - trekkie game
# wargames - shall we play a game?
# worm - Play the growing worm game
# worms - animate worms on a display terminal
# wtf - translates acronyms for you
# wump - hunt the wumpus in an underground cave