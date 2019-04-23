function [ Power2Value ] = Power2( GraphDependency,ArtifactNumber1,ArtifactNumber2 )
[ArtifactAdjacent1,ArtifactAdjacentNumber1]=ArtifactAdjacent (GraphDependency ,ArtifactNumber1);
[ArtifactAdjacent2,ArtifactAdjacentNumber2]=ArtifactAdjacent (GraphDependency ,ArtifactNumber2);

IntersectArtifactAdjacent=intersect(ArtifactAdjacent1,ArtifactAdjacent2);
[~ , ArtifactAdjacentNumber]=size(IntersectArtifactAdjacent);

s1=GraphDependency(ArtifactAdjacent1,IntersectArtifactAdjacent);
s2=GraphDependency(IntersectArtifactAdjacent,ArtifactAdjacent2);
SS=s1*s2;
%SS=GraphDependency(ArtifactAdjacent1,IntersectArtifactAdjacent)*GraphDependency(IntersectArtifactAdjacent,ArtifactAdjacent2);
Power2Value=sum(SS(:));


end

