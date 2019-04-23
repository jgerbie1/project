# RubyHashes
# Part I
def array_2_hash emails, contacts
    # YOUR CODE HERE
    if emails.empty?
        return contacts;
    end 
    i = 0;
    contacts.each do |k, v|
        contacts[k] = emails[i]
        i = i + 1 
    end
    return contacts 
end

# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
     feilds = [:email, :phone]
    if contact_info.empty?
        return contacts;
    end 
    contacts.each do |key,v|
        feilds.each do |feilds|
            key[feilds] = contact_info[v].shift 
        end 
    end 
        return contacts 
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
end 
