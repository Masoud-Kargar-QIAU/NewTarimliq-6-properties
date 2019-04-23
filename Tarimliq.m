function [ TarimliqValue ] = Tarimliq( GraphDependency , ClusterIndexIn,ClusterIndexOut)

Sin=SimilaritIn( GraphDependency,ClusterIndexIn );
Sout=SimilaritOut( GraphDependency,ClusterIndexIn,ClusterIndexOut);
TarimliqValue=Sin/(Sin+Sout);
if isnan(TarimliqValue)
    TarimliqValue=0;

end

