#!/bin/bash

read -p "Enter the name of your car brand, We will try to tell you the factory location: " name

case $name in
	Tesla)
	  echo -n "${name}'s car factory is in the USA."
	  ;;

	BMW | Mercedes | Audi | Porsche)
	  echo -n "${name}'s car factory is in Germany."
	  ;;

	Toyota | Honda | Mazda | Mitsubishi | Subaru)
	  echo -n "${name}'s car factory is in Japan."
	  ;;

	*)
	 echo -n "This is unknown car brand, hence it is hard to tell it's factory location"
	 ;;

esac
