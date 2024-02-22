# Blame

`git blame` accepts a series of parameters that avoid blaming people that only moved or renamed code or that only added whitespace or comments.

`git blame -w -C -C -C`

Each `-C` removes a different thing, so you can see at a very different blame output depending on the parameters you pass.

Sometimes the coder that appears on a plain `git blame` is just someone that moved code around, but didn't actually coded the lines.
