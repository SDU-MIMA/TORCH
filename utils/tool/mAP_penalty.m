function map = mAP_penalty(ids, Lbase, Lquery, param)

nquery = size(ids, 2);
APx = zeros(nquery, 1);
R = size(ids,1); % Configurable

for i = 1 : nquery
    label = Lquery(i, :);
    label(label == 0) = -1;
    idx = ids(:, i);
    A = bsxfun(@eq, Lbase(idx(1:R), :), label);
    imatch = sum(bsxfun(@eq, Lbase(idx(1:R), (param.num_class1+1):end), label(:,(param.num_class1+1):end)), 2) > 0;
    LX = sum(imatch);
    Lx = cumsum(imatch);
    Px = Lx ./ (1:R)';
    if LX ~= 0
        APx(i) = sum(Px .* imatch) / LX;
    end
    
    imatch1 = sum(bsxfun(@eq, Lbase(idx(1:R),1:param.num_class1), label(:,1:param.num_class1)), 2) > 0;
    temp = imatch + imatch1;
    temp = (temp==0);
    imatch1 = temp;
    
    LX1 = sum(imatch1);
    Lx1 = cumsum(imatch1);
    Px1 = Lx1 ./ (1:R)';
    if LX1 ~= 0
        APx(i) = APx(i) - (sum(Px1 .* imatch1) / LX1);
    end

end
map = mean(APx);

end
