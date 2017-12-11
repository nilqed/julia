# This file is a part of Julia. License is MIT: https://julialang.org/license

__precompile__(true)

module Unicode

import Base.UTF8proc: normalize_string, graphemes, is_assigned_char, textwidth, isvalid,
                      islower, isupper, isalpha, isdigit, isxdigit, isnumber, isalnum,
                      iscntrl, ispunct, isspace, isprint, isgraph,
                      lowercase, uppercase, titlecase, lcfirst, ucfirst

export normalize_string, graphemes, is_assigned_char, textwidth, isvalid,
       islower, isupper, isalpha, isdigit, isxdigit, isnumber, isalnum,
       iscntrl, ispunct, isspace, isprint, isgraph,
       lowercase, uppercase, titlecase, lcfirst, ucfirst

# Julia 0.7 deprecations
for name in ("alnum", "alpha", "cntrl", "digit", "number", "graph",
             "lower", "print", "punct", "space", "upper", "xdigit")
    f = Symbol("is", name)
    @eval Base.@deprecate ($f)(s::AbstractString) all($f, s)
end

end
