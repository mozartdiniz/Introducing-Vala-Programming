class Class : Object {
    static construct {
        stdout.printf("static construction block \n");
    }

    public Class() {
        stdout.printf("default constructor\n");
    }

    public Class.with_param(int x) {
        stdout.printf("named constructor\n");
    }

    construct {
        stdout.printf("construct block\n");
    }
}

void main() {
	var c = new Class();
	var d = new Class();
	var e = new Class.with_param(10);
}
