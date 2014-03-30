module Set2
  def self.find_intersection(a1, a2, a3)

    if a1&a2&a3 == a3 && a1.empty? && a2.empty? && a3.empty?
       []
    else
      a1&a2&a3
    end
  end

  def self.find_first_dup(a1)
    dup= a1.detect{ |e| a1.count(e) > 1 }

    if dup ==false
      nil
    else
      dup
  end
end

  def self.find_mode(a1)
    dup = a1.detect{ |e| a1.count(e) > 1 }
    dup_num = a1.count(dup)
    dup_dup_num = a1.detect {|f| a1.count(f)>dup_num}
    if a1.empty?
      nil
    elsif dup_dup_num == nil
      dup
    else
      dup_dup_num
    end
end
end
