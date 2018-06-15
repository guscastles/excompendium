fn_add = fn (num, id) ->
           cond do
             num == id -> IO.inspect "Hit"
             true -> IO.inspect num
           end
         end

fn_add.(3, 1)
fn_add.(2, 1)
fn_add.(1, 1)
