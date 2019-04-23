function [ Power1Value ] = Power1( GraphDependency,ArtifactNumber )

[ ArtifactAdjacentIn,ArtifactAdjacentNumber ] = ArtifactAdjacent (GraphDependency ,ArtifactNumber);

DS=GraphDependency(ArtifactNumber,ArtifactAdjacentIn);

Power1Value=sum(DS(:));
end

