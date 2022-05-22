public class Test : Object 
{
    int counter;
    
    public signal void ring(int a);
    
    public void trigger() {
        ring(counter++);
    }    
}

public void ringHandler(Test source, int a) {
    stdout.printf("ringHandler called: %d\n", a);
}

void main() 
{
    var t = new Test();
    
    t.ring.connect(ringHandler);
    t.ring.connect(( source, a) => {
        stdout.printf("%d\n", a);
    });
    
    t.trigger();
    t.trigger();
    t.trigger();
}
