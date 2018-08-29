house_elf(dobby).
witch(hermione).
witch(rita_skeeter).
witch('McGonagall').
wizard(harry).
magic(X):- house_elf(X).
magic(Y):- wizard(Y).
magic(X):- witch(X).
