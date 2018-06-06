![error cds view](https://github.com/impnguyen/climo/blob/master/readmeMedia/errorCdsView.png)

# climo

"climo" is the abbreviation for **Cli**ent**Mo**nitoring. It is an abap logging service for client messages or errors. This solution was build with Abap Core Data Services, Business Object Framework and the OData protocol.

## purpose

This service was build to log a variety of message/error types like

- errors based on the sapui5/openui5 framework
- uncaught exception based on javascript window.onError event
- odata backend messages
- your custom message types

## how to use

You only have to create a post request against the published odata service (specially against the error entity).

### how to use - sapui5/openui5

coming soon

## http rest client - postman suite

With the postman-collection json file you can execute the defined tests with postman.
Just import the [JSON-export](https://github.com/impnguyen/climo/tree/dev/postman) into your postman testsuite or newman test environment and execute the tests.

![error cds view](https://github.com/impnguyen/climo/blob/master/readmeMedia/postmanTestSuite.png)
