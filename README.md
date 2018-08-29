
# Table of Contents

1.  [Findings](#org1e41215)
2.  [Daily Steps.](#org12f69bf)
    1.  [Day 2: Straight intp Prolog NOW!](#org1bd8071)
    2.  [Day 1ish](#orga21ae9e)
3.  [<span class="underline">Learn Prolog NOW!</span> Notes](#org9e2e894)
    1.  [Chapter 1](#orgd9bd5a9)
        1.  [Section 1.1](#org11c69d6)
        2.  [Section 1.2 Prolog Syntax](#org7345473)
        3.  [Section 1.3 Exercises](#orgaacc822)
        4.  [Section 1.4 Practical Session](#org4b5e68e)
    2.  [Chapter 2](#orge525694)
        1.  [Unification](#org469cb83)
        2.  [Exercises](#org418aad0)
        3.  [Practical Session](#org4b72a89)

Generated from README.org, so if you have org-mode, go read that.


<a id="org1e41215"></a>

# Findings


<a id="org12f69bf"></a>

# Daily Steps.


<a id="org1bd8071"></a>

## Day 2: Straight intp Prolog NOW!


<a id="orga21ae9e"></a>

## Day 1ish

-   Read through [Prag Prog](https://pragprog.com/book/btlang/seven-languages-in-seven-weeks) Prolog chapter. Whet the apetitie.
-   Started this Prog Blog Log
-   Started <span class="underline">Learn Prolog NOW!</span> below.


<a id="org9e2e894"></a>

# <span class="underline">Learn Prolog NOW!</span> [Notes](http://www.learnprolognow.org/lpnpage.php?pagetype=html&pageid=lpn-htmlse1)


<a id="orgd9bd5a9"></a>

## Chapter 1


<a id="org11c69d6"></a>

### Section 1.1

Only three basic constructs in Prolog:

-   facts
-   rules
-   queries

A collection of facts and rules is called a **knowlage base** or **data base**
Prolog is run by posing queries over the knowlage base.

1.  Weirdness

    -   The operator \(:-\) is like a backwards if-then clause.  \(A :-
                  B\) means if \(B\) obtains then \(A\) must be true.
    -   The comma is a logical \`\`and.'' Makes sense, but is very subtle.
    -   Listing with multiple rules with the same head is expressing
        a logical disjuction.
        
            playsAirGuitar(butch):-
                happy(butch).
            playsAirGuitar(butch):-
                listens2Music(butch).
        
        means Butch plays the air guitar when he's happy OR he's
        listening to music. Or a semicolon is a simpler way of
        saying the same thing:
        
            playsAirGuitar(butch):-
                happy(butch);
                listens2Music(butch).
    -   Any word beginning with a capital letter is a variable.


<a id="org7345473"></a>

### Section 1.2 Prolog Syntax

1.  Atoms

    1.  Charecter string beginning with a lower-case letter, can
        include underscore charecter, but must start with a
        lowercase letter.
    2.  A sequence of charecters enclosed in quotes. This sequene
        is called the "atom name." Can have spaces, which, indeed
        is the point of the quotation marks.
    3.  A string of special charecters. \(\;\)  \(:-\) and \(@=\) and \(=====>\)
        are all atoms, but some of these atoms have predefined meaning.

2.  Numbers

    Prolog has both floating point numbers and Integers, but cares
    very little about them.  Integers will be talked about again
    in this book as they count things, floating points are already forgotten.

3.  Variables

    -   Start with an upper-case letter or an underscrore, followed
        by a string of alpha-numeric charecters and underscores.
    -   \(_\) &#x2014; the single underscore charecter &#x2014; is called \`\`the
        empty variable,'' and is special.

4.  Complex Terms

    -   Functor + sequence of arguments.
        -   Arguments are in enclosed in parentheses, separated by commas.
        -   Functor must be an atom, arguments can be any kind of term
        -   Complex terms can have other complex terms nested (aka
            <span class="underline">recursivelly structured</span> inside them:
            
                hide(X, father(father(father(father(butch)))))
        -   Number of arguments is called the <span class="underline">arity</span>
        -   Predicates are refered to in documentation with
            name/arity:
            listens2Music/1
            love/2 and love/3 are distinct.


<a id="orgaacc822"></a>

### Section 1.3 Exercises

1.  1.1 Which are atoms, which are variables, which are niether?

    -   **vINCENT:** atom
    -   **Footmassage:** variable
    -   **variable23:** atom
    -   **Variable2000:** variable
    -   **big<sub>kahuna</sub><sub>burger</sub>:** atom
    -   **'big kahuma burger':** atom
    -   **'Jules':** atom
    -   **\_Jules:** variable
    -   **'<sub>Jules</sub>':** atom

2.  1.2  Which are atoms, variables, complex terms, and which are not terms at all?

    -   **loves(Vincent, mia):** loves/2
    -   **'loves(Vincent, mia)':** atom
    -   **Butch(boxer):** &#x2013;not a term.  Functor must be an atom.
    -   **boxer(Butch):** boxer/1
    -   **and(big(burger),kahuna(burger)):** and/2
    -   **\_and(big(X), kahuna(X)):** &#x2013;not a term.  Functor must be an atom.
    -   **(Butch kills Vincent):** &#x2014;not a term. Functor must be
        immedietly followed by parentheses enclosing arguments.
    -   **kills(Butch, Vincent):** kills/2
    -   **kills(Butch, Vincent:** &#x2014;not a term. Missing closing parentesis.

3.  1.3 How many facts, rules, clauses, and predicates are there in this knowledge base?

    What are the heads of the rules, and what are the goals they
    contain?
    
        woman(vincent).
        woman(mia).
        man(jules).
        person(X):-  man(X);  woman(X).
        loves(X,Y):-  father(X,Y).
        father(Y,Z):-  man(Y),  son(Z,Y).
        father(Y,Z):-  man(Y),  daughter(Z,Y).
    
    -   **Facts:** 3
    -   **Rules:** 4
        -   **heads:** 3 distinct with their goals:
            -   **person/1:** 2 goals:
                -   man/1
                -   woman/1
            -   **loves/2:** 1 goal
                -   father/2
            -   **father/2:** 2 goals
                -   man/1
                -   son/2
            -   **father/2:** 2 goals
                -   man/1
                -   daughter/2

4.  1.4 Represent the following in Prolog

    -   **Butch is a killer.:** killer(butch).
    -   **Mia and Marsellus are married. :** married(mia, marsellus).
    -   **Zed is dead.:** dead(zed).
    -   **Marsellus kills everyone who gives Mia a footmassage.:** gives<sub>footmassage</sub>(X, mia) :- kills(marsellus, X).
    -   **Mia loves everyone who is a good dancer. :** good<sub>dancer</sub>(X)
        :- loves(mia, X).
    -   **Jules eats anything that is nutritious or tasty. :** eats(jules) :- tasty(X) ; nutritious(X)

5.  How does Prolog respond to the following queries, given the knowlage base:

        wizard(ron).
        hasWand(harry).
        quidditchPlayer(harry).
        wizard(X):-  hasBroom(X),  hasWand(X).
        hasBroom(X):-  quidditchPlayer(X).
    
    -   **wizard(ron).:** true ; false.
    -   **witch(ron).:** ERROR: Undefined procedure: witch/1
    -   **quidditchPlayer(harry).:** true.
    -   **wizard(harry).:** true.
    -   **wizard(Y).:** Y = ron ; Y = harry.
    -   **witch(Y).:** ERROR: Undefined procedure: witch/1


<a id="org4b5e68e"></a>

### Section 1.4 Practical Session

Practice with Prolog!
\(listing(something)\) gets you more info on that
something. Just \(?-listing\) gets you a whole bunch of stuff on
swi-pl it seems.


<a id="orge525694"></a>

## Chapter 2


<a id="org469cb83"></a>

### Unification

<div class="QUOTATION">
Two terms unify if they are the same term or if they contain
variables that can be uniformly instantiated with terms in such
a way that the resulting terms are equal.

</div>

-   **atoms:** unify when they are the same: \(a = a\) and \(a = 'a'\)
    but \('b' = "b"\) returns false in  SWI-Prolog.
-   **numbers:** same as atoms: \(42 = 42\) but not \('2' = 2\)
-   **complex terms:** \(prop("subject") = prop("subject")\) is true,
    but, \(prop("subject") = prop("object")\)
    is not.
-   **variables:** unify with anything that can be instantiated.
    \(X = a, X = b\) is false.
-   **complex terms:** \(k(s(g), Y) k(X,t(k))\)
    
        ?- k(s(g),Y) = k(X,t(k)).
        Y = t(k),
        X = s(g).

1.  Occurs check

    \(father(X)  =  X\) works in Prolog. \(X = father(X),  Y =
            father(Y),  X  =  Y\) can crash some systems, but not SWI!
    because Prolog doesn't check if the variable occurs in the
    term being unified, so a recursive unification is possible,
    though it seems to be discouraged. \(unify_with_occurs_check/2\)
    exists if there's a danger.

2.  Programming with unification

        vertical(line(point(X, Y), point(X, Z))).
        horizontal(line(point(X,Y), point(Z,Y))).
    
    horizontal(line(point(4,A), point(2,4))).
    A = 4.
    
    ?- horizontal(line(point(24,31),Q)).
    Q = point(<sub>3876</sub>, 31).


<a id="org418aad0"></a>

### Exercises

1.  2.2

        house_elf(dobby).
        witch(hermione).
        witch(rita_skeeter).
        witch('McGonagall').
        wizard(harry).
        magic(X):- house_elf(X).
        magic(Y):- wizard(Y).
        magic(X):- witch(X).
    
    So, if you do this exercise, and omit the \`wizard(harry).\`
    line as in the book, swi-prolog will throw unpleasant errors,
    specifically \`\`Undefined procedure: wizard/1'' at you until
    you put it back.
    
    -   **?- magic(house<sub>elf</sub>).:** Generates an "Undefined procedure:
        wizard/1" error
    -   **?- witch(hermione).:** true (from KB)
    -   **?- wizard(harry):** true
    -   **magic(wizard):** \`\`Undefined procedure: wizard/1''
    -   **magic('McGonagall'):** true

2.  Ex. 2.3 Tiny lexicon, a mini grammar, with one syntactic rule:

        word(determiner, a).
        word(determiner, every).
        word(noun, criminal).
        word(noun, 'big kahuna burger').
        word(verb, eats).
        word(verb, likes).
        
        sentence(Word1, Word2, Word3, Word4, Word5):-
            word(determiner, Word1),
            word(noun, Word2),
            word(verb, Word3),
            word(determiner, Word4),
            word(noun, Word5).
    
    Query: sentence(X1, X2, X3, X4, X5).
    First response: 
    
        X1 = X4, X4 =a,
        X2 = X5 =, X5 = criminal,
        X3 = eats
    
    Thus: \`\`A criminal eats a criminal.''

3.  Ex. 2.4

    Knowledge base represents a lexicon containing six Italian
    words:,
    
        word(astante,  a,s,t,a,n,t,e).
        word(astoria,  a,s,t,o,r,i,a).
        word(baratto,  b,a,r,a,t,t,o).
        word(cobalto,  c,o,b,a,l,t,o).
        word(pistola,  p,i,s,t,o,l,a).
        word(statale,  s,t,a,t,a,l,e). 
    
    Write a predicate, crossword/6 telling how to fill in the
    grid.  First three arguments should be the vertical words,
    from left to right, the last three horizontal words from top
    to bottom.
    
        crossword(V1, V2, V3, H1, H2, H3):-
            word(V1, V1C1, V1H1, V1C3, V1H2, V1C5, V1H3, V1C7),
            word(V2, V2C1, V2H1, V2C3, V2H2, V2C5, V2H3, V2C7),
            word(V3, V3C1, V3H1, V3C3, V3H2, V3C5, V3H3, V3C7),
            word(H1, H1C1, V1H1, H1C3, V2H1, H1C5, V3H1, H1C7),
            word(H2, H2C1, V1H2, H2C3, V2H2, H2C5, V3H2, H2C7),
            word(H3, H3C1, V1H3, H3C3, V2H3, H3C5, V3H3, H3C7).


<a id="org4b72a89"></a>

### Practical Session

1.  KB

        f(a).
        f(b).
        
        g(a).
        g(b).
        
        h(b).
        
        k(X):-
            f(X),
            g(X),
            h(X).
    
    use trace/0 to run through the execution of the query
    \(k(X)\). It's kinda cool. Add a term to the database using
    assert/1 and see the effect on execution.

