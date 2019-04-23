function [ SimOut ] = SimilaritOut( GraphDependency,ClusterIndexIn,ClusterIndexOut)
[~ , ClusterIndexInNumber]=size(ClusterIndexIn);
[~ , ClusterIndexOutNumber]=size(ClusterIndexOut);

SimOutMat=zeros(ClusterIndexInNumber,ClusterIndexOutNumber);
for i=1:ClusterIndexInNumber
    for j=i+1 : ClusterIndexOutNumber
        SimOutMat(i,j)=SimilarityBetweenArtifacts( GraphDependency ,ClusterIndexIn(i),ClusterIndexOut(j));
      
    end
end

SimOut=sum(SimOutMat(:))*2;

end