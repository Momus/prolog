
# Table of Contents

1.  [Findings](#orgf21d6e8)
2.  [Daily Steps.](#orgf96cee3)
    1.  [Day 1ish](#orgec2bb24)
3.  [<span class="underline">Learn Prolog NOW!</span> Notes](#orge2a2331)
    1.  [Chapter 1](#org7d4a1b4)
        1.  [Section 1.1](#orge1ce2c3)

Generated from README.org, so if you have org-mode, go read that.


<a id="orgf21d6e8"></a>

# Findings


<a id="orgf96cee3"></a>

# Daily Steps.


<a id="orgec2bb24"></a>

## Day 1ish

-   Read through [Prag Prog](https://pragprog.com/book/btlang/seven-languages-in-seven-weeks) Prolog chapter. Whet the apetitie.
-   Started this Prog Blog Log
-   Started <span class="underline">Learn Prolog NOW!</span> below.


<a id="orge2a2331"></a>

# <span class="underline">Learn Prolog NOW!</span> [Notes](http://www.learnprolognow.org/lpnpage.php?pagetype=html&pageid=lpn-htmlse1)


<a id="org7d4a1b4"></a>

## Chapter 1


<a id="orge1ce2c3"></a>

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
    -   The comma is a logical \`\`and''. Which makes sense, but is very subtle.
    -   A listing with multiple rules with the same head is
        expressing a logical disjuction.
        
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

