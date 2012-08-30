-module(even_fib).

-export([even_fib/1]).

even_fib(MaxValue) -> even_fib(1, 1, MaxValue, 0).

even_fib(_, Curr, Max, Acc) when Curr >= Max ->
    io:format("Sum is ~p~n", [Acc]);
even_fib(B, Curr, Max, Acc) ->
    case (Curr rem 2) of
        0 ->
            even_fib(Curr, Curr+B, Max, Acc + Curr);
        _ ->
            even_fib(Curr, Curr+B, Max, Acc)
    end.
