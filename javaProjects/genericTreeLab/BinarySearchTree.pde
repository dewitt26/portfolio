import java.util.LinkedList;
import java.util.Queue;
import java.util.ArrayList;

class BinarySearchTree<T extends Comparable<T>> {
  private TreeNode<T> root;
  public BinarySearchTree() {
    root=null;
  }
  public void add(T val) {
    root= add(val, root);
  }

  private TreeNode<T> add(T val, TreeNode<T> tree) { //1
    if (tree==null)
      tree=new TreeNode<T>(val);

    T treeValue=tree.getValue();
    int dirTest=val.compareTo(treeValue);
    if (dirTest<0)
      tree.setLeft(add(val, tree.getLeft()));
    if (dirTest>0)
      tree.setRight(add(val, tree.getRight()));
    return tree;
  }

  public void inOrder() {
    inOrder(root);
  }
  private void inOrder(TreeNode tree) {//2
    if (tree.getLeft() != null) {
      inOrder(tree.getLeft());
    }
    
    print(tree.getValue()+" ");
    
    if (tree.getRight() != null) {
      inOrder(tree.getRight());
      
    }
  }

  public void preOrder() {
    preOrder(root);
  }
  private void preOrder(TreeNode tree) {//3
  
    print(tree.getValue()+" ");
    
    if (tree.getLeft() != null) {
      preOrder(tree.getLeft());
    }
    
    if (tree.getRight() != null) {
      preOrder(tree.getRight());
    }
  }

  public void postOrder() {
    postOrder(root);
  }
  private void postOrder(TreeNode tree) {//4
    if (tree.getLeft() != null) {
      postOrder(tree.getLeft());
    }
    
    if (tree.getRight() != null) {
      postOrder(tree.getRight());
    }
    
    print(tree.getValue()+" ");
  }

  public void revOrder() {
    revOrder(root);
  }
  public void revOrder(TreeNode tree) {//5
    if (tree.getRight() != null) {
      revOrder(tree.getRight());
    }
    
    print(tree.getValue()+" ");
    
    if (tree.getLeft() != null) {
      revOrder(tree.getLeft());
    }
  }

  public void levelOrder() {
    levelOrder(root);
  }
  public void levelOrder(TreeNode tree) {//6 
    Queue<TreeNode>level=new LinkedList<TreeNode>();
    level.add(tree);//adds the tree to a queue to remove in 
    //LIFO order (last in, first out)
    //it is also a breadth first search BFS algorithm!
    //BFS goes wide, where as depth first algorithms (DFS)
    //like preOrder, postOrder, reverseORder go deep first and 
    //use recursion which uses the stack in
    //FIFO order (first in, first out)
    //check out the visualizations on graphs...which are also
    //node based https://graph.brianreber.com/
    //so the root is pulled off, then it's children are added to the queue

    while (!level.isEmpty()) {//then removes one by one
      TreeNode node = level.remove();
      print(node.getValue()+" ");

      if (node.getLeft()!=null) {
        level.add(node.getLeft());
      }
      if (node.getRight()!=null) {
        level.add(node.getRight());
      }
    }
  }

  public int getNumLevels() {
    return getNumLevels(root);
  }
  private int getNumLevels(TreeNode tree) {//7
    if (tree!=null)
      return 1+Math.max(getNumLevels(tree.getLeft()), getNumLevels(tree.getRight()));
    return 0;
  }

  public int getWidth() {
    return getWidth(root);
  }
  private int getWidth(TreeNode tree) {//8
    return (1)+getNumLevels(tree.getRight()) + getNumLevels(tree.getLeft());
  }

  public int getHeight() {//9
    return getNumLevels()-1;
  }

  public int getNumLeaves() {
    return getNumLeaves(root);
  }
  private int getNumLeaves(TreeNode tree) {//10
   
    if (tree==null) {
      return 0;
    } else if (isLeaf(tree)) {
      return 1;
    } else {
      return getNumLeaves(tree.getRight()) + getNumLeaves(tree.getLeft());
    }
    
  }
  private boolean isLeaf(TreeNode tree) {

    if (tree.getRight()==null && tree.getLeft()==null) {

      return true;
    }

    return false;
  }

  public int getNumNodes() {
    return getNumNodes(root);
  }
  private int getNumNodes(TreeNode tree) {//11
    if (tree!=null) {
      return  1 + getNumNodes(tree.getRight()) + getNumNodes(tree.getLeft());
    }
    
    return 0;
    
  }

  public boolean search(T val) {
    return search(val, root);
  }
  private boolean search(T val, TreeNode<T> tree) {//12
    if (tree != null) {
      int dirTest = val.compareTo(tree.getValue());
      if (dirTest == 0 ) 
        return true;
      else if (dirTest < 0)
        return search(val, tree.getLeft());
      else if (dirTest > 0)
        return search(val, tree.getRight());
    }
    return false;
  }

  public void remove(T val) {
    root = remove(val, root);
  }
  private TreeNode remove(T val, TreeNode<T> tree) {//13
    if (tree == null) {//tricky...trace to understand how this works:
      return null;
    }
    T treeValue = tree.getValue();
    int dirTest = val.compareTo(treeValue);

    if (dirTest < 0)
      tree.setLeft(remove(val, tree.getLeft()));
    else if (dirTest > 0)
      tree.setRight(remove(val, tree.getRight()));//traverse until node is found, then:
    else {
      //case 1" remove leaf node
      if (tree.getRight()==null&&tree.getLeft()==null) {
        return null;//set pointer to null effectively removing the leaf node

        //case 2: remove a node with one child
      } 
      if (tree.getLeft()==null) {
        return tree.getRight();
      } 

      if (tree.getRight()==null) {
        return tree.getLeft();

        //case 3: two children
      } else {
        TreeNode<T> successor=getSmallest(tree.getRight());//get smallest node
        tree.setValue(successor.getValue());//set smallest node value
        tree.setRight(remove(successor.getValue(), tree.getRight()));//set smallest node pointer
      }
    }
    return tree;
  }

  public Comparable getSmallest() {
    return getSmallest(root).getValue();
  }
  private TreeNode<T> getSmallest(TreeNode<T> tree) {//14
    return tree;
  }

  public String toString() {
    return toString(root);
  }
  private String toString(TreeNode tree) {//15

    return "";
  }
}
