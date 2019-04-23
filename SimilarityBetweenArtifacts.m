function [ DisSimBetweenArtifacts ] = DisSimilarityBetweenArtifacts( GraphDependency ,ArtifactNumber1,ArtifactNumber2)
%%wieghted undirected
[ArtifactAdjacent1,ArtifactAdjacentNumber1]=ArtifactAdjacent (GraphDependency ,ArtifactNumber1);
[ArtifactAdjacent2,ArtifactAdjacentNumber2]=ArtifactAdjacent (GraphDependency ,ArtifactNumber2);

IntersectArtifactAdjacent=intersect(ArtifactAdjacent1,ArtifactAdjacent2);
[~ , ArtifactAdjacentNumber]=size(IntersectArtifactAdjacent);

s1=GraphDependency(ArtifactAdjacent1,IntersectArtifactAdjacent);
s2=GraphDependency(IntersectArtifactAdjacent,ArtifactAdjacent2);
SS=s1*s2;
%SS=GraphDependency(ArtifactAdjacent1,IntersectArtifactAdjacent)*GraphDependency(IntersectArtifactAdjacent,ArtifactAdjacent2);
SS1=sum(SS(:));

PP=GraphDependency(ArtifactNumber1,ArtifactAdjacent1);
PP=PP.^2;
PPS=sum(PP(:));
PP1=sqrt(PPS);

QQ=GraphDependency(ArtifactNumber2,ArtifactAdjacent2);
QQ=QQ.^2;
QQS=sum(QQ(:));
QQ1=sqrt(QQS);

SimBetweenArtifacts=SS1/PP1+QQ1;
end

