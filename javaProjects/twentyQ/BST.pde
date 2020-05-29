class BST {
  TreeNode root;
  TreeNode current;

  public BST() {
    root=null;
  }
  TreeNode buildTree() {
    //0: root
    //I or E
    root=new TreeNode("Do you prefer spending time a) in a large group or b) alone?");


    //level one
    //N or S
    root.setLeft(new TreeNode("Do you a) focus on pragmatic solutions or b) unrealistic or creative solutions?"));
    root.setRight(new TreeNode("Do you a) focus on pragmatic solutions or b) unrealistic or creative solutions?"));

    
    //level two
    //F or T
    root.getLeft().setLeft(new TreeNode("Do you make decisions based on \na) feelings and personal values or b) based on logic and reasoning?"));
    root.getLeft().setRight(new TreeNode("Do you make decisions based on \na) feelings and personal values or b) based on logic and reasoning?"));
    root.getRight().setLeft(new TreeNode("Do you make decisions based on \na) feelings and personal values or b) based on logic and reasoning?"));
    root.getRight().setRight(new TreeNode("Do you make decisions based on \na) feelings and personal values or b) based on logic and reasoning?"));


    //level three
    //P or J
    root.getRight().getRight().setLeft(new TreeNode("Do you prefer a) spontaneous situations or b) certainty?"));
    root.getRight().getLeft().setRight(new TreeNode("Do you prefer a) spontaneous situations or b) certainty?")); 
    root.getRight().getRight().setRight(new TreeNode("Do you prefer a) spontaneous situations or b) certainty?"));
    root.getRight().getLeft().setLeft(new TreeNode("Do you prefer a) spontaneous situations or b) certainty?"));
    
    root.getLeft().getRight().setLeft(new TreeNode("Do you prefer a) spontaneous situations or b) certainty?"));
    root.getLeft().getLeft().setRight(new TreeNode("Do you prefer a) spontaneous situations or b) certainty?")); 
    root.getLeft().getRight().setRight(new TreeNode("Do you prefer a) spontaneous situations or b) certainty?"));
    root.getLeft().getLeft().setLeft(new TreeNode("Do you prefer a) spontaneous situations or b) certainty?"));
    
    
    //level four
    //result
    root.getRight().getRight().getRight().setRight(new TreeNode("Your personality is: ISTJ"));
    root.getRight().getRight().getRight().setLeft(new TreeNode("Your personality is: ISTP"));
    root.getRight().getRight().getLeft().setRight(new TreeNode("Your personality is: ISFJ"));
    root.getRight().getRight().getLeft().setLeft(new TreeNode("Your personality is: ISFP"));
    
    root.getRight().getLeft().getRight().setRight(new TreeNode("Your personality is: INTJ"));
    root.getRight().getLeft().getRight().setLeft(new TreeNode("Your personality is: INTP"));
    root.getRight().getLeft().getLeft().setRight(new TreeNode("Your personality is: INFJ"));
    root.getRight().getLeft().getLeft().setLeft(new TreeNode("Your personality is: INFP"));
    
    root.getLeft().getRight().getRight().setRight(new TreeNode("Your personality is: ESTJ"));
    root.getLeft().getRight().getRight().setLeft(new TreeNode("Your personality is: ESTP"));
    root.getLeft().getRight().getLeft().setRight(new TreeNode("Your personality is: ESFJ"));
    root.getLeft().getRight().getLeft().setLeft(new TreeNode("Your personality is: ESFP"));
    
    root.getLeft().getLeft().getRight().setRight(new TreeNode("Your personality is: ENTJ"));
    root.getLeft().getLeft().getRight().setLeft(new TreeNode("Your personality is: ENTP"));
    root.getLeft().getLeft().getLeft().setRight(new TreeNode("Your personality is:ENFJ"));
    root.getLeft().getLeft().getLeft().setLeft(new TreeNode("Your personality is: ENFP"));
    
    
    current=root;
    return current;
  }
}
