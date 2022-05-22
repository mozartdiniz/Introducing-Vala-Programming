# Introducing-Vala-Programming
All code I wrote while reading the Introducing Vala Programming

# Some code may need extra libs to compile

### JSONParser

`valac --pkg=json-glib-1.0 ./JSONParser.vala`

### SWAPI.vala

`valac --pkg json-glib-1.0 --pkg libsoup-2.4 ./SWAPI.vala` 

### SyncClient

`valac --pkg gio-2.0 ./SyncClient.vala`
