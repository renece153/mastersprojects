using System;
using System.Collections.Generic;
using System.Text;
namespace TreeSort
{
    // Define Node Class
    class Node
    {
        public int item;
        public Node leftc;
        public Node rightc;
        public void display()
        {
            Console.Write("[");
            Console.Write(item);
            Console.Write("]");
        }
    }
    //Define Tree Class
    class Tree
    {
        //Define root node
        public Node root;
        public Tree()
        {
            root = null;
        }
        //returns root node
        public Node ReturnRoot()
        {
            return root;
        }
        // Insert value to node
        public void Insert(int id)
        {
            Node newNode = new Node();
            newNode.item = id;
            if (root == null)
                root = newNode;
            else
            {
                Node current = root;
                Node parent;
                while (true)
                {
                    parent = current;
                    if (id < current.item)
                    {
                        current = current.leftc;
                        if (current == null)
                        {
                            parent.leftc = newNode;
                            return;
                        }
                    }
                    else
                    {
                        current = current.rightc;
                        if (current == null)
                        {
                            parent.rightc = newNode;
                            return;
                        }
                    }
                }
            }
        }

        // public function for deleting a value in a node
        public void Delete(int value)
        {
            this.root = Remove(this.root, value);
        }

        // function used by delete function to set conditions in deleting a value
        private Node Remove(Node parent, int key)
        {
            if (parent == null) return parent;

            if (key < parent.item) parent.leftc = Remove(parent.leftc, key);
            else if (key > parent.item)
                parent.rightc = Remove(parent.rightc, key);

            // if value is same as parent's value, then this is the node to be deleted  
            else
            {
                // node with only one child or no child  
                if (parent.leftc == null)
                    return parent.rightc;
                else if (parent.rightc == null)
                    return parent.leftc;

                // node with two children: Get the inorder successor (smallest in the right subtree)  
                parent.item = GetMin(parent.rightc);

                // Delete the inorder successor  
                parent.rightc = Remove(parent.rightc, parent.item);
            }

            return parent;
        }
        
        //Print out Preorder values; primarily used for checking
        public void Preorder(Node Root)
        {
            if (Root != null)
            {
                Console.WriteLine(Root.item + " ");
                Preorder(Root.leftc);
                Preorder(Root.rightc);
            }
        }

        //Print out Inorder values; use when [8] is selected
        public void Inorder(Node Root)
        {
            if (Root != null)
            {
                Inorder(Root.leftc);
                Console.Write(Root.item + " ");
                Inorder(Root.rightc);
            }
        }
        //Print out Postorder values; primarily used for checking
        public void Postorder(Node Root)
        {
            if (Root != null)
            {
                Postorder(Root.leftc);
                Postorder(Root.rightc);
                Console.WriteLine(Root.item + " ");
            }
        }

        //Get highest value from the binary tree
        public int GetMax(Node root)
        {
            Node cur = root;
            while (cur.rightc != null)
            {
                cur = cur.rightc;
            }
            return Convert.ToInt16(cur.item);
        }

        //Get lowest value from the binary tree
        public int GetMin(Node root)
        {
            Node cur = root;
            while (cur.leftc != null)
            {
                cur = cur.leftc;
            }
            return Convert.ToInt16(cur.item);
        }

