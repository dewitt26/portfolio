//I was having issues with the getNumLeaves() method so Charlie Huang advised that I use the "isLeaf()" method and helped me with it

void setup() {
    BinarySearchTree<Integer> tree = new BinarySearchTree<Integer>();

    tree.add(90);//add is method 1
    tree.add(100);
    tree.add(80);
    tree.add(70);
    tree.add(85);
    tree.add(98);
    tree.add(120);

    print("IN ORDER: ");//2
    tree.inOrder();
    println();
    
    print("PRE ORDER: ");//3
    tree.preOrder();
    println();
    
    print("POST ORDER: ");//4
    tree.postOrder();
    println();
    
    print("REVERSE ORDER: ");//5
    tree.revOrder();
    println();
    
    print("LEVEL ORDER: ");
    tree.levelOrder();//6
    println();

    println("NUMBER OF LEVELS: " + tree.getNumLevels());//7
    println("NUMBER OF WIDTH: " + tree.getWidth());//8
    println("NUMBER OF HEIGHT: " + tree.getHeight());//9
    println("NUMBER OF LEAVES: " + tree.getNumLeaves());//10
    println("NUMBER OF NODES: " + tree.getNumNodes());//11
    
    println("\n\n");//search is method 12
    println(tree.search(100)?"The tree contains 100":"The does not contain 100");
    println(tree.search(114)?"The tree contains 114":"The does not contain 114");

    tree.remove(90);//13
    print("Tree after removing 90: ");
    tree.levelOrder();
    println();
    tree.remove(70);
    print("Tree after removing 70: ");
    tree.levelOrder();

    println();
    print("The smallest tree node: " + tree.getSmallest());//14
    println();
    println(tree);//15
}

public interface Treeable<T extends Comparable<T>> {
    public Object getValue();
    public Treeable<T> getLeft();
    public Treeable<T> getRight();
    public void setValue(T value);
    public void setLeft(Treeable<T> left);
    public void setRight(Treeable<T> right);
}
