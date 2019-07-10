%%==============================================================================
%% Test basic usage of the proper_contrib_statem module
%%==============================================================================
-module(prop_statem).

%% Behaviour
-behaviour(proper_statem).

%%==============================================================================
%% Includes
%%==============================================================================
-include_lib("proper/include/proper.hrl").
-include_lib("stdlib/include/assert.hrl").

-include("proper_contrib_statem.hrl").

%%==============================================================================
%% Compile directives
%%==============================================================================
-compile(export_all).
-compile(nowarn_export_all).

%%==============================================================================
%% A Sample Property
%%==============================================================================
prop_sample() ->
  proper_contrib_statem:run(?MODULE).

%%==============================================================================
%% Initial State
%%==============================================================================
initial_state() ->
  #{flag => true}.

%%==============================================================================
%% Commands Weights
%%==============================================================================
weight(_State, _CmdName) ->
  1.

%%==============================================================================
%% One API
%%==============================================================================
one_pre(_S, _Args) ->
  true.

one() ->
  ok.

one_args(_S) ->
  [].

one_next(S, _Res, []) ->
  S.

one_post(_S, [], _Res) ->
  true.

%%==============================================================================
%% Two API
%%==============================================================================
two_pre(_S, _Args) ->
  true.

two() ->
  ok.

two_args(_S) ->
  [].

two_next(S, _Res, []) ->
  S.

two_post(_S, [], _Res) ->
  true.
