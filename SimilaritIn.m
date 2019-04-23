function [ SimIn ] = SimilaritIn( GraphDependency,ClusterIndexIn )
[~ , ClusterIndexNumber]=size(ClusterIndexIn);
SimInMat=zeros(ClusterIndexNumber,ClusterIndexNumber);
for i=1:ClusterIndexNumber
    for j=i+1 : ClusterIndexNumber
        SimInMat(i,j)=SimilarityBetweenArtifacts( GraphDependency ,ClusterIndexIn(i),ClusterIndexIn(j));
        SimInMat(j,i)=SimInMat(i,j);
    end
end

SimIn=sum(SimInMat(:));

end

