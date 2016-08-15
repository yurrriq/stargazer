%%%-------------------------------------------------------------------
%% @doc stargazer public API
%% @end
%%%-------------------------------------------------------------------

-module(stargazer_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    stargazer_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
