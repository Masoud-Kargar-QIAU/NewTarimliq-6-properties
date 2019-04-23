function [ ArtifactAdjacentOut,ArtifactAdjacentNumber ] = ArtifactAdjacentOut (GraphDependency ,ArtifactNumber)


row_has_Not_zeros=(GraphDependency(ArtifactNumber,:)~=0);
ArtifactAdjacent=find(row_has_Not_zeros);

 ArtifactAdjacentOut=union(ArtifactNumber ,ArtifactAdjacent);
 [~ , ArtifactAdjacentNumber]=size(ArtifactAdjacent);
end