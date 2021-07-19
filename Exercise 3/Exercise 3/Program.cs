using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Exercise_3
{
    public class Graph
    {
        // initilize number of vertices
        private int vertices;
        // initiliaze if directed or not directed; true or false
        private bool directed;
        // initiliaze link list to store 
        public LinkedList<int>[] graph_nodes;
        // create adjacency matrix
        private int [,] adjmax;
        //initialize array element
        private string[] array_elements;

        // construct graph
        public Graph(int no_of_vert, bool dir)
        {
            // define new linked list 
            graph_nodes = new LinkedList<int>[no_of_vert];
            //linking boolean function and vertices to initialized value
            this.directed = dir;
            this.vertices = no_of_vert;
            //defining dimesions of adjaceny matrix
            int rows, columns;
            int index;

            adjmax = new int[no_of_vert, no_of_vert];

            // Create adjacency matrix and efine them as zero
            for (rows = 0; rows < no_of_vert; ++rows)
            {
                for (columns = 0; columns < no_of_vert; ++columns)
                {
                    adjmax[rows, columns] = 0;
                }
            }

            // defining index for linked list
            for (index = 0; index < no_of_vert; index++)
            {
                graph_nodes[index] = new LinkedList<int>();
            }

            // initializing array for input
            array_elements = new string[no_of_vert];
        }

        public void addElement (int a, string data)
        {
            if (a >= vertices)
            {
                Console.WriteLine("Error: Vertex exceeds graph's dimensions");
            }
            else
            {
                array_elements[a] = data;
            }
        }

        //connect edges in function; x is for row number and y is for column number; d is for data string
        public void addEdge(string from, string to)
        {
            int x = Array.IndexOf(array_elements, from);
            int y = Array.IndexOf(array_elements, to);

            // checks if the vertex exists in the graph
            if ((x >= vertices || x < 0) || (y > vertices || y < 0))
            {
                Console.WriteLine("Error: Cannot find vertex " + from + " and " + to + ".");
            }

            // checks if the vertex is connecting to itself
            if (x == y)
            {
                Console.WriteLine("Error: you will be overriding the same vertex.");
            }
            else
            {
                // if directed is true, then it will only put 1 data on it; other wise it will be bidirected to each vertex
                if (directed == true)
                {
                    //editing adjacency matrix
                    adjmax[x, y] = 1;
                    graph_nodes[x].AddLast(y);
                }
                else
                {
                    // connecting the vertices on both direction if not connected for adjacency matrix
                    adjmax[y, x] = 1;
                    adjmax[x, y] = 1;

                    // connects them bidirectionally
                    graph_nodes[x].AddLast(y);
                    graph_nodes[y].AddLast(x);

                }

            }
        }

        public void printLinkList()
        {
            for (int i = 0; i < vertices; i++)
            {
                Console.WriteLine("\nAdjacency list of vertex " + array_elements[i]);
                Console.Write(array_elements[i]);

                foreach (int item in graph_nodes[i])
                {

                    Console.Write(" -> " + array_elements[item]);
                }
                Console.WriteLine();
            }
        }

        public void displayAdjacencyMatrix()
        {
            Console.Write("\n\n Adjacency Matrix:");
            Console.WriteLine("Number of nodes: {0}\n", vertices - 1);
            Console.Write("{0}\t","[ ]");
            for (int q = 0; q < vertices; ++q)
            {
                if (q == 0)
                {
                    Console.Write("{0}\t", "[" + array_elements[q] + "]");
                }
                else
                {
                    Console.Write("{0}\t", "[" + array_elements[q] + "]");
                }
            }
            // displaying the 2D array
            for (int i = 0; i < vertices; ++i)
            {
                Console.Write("\r\n{0}\t", "[" + array_elements[i] + "]");
                for (int j = 0; j < vertices; ++j)
                {
                    Console.Write("{0}\t", adjmax[i, j]);
                }
            }
            Console.WriteLine();
            Console.WriteLine("Read the graph from left to right");
            //Console.WriteLine("Example: Node A has an edge to Node C with distance: {0}");
        }
        // Breath First Search Function using Stacks and outputing correct variables
        public void BreathFirstSearch(string find_var)
        {
            int find_val = Array.IndexOf(array_elements, find_var);
            bool[] visited = new bool[vertices];

            //create queue for BFS
            Queue<int> queue = new Queue<int>();
            visited[find_val] = true;
            queue.Enqueue(find_val);

            Console.WriteLine("Final Order for Breath First Search:");
            //loop through all nodes in queue
            while (queue.Count != 0)
            {
                //Deque a vertex from queue and print it.
                find_val = queue.Dequeue();
                Console.Write(array_elements[find_val] + " ");

                //Get all adjacent vertices of s
                foreach (Int32 next in graph_nodes[find_val])
                {
                    if (!visited[next])
                    {
                        visited[next] = true;
                        queue.Enqueue(next);
                    }
                }

            }
            Console.WriteLine();
        }
        // Depth First Search Function using Stacks and outputing correct variables
        public void DepthFirstSearch(string find_var)
        {
            int find_val = Array.IndexOf(array_elements, find_var);
            bool[] visited = new bool[vertices];

            //For DFS use stack
            Stack<int> stack = new Stack<int>();
            visited[find_val] = true;
            stack.Push(find_val);
            Console.WriteLine("Final Order for Depth First Search:");
            while (stack.Count != 0)
            {
                find_val = stack.Pop();
                Console.Write(array_elements[find_val] + " ");
                foreach (int i in graph_nodes[find_val])
                {
                    if (!visited[i])
                    {
                        visited[i] = true;
                        stack.Push(i);
                    }
                }
            }
            Console.WriteLine();
        }

}

    class Program
    {
        static void Main(string[] args)
        {
            // Initializing graphs

            //Creating Graph A, directed graph
            string[] graphA = { "A", "B", "C", "D", "E", "F", "G"};
            Graph objA = new Graph(graphA.Length, true);
            int i = 0;
            foreach (string elementA in graphA)
            {objA.addElement(i, elementA); i++;}

            // add edges to Graph A
            objA.addEdge("A", "B"); // A --> B
            objA.addEdge("B", "C"); // B --> C
            objA.addEdge("B", "E"); // B --> E
            objA.addEdge("C", "A"); // C --> A
            objA.addEdge("C", "D"); // C --> D
            objA.addEdge("C", "G"); // C --> G
            objA.addEdge("D", "A"); // D --> A
            objA.addEdge("E", "C"); // E --> C
            objA.addEdge("E", "F"); // E --> F
            objA.addEdge("F", "G"); // F --> G

            //Creating Graph B
            string[] graphB = { "0", "1", "2", "3", "4", "5"};
            Graph objB = new Graph(graphB.Length, true);
            int j = 0;
            foreach (string elementB in graphB)
            { objB.addElement(j, elementB); j++;}

            // add edges to Graph A
            objB.addEdge("0", "1");  // 0 --> 1
            objB.addEdge("1", "2"); //  1 --> 2
            objB.addEdge("1", "5"); // 1 ---> 5
            objB.addEdge("2", "3"); // 2 -->3
            objB.addEdge("2", "4"); // 2 --> 4
            objB.addEdge("4", "5"); // 4 ---> 5
            
            
            while (true)
            {
                try //exception handling ; if input is anything other than an integer or of the options; it returns "Invalid Key Error"
                {
                    Console.WriteLine("[1] Perform Depth First Traversal\r\n[2] Perform Breadth Fist Traversal\r\n[3] Search Graph 1(DFS)\r\n[4] Search Graph 2(BFS) \r\n[5] Exit");
                    int input_selection = Convert.ToInt16(Console.ReadLine());

                    int input_x;
                    string input_y;
                    //DFS on either Graph 1 or Graph 2
                    if (input_selection == 1)
                    {
                        Console.WriteLine("Which Graph do you want to traverse with DFS? Graph [1] for graph 1 and Graph [2] for graph 2.");
                        input_x = Convert.ToInt16(Console.ReadLine());
                        if (input_x == 1)
                        {
                            objA.DepthFirstSearch("A");
                        }
                        else if (input_x == 2)
                        {
                            objB.DepthFirstSearch("0");
                        }
                        else
                        {
                            Console.WriteLine("Not a valid choice. Please choose either Graph 1 or 2.");
                        }
                    }
                    //BFS on either Graph 1 or Graph 2
                    else if (input_selection == 2)
                    {
                        Console.WriteLine("Which Graph do you want to traverse with BFS? Graph [1] for graph 1 and Graph [2] for graph 2.");
                        input_x = Convert.ToInt16(Console.ReadLine());
                        if (input_x == 1)
                        {
                            objA.BreathFirstSearch("A");
                        }
                        else if (input_x == 2)
                        {
                            objB.BreathFirstSearch("0");
                        }
                        else
                        {
                            Console.WriteLine("Not a valid choice. Please choose either Graph 1 or 2.");
                        }
                    }
                    //Graph 1. DFS on chose n vertex
                    else if (input_selection == 3)
                    {

                        Console.WriteLine("Graph 1. Which vertex do you want to start with?");
                        input_y = Convert.ToString(Console.ReadLine());

                        int check = Array.IndexOf(graphA, input_y);
                        if (check < 0)
                        {
                            Console.WriteLine("Can not find vertext " + input_y + ". Please input a valid one");
                        } else
                        {
                            objA.DepthFirstSearch(input_y);
                        }
                    }
                    else if (input_selection == 4)
                    {

                        Console.WriteLine("Graph 2. Which vertex do you want to start with?");
                        input_y = Convert.ToString(Console.ReadLine());

                        int check = Array.IndexOf(graphB, input_y);
                        if (check < 0)
                        {
                            Console.WriteLine("Can not find vertext " + input_y + ". Please input a valid one");
                        }
                        else
                        {
                            objB.BreathFirstSearch(input_y);
                        }
                    }
                    //Search for the successor of the defined value
                    else if (input_selection == 5)
                    {
                        Console.WriteLine("Exit");
                        break;

                    }
                    //Print Both Adjacency Matrix and Linked List Impelementation
                    //For checking purposes
                    else if (input_selection == 6)
                    {
                        Console.WriteLine("-----------------------------------------------------Graph 1 Start -----------------------------------------------------");
                        Console.WriteLine("Graph 1");
                        objA.printLinkList();
                        objA.displayAdjacencyMatrix();
                        Console.WriteLine("--------------------------------------------------- Graph 1 End ------------------------------------------------------");

                        Console.WriteLine("---------------------------------------------------- Graph 2 Start ----------------------------------------------------");
                        Console.WriteLine("Graph 2");
                        objB.printLinkList();
                        objB.displayAdjacencyMatrix();
                        Console.WriteLine("-------------------------------------------------- Graph 2 End -------------------------------------------------------");
                    }
                    else
                    {
                        Console.WriteLine("Option is unavailable. Please type numbers 1 to 5");
                    }

                }
                catch (FormatException)
                {
                    Console.WriteLine("Option is unavailable. Please type numbers 1 to 5");
                }
                catch (OverflowException)
                {
                    Console.WriteLine("Invalid Key. Please type numbers 1 to 5");
                }

            }
            Environment.Exit(0);
        }
    }
 }

