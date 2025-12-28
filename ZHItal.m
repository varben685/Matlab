% 1) ivás: sorrend számít, ismétlés nincs -> variáció
drinkWays = prod(14:-1:12);      % 14*13*12

% 2) ajándék: 11 marad, sorrend nem számít -> kombináció
giftWays  = nchoosek(11,3);      % 11 alatt 3

drinkWays
giftWays
