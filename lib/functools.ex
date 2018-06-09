defmodule FuncTools do

  def currying(num_a), do: fn num_b -> fn num_c -> num_a * num_b / num_c end end

end
