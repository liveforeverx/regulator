defmodule Regulator.Limit do
  @moduledoc """
  Provides a behaviour for defining new limit algorithms
  """

  @doc """
  Creates a new limit configuration.
  """
  @callback new(term()) :: term()

  @doc """
  The initial limit.
  """
  @callback initial(term()) :: pos_integer()

  @doc """
  Recalculates the new limit based on the previous limit, the most
  recent window, and the configuration for the limit. Must return the
  limit configuration with the new limit in a tuple.
  """
  @callback update(term(), pos_integer(), Regulator.Window.t()) :: {term(), pos_integer()}
end
