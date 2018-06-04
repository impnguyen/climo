# climo
"climo" is the abbreviation for **Cli**ent**M**onitoring. It is an abap logging service for client monitoring. This solution was build with cds, bopf and the odata protocol. 

## purpose
This service was build to log a variety of message types like 
- errors based on the sapui5/openui5 framwork
- uncaught exception based on javascript window.onError event
- odata backend messages
- your custom message types

## how to use
You only have to create a post request against the published odata service (specially against the error entity). 

### how to use - sapui5/openui5
coming soon
