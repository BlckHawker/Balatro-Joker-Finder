local util = {}

function util.fract(n)
    return util.fmod(n, 1);
end

function util.fmod(x, y)
    return math.fmod(x,y);
end

function util.indexOf(s, index)
    return string.sub(s, index, index)
end

function util.isNan(n)
    return tostring(n) == tostring(0/0)
end

return util