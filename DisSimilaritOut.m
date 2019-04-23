function [ DisSimOut ] = DisSimilaritOut( GraphDependency,ClusterIndexIn,ClusterIndexOut)
[~ , ClusterIndexInNumber]=size(ClusterIndexIn);
[~ , ClusterIndexOutNumber]=size(ClusterIndexOut);

DisSimOutMat=zeros(ClusterIndexInNumber,ClusterIndexOutNumber);
for i=1:ClusterIndexInNumber
    for j=i+1 : ClusterIndexOutNumber
        DisSimOutMat(i,j)=DisSimilarityBetweenArtifacts( GraphDependency ,ClusterIndexIn(i),ClusterIndexOut(j));
      
    end
end

DisSimOut=sum(DisSimOutMat(:));

end