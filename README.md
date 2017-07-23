#  Table of Content
1. [Introduction](#introduction)
2. [Color theme](#color)
3. [How to?](#howto)
4. [Screenshot](#screenshot)

	4.1 [One Page (without image)](#woi)

	4.2 [One Page (with image)](#wi)

	4.3 [Themes](#themes)
5. [Credits](#credits)


##  Introduction <a name="introduction"/>
I started writing this latex class with the idea that  overall control should be with user. Essentially I provide you with two commands which create the major part of the template :
1. `\mattitle{First Name Last Name}` : Creates the main title with name. This also has an alternate version which shows image as well `\matpictitle{First Name Last Name}{image}`
2. `\matsection{Section Name}{ detail here}`: Creates the section in side margin

Other than these two all other commands are optional (more of helper functions -- check [example CV](https://github.com/Adarsh-Barik/MinimalMaterialCV/blob/master/cv1.tex) for their usage).

## Color theme <a name="color"/>
You can change the color of the theme by specifying a theme in preamble by typing `\renewcommand{\mattheme}{teal700}`. See [example CV](https://github.com/Adarsh-Barik/MinimalMaterialCV/blob/master/cv1.tex) for full list of color themes.

## How to? <a name="howto" />
1. Like any other class use this by adding `\documentclass{MatCV}` to your preamble.  
2. Create title by using `\mattitle{Title}` or `\matpictitle{Title}{image}`
3. Use helper functions or not.
4. Unleash your creativity.

## Screenshot <a name="screenshot" />
Please download the example CV (`cv1.pdf`). Preview in git loses some minor details. Here are few screenshots for your reference:
### One page (without image) <a name="woi" />
![alt tag](https://raw.githubusercontent.com/Adarsh-Barik/MinimalMaterialCV/master/example/cv1.jpg)
### One page (with image) <a name="wi" />
![alt tag](https://raw.githubusercontent.com/Adarsh-Barik/MinimalMaterialCV/master/example/cv1_image.jpg)
### Themes <a name="themes" />
Some themes
![alt tag](https://raw.githubusercontent.com/Adarsh-Barik/MinimalMaterialCV/master/example/themes.jpg)

## Credits <a name="credits" />
1. Design is obviously inspired by Google's Material Design
2. Idea inspired by : Michael DeCorte, Artur Gomes
3. Open Source
