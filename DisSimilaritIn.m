function [ DisSimIn ] = DisSimilaritIn( GraphDependency,ClusterIndexIn )
[~ , ClusterIndexNumber]=size(ClusterIndexIn);
DisSimInMat=zeros(ClusterIndexNumber,ClusterIndexNumber);
for i=1:ClusterIndexNumber
    for j=i+1 : ClusterIndexNumber
        DisSimInMat(i,j)=DisSimilarityBetweenArtifacts( GraphDependency ,ClusterIndexIn(i),ClusterIndexIn(j));
   %     DisSimInMat(j,i)=DisSimInMat(i,j);
    end
end

DisSimIn=sum(DisSimInMat(:));

end

