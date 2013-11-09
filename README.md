FarmBot Frontend
=======

The FarmBot web frontend consists of a graphical interface where the user can drag and drop desired plants into a map view, thus designing their farm or garden. The interface will also allow the user to set each plant's "grow specifications", view and modify the schedule of operations, display data overlays on the map view, and view and manipulate analytics data graphically. For an in-depth description and interface mockups, see the FarmBot white paper starting on page 23. http://www.scribd.com/doc/169536137/FarmBot-Humanity-s-Open-Source-Automated-Precision-Farming-Machine#page=23

[![Build Status](https://travis-ci.org/destos/farmbot-frontend.png?branch=master)](https://travis-ci.org/destos/farmbot-frontend)

Application Structure
---------------------

This project uses **Yeoman** along with **grunt** and **bower** to manage generating scafolding along with the build process and dependancies.

the [AngularJS yeoman Generator](https://github.com/yeoman/generator-angular) is used to help create code scaffolding for angular directives and the like.

**Installed plugins/libraries**
* [UI bootstrap](http://angular-ui.github.io/bootstrap/)
* [Angular UI router](https://github.com/angular-ui/ui-router)
* jQuery 1.9.1
* Angular resource
* Angular cookiesa
* Angular sanatize

**Bootstrap 3**
Glyphicons are installed along with the base CSS. Bootstrap JS is excluded in favor of UI bootstrap.

Setup
-----

**Install NodeJS if not already** ~0.10 suggested

Installl yeoman

	npm install -g yo
	npm install -g generator-angular

Move into the project directory and install node modules

	cd /farmbot-frontend
	npm install

Workflows
---------

Run connect server for live functional testing

	grunt server

Run tests

	grunt test

Contributing
------------

### Code Guidelines

All code should be written in [CoffeeScript](http://coffeescript.org/).

When creating new bits of scaffolding with the angular generator make sure to include the `--coffee` flag.

Try to organize view html logically.

### Testing

When using the yeoman angular generator the associated test specs will be created in the  `test/spec` folder. Please follow best practices with our test framework when writing tests.
Since this project is in its infancy some leway should be given when writing new functionality. The end goal however will be to have a fully unit tested project.
