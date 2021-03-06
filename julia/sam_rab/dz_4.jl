function reverse_user!(a)
    size=length(a)
    size_h=div(size[1],2)
    for i in 1:size_h
        a[i],a[size+1-i]=a[size+1-i],a[i]
    end
    return a
end

function reverse_user!(a::Matrix)
    s=size(a)
    for i in 1:s[2]
        reverse_user!(@view a[:,i])
    end

    return a
end