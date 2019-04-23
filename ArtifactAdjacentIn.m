function [ ArtifactAdjacentIn,ArtifactAdjacentNumber ] = ArtifactAdjacentIn (GraphDependency ,ArtifactNumber)


row_has_Not_zeros=(GraphDependency(:,ArtifactNumber)~=0);
ArtifactAdjacent=find(row_has_Not_zeros);

 ArtifactAdjacentIn=union(ArtifactNumber ,ArtifactAdjacent);
 [~ , ArtifactAdjacentNumber]=size(ArtifactAdjacent);
end
