
%choise GraphDependency and cluster label and run CalaulateTarimliqValue to calculate Tarmiliq and NewTarimliq
GraphDependency=[
[0  1  0  0  1 0 1 0]   
[0  0  1  0  0 1 0 0]   
[0  0  0  1  1 0 0 0]   
[0  0  0  0  0 1 0 0]   
[0  0  0  0  0 0 0 0]   
[0  0  0  0  0 0 0 0]   
[0  1  0  0  1 0 0 0]   
[0  0  1  0  0 1 0 0]   
];
Cluster_label0=[1  1  1  1 1  1  1  1];
Cluster_label1=[1  1  2  2 1  2  1  2];
Cluster_label2=[1  1  2  2 3  3  1  2];
Cluster_label3=[1  2  2  3 4  4  1  3];
Cluster_label4=[1  1  2  3 4  5  1  3];
[NewTarimliqValue ]=CalaulateTarimliqValue(GraphDependency,Cluster_label0)
[NewTarimliqValue ]=CalaulateTarimliqValue(GraphDependency,Cluster_label1)
[NewTarimliqValue ]=CalaulateTarimliqValue(GraphDependency,Cluster_label2)
[NewTarimliqValue ]=CalaulateTarimliqValue(GraphDependency,Cluster_label3)
[NewTarimliqValue ]=CalaulateTarimliqValue(GraphDependency,Cluster_label4)




