clear G;
G = sparse(12,12);
G(2,1) = 38;
G(3,1) = 38;
G(5,1) = 24;
G(1,2) = 6;
G(3,2) = 41;
G(6,2) = 53;
G(1,3) = 47;
G(2,3) = 29;
G(4,3) = 24;
G(3,4) = 8;
G(5,4) = 42;
G(6,4) = 50;
G(1,5) = 9;
G(4,5) = 4;
G(6,5) = 9;
G(7,5) = 39;
G(12,5) = 39;
G(2,6) = 9;
G(4,6) = 28;
G(5,6) = 19;
G(6,6) = 22;
G(8,6) = 22;
G(5,7) = 13;
G(8,7) = 17;
G(9,7) = 23;
G(10,7) = 27;
G(12,7) = 20;
G(6,8) = 15;
G(7,8) = 21;
G(9,8) = 21;
G(10,8) = 10;
G(11,8) = 18;
G(12,8) = 15;
G(7,9) = 24;
G(8,9) = 24;
G(10,9) = 32;
G(11,9) = 20;
G(7,10) = 30;
G(8,10) = 40;
G(9,10) = 5;
G(11,10) = 25;
G(8,11) = 33;
G(9,11) = 7;
G(10,11) = 60;
G(5,12) = 6;
G(6,12) = 18;
G(7,12) = 47;
G(8,12) = 29;

G = G*0.01


PageRank(G,1);
