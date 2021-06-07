load('D_mpg')

y = D_mpg(7,:)';
M = length(y);
P = 314;
T = M - P;
X = D_mpg(1:6,:);
Xh = [X; ones(1,M)];
Xh_tr = Xh(:,1:P);
y_tr = y(1:P);

Xh_te = Xh(:,P+1:M);
y_te = y(P+1:M);

