# Find the first `:ok` result

Suppose you have several functions and want to know what's the first one with an `:ok` result:

```elixir
with false <- fun_one(arg),
  false <- fun_two(arg),
  false <- fun_tre(arg) do
    false
else
  {:ok, result} -> result
end
```
