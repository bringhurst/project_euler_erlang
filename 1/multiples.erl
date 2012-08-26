-module(multiples).
-export([find_multiples/1]).

find_multiples(0) -> 0;
find_multiples(X) when (X rem 3 =:= 0) or (X rem 5 =:= 0) ->
    X + find_multiples(X - 1);
find_multiples(X) -> find_multiples(X - 1).