        //Search Corresponding value inputted in function's parameter
        public Boolean Search(int value)
        {
            if (this.Find(value, this.root) != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        // Function used by Search as its procedure in finding the corresponding value
        private Node Find(int value, Node parent)
        {
            if (parent != null)
            {
                if (value == parent.item) return parent;
                if (value < parent.item)
                    return Find(value, parent.leftc);
                else
                    return Find(value, parent.rightc);
            }

            return null;
        }

        // Find Predecessor of defined value
        public int? Predecessor(int value)
        {
            Node current_node = this.Find(value, this.root);
            Node tempparent = this.root;
            if (current_node == null) return null;
            current_node = current_node.leftc;
            if (current_node != null)
            {
                while (current_node.rightc != null) current_node = current_node.rightc;
                return Convert.ToInt16(current_node.item);
            }
            else
            {
                return null;
            }
           
        }

        // Find Successor of defined value
        public int? Successor(int value)
        {
            Node current_node = this.Find(value, this.root);
            if (current_node == null) return null;
            current_node = current_node.rightc;
            if (current_node != null)
            {
                while (current_node.leftc != null) current_node = current_node.leftc;
                return Convert.ToInt16(current_node.item);
            }
            else
            {
                return null;
            } 
        }
    }

    // Main Program
    class Program
    {
        static void Main(string[] args)
        {
            Tree bTree = new Tree();
            string result;
            //Insert Test
            /*bTree.Insert(20);
            bTree.Insert(25);
            bTree.Insert(2);
            bTree.Insert(45);
            bTree.Insert(15);
            bTree.Insert(10);*/

            Console.WriteLine("Input 1 to 8:");
            while (true)
            {
                try //exception handling ; if input is anything other than an integer or of the options; it returns "Invalid Key Error"
                {
                    Console.WriteLine("[1] Insert node to binary tree\r\n[2] Delete node from binary tree\r\n[3] Minimum\r\n[4] Maximum\r\n[5] Successor\r\n[6] Predecessor\r\n[7] Search\r\n[8] Print BST");
                    int input_selection = Convert.ToInt16(Console.ReadLine());

                    int input_x = 0;
                    //Adding Value to Binary Tree
                    if (input_selection == 1)
                    {
                        Console.Write("Enter Value to be Added: ");
                        input_x = Convert.ToInt16(Console.ReadLine());
                        bTree.Insert(input_x);
                        result = Convert.ToString(input_x) + " inserted to Binary Tree";
                        Console.WriteLine(result);
                    }
                    //Delete Value from Binary Tree
                    else if (input_selection == 2)
                    {
                        Console.Write("Enter Value to be Deleted: ");
                        input_x = Convert.ToInt16(Console.ReadLine());
                        //If value is found then it deletes it; else it displays an error
                        if (bTree.Search(input_x) == true)
                        {
                            bTree.Delete(input_x);
                            result = Convert.ToString(input_x) + " Removed";
                        }
                        else
                        {
                            result = "Can not remove " + Convert.ToString(input_x) + " because it does not exists.";
                        }
                        Console.WriteLine(result);
                    }
                    //Get the lowerst value inserted in the binary tree
                    else if (input_selection == 3)
                    {
                        Console.WriteLine("Display Minimum Number");
                        result = "Minimum Value of the Tree is " + Convert.ToString(bTree.GetMin(bTree.ReturnRoot()));
                        Console.WriteLine(result);
                    }
                    //Get the highest value inserted in the binary tree
                    else if (input_selection == 4)
                    {
                        Console.WriteLine("Display Maximum Number");
                        result = "Maximum Value of the Tree is " + Convert.ToString(bTree.GetMax(bTree.ReturnRoot()));
                        Console.WriteLine(result);
                    }
                    //Search for the successor of the defined value
                    else if (input_selection == 5)
                    {
                        Console.WriteLine("Display Successor");
                        Console.Write("Enter Search Value:");
                        input_x = Convert.ToInt16(Console.ReadLine());
                        //if successor is not null null then it returns a value; otherwise it will not return a value
                        if (bTree.Successor(input_x) != null)
                        {
                            result = "Succesor of " + Convert.ToString(input_x) + " is " + Convert.ToString(bTree.Successor(input_x));
                        }
                        else
                        {
                            result = Convert.ToString(input_x) + " has no Successor";
                        }
                        Console.WriteLine(result);

                    }
                    //Search for the predecessor of the defined value
                    else if (input_selection == 6)
                    {
                        Console.Write("Enter Search Value:");
                        input_x = Convert.ToInt16(Console.ReadLine());
                        //if predecessor is not null null then it returns a value; otherwise it will not return a value
                        if (bTree.Predecessor(input_x) != null)
                        {
                            result = "Predecessor of " + Convert.ToString(input_x) + " is " + Convert.ToString(bTree.Predecessor(input_x));
                        }
                        else
                        {
                            result = Convert.ToString(input_x) + " has no Predecessor";
                        }
                        Console.WriteLine(result);


                    }
                    //Search for a defined value
                    else if (input_selection == 7)
                    {
                        Console.Write("Enter Search Value:");
                        input_x = Convert.ToInt16(Console.ReadLine());
                        //if value is found, it returns a value; otherwise it will display an error
                        result = bTree.Search(input_x) ? Convert.ToString(input_x) + " found in Binary Tree" : Convert.ToString(input_x) + " NOT found";
                        Console.WriteLine(result);
                    }
                    //print inorder list
                    else if (input_selection == 8)
                    {
                        Console.WriteLine("Inorder Traversal : ");
                        bTree.Inorder(bTree.ReturnRoot());
                    }
                    /*else if (input_selection == 9)
                    {
                        Console.WriteLine("Preorder Traversal : ");
                        bTree.Preorder(bTree.ReturnRoot());
                        Console.WriteLine("Postorder Traversal : ");
                        bTree.Postorder(bTree.ReturnRoot());
                    }*/
                    // Exit function; this for safetly exiting the program
                    else if (input_selection == 0)
                    {
                        Console.WriteLine("Exit");
                        break;
                    }
                    else
                    {
                        Console.WriteLine("Invalid Key");
                    }
                }
                catch (FormatException)
                {
                    Console.WriteLine("Option is unavailable. Please type numbers 1 to 8");
                }
                catch (OverflowException)
                {
                    Console.WriteLine("Invalid Key. Please type numbers 1 to 8");
                }

            }
            Environment.Exit(0);
        }
    }   
}