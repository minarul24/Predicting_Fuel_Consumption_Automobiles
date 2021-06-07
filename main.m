load('D_mpg')

%codes taken fron the lab manual
y = D_mpg(7,:)';
M = length(y);
P = 314;
T = M - P;
X = D_mpg(1:6,:);
Xh = [X; ones(1,M)];

% initializing the training X
Xh_tr = Xh(:,1:P);
y_tr = y(1:P);

%initializing the testing X
Xh_te = Xh(:,P+1:M);
y_te = y(P+1:M);

%optimal parameter
w = (Xh_tr*Xh_tr')\(Xh_tr*y_tr)

% applying the optimized model
y1 = Xh_tr' * w;
y2 = Xh_te' * w;

% root-mean squared error: training
RMSE_tr = sqrt(sum((y1-y_tr).^2)/P)

% root-mean squared error: testing
RMSE_te = sqrt(sum((y2-y_te).^2)/T)


