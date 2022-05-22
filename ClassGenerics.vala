interface List<T>
{
    public abstract void add(T element);
    public abstract T peek();
    public abstract void remove();
}

class MyList<T> : List<T> 
{
    T[] array;
    
    public void add(T element) 
    {
        array += element;
    }
    
    public T peek() {
        return array[array.length - 1];
    }
    
    public void remove()
    {
        array[array.length - 1] = null;
        array.resize(array.length - 1);
    }
}

void main() 
{
	var q = new MyList<string>();
	q.add("first string\n");
	q.add("second string\n");
	stdout.printf("%s", q.peek());
	q.remove();
	stdout.printf("%s", q.peek());
}
