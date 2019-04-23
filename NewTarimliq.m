function [ TarimliqValue ] = NewTarimliq( GraphDependency , ClusterIndexIn,ClusterIndexOut,Cluster_label)

[~ ,ArtifactNumber]=size(Cluster_label);
[~ ,ClusterNumber]=size(ClusterIndexIn);
DisSin=DisSimilaritIn( GraphDependency,ClusterIndexIn );
DisSout=DisSimilaritOut( GraphDependency,ClusterIndexIn,ClusterIndexOut);
TarimliqValue=(1-DisSin/(DisSin+DisSout))+(ClusterNumber-1)/ArtifactNumber;
if isnan(TarimliqValue)
    TarimliqValue=0;

end

