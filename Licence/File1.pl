% Author:
% Date: 11/1/2016

pere(binh, trung).
pere(trung, thang).
pere(dung, vy).
papy(X, Y):- pere(X, Z),
             pere(Z, Y).

mere_de(X, Y).
parent_de(X, Y):- pere(X, Y).
parent_de(X, Y):- mere_de(X, Y).