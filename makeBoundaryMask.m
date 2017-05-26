function boundaryMask = makeBoundaryMask(mask)

mask = logical(mask);
mask = imfill(mask,'holes');
boundaryMask = logical(mask - bwmorph(mask,'erode',5));