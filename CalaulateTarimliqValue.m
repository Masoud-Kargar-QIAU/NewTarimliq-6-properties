 
function [NewTarimliqValue ]=CalaulateTarimliqValue(GraphDependency,Cluster_label)

% recognize global Artifact
[ GlobalIndex ] = GlobalArtiFact( GraphDependency );

[c, ia, ic]=unique(Cluster_label);
ClusterNumber=max(c);
% remove global Artifact from clustering
Cluster_label(GlobalIndex)=ClusterNumber+1;

[~ ,ArtifactNumber]=size(Cluster_label);
MinCluster=ArtifactNumber;
MaxCluster=0;

matMsNew=zeros(1,ClusterNumber+1);
    for j=1:ClusterNumber+1
    ClusterIndexIn=find(Cluster_label==j);
    ClusterIndexOut=find(Cluster_label~=j);
    ClusterIndexIn=setdiff(ClusterIndexIn, GlobalIndex);
    ClusterIndexOut=setdiff(ClusterIndexOut, GlobalIndex);
   
    
    [~ ,ClusterNumber]=size(ClusterIndexIn);
    if (ClusterNumber>MaxCluster)
        MaxCluster=ClusterNumber;
    end
    if (ClusterNumber<MinCluster)
        MinCluster=ClusterNumber;
    end 
   
    matMsNew(j)= NewTarimliq( GraphDependency , ClusterIndexIn,ClusterIndexOut,Cluster_label);
   
     end
    NewTarimliqValue=sum(matMsNew(:))+(MaxCluster-MinCluster)/ArtifactNumber;

end


 








