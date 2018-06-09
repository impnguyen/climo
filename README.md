![error cds view](https://github.com/impnguyen/climo/blob/master/readmeMedia/errorCdsView.png)

# Table of Contents
1. [What is CLIMO?](#What-is-CLIMO?)
2. [Purpose](#Purpose)
3. [How to use](#How-to-use)
4. [Http rest client - Postman suite](#Http-rest-client---Postman-suite)

# What is CLIMO?

"climo" is the abbreviation for **Cli**ent**Mo**nitoring. It is an abap logging service for client messages or errors. This solution was build with Abap Core Data Services, Business Object Framework and the OData protocol.

You can also use CLIMO with all http based frameworks or libraries. The communication protocol is OData V2.

## Purpose

This service was build to log a variety of message/error types like

- errors based on the sapui5/openui5 framework
- uncaught exception based on javascript window.onError event
- odata backend messages
- your custom message types

## How to use

You only have to create a post request against the published odata service (specially against the error entity).

### sapui5/openui5

coming soon

## Http rest client - Postman suite

With the postman-collection json file you can execute the defined tests with postman.
Just import the [JSON-export](https://github.com/impnguyen/climo/tree/dev/postman) into your postman testsuite or newman test environment and execute the tests.

You also can use the create entry request with random post body parameters to simulate many logs in your logging table.

![postman collection](https://github.com/impnguyen/climo/blob/dev/readmeMedia/postmanTestSuite.png)
