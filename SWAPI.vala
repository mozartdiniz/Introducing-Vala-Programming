void main () {
    var uri = "https://swapi.dev/api/people/1/";

    var session = new Soup.Session ();
    var message = new Soup.Message ("GET", uri);
    session.send_message (message);

    try {
        var parser = new Json.Parser ();
        parser.load_from_data ((string) message.response_body.flatten ().data, -1);

        var root_object = parser.get_root ().get_object ();
        var name = root_object.get_string_member("name");
        var birth_year = root_object.get_string_member("birth_year");

        print (@"Result: $name - $birth_year\n");
    } catch (Error e) {
        stderr.printf ("I guess something is not working...\n");
    }
}
