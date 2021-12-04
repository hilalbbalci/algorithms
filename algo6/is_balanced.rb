def is_balanced(root)
  _is_balanced_(root) != -1
end

private def _is_balanced_(root)
  return  0 if root.nil?
  return -1 if (ldepth = _is_balanced_(root.left )) == -1
  return -1 if (rdepth = _is_balanced_(root.right)) == -1
  return -1 if (ldepth - rdepth).abs > 1
  return [ldepth, rdepth].max + 1
end