# lib/tictactoe_redux/core_extentions.rb
class Array
  def all_empty?
    self.all? { |item| item.to_s.empty? }
  end

  def all_same?
    self.all? { |item| item.to_s == self[0] }
  end

  def any_empty?
    return true if self.empty?
    self.any? { |item| item.to_s.empty? }
  end

  def none_empty?
    !any_empty?
  end
end

# Also add a none_empty? method that returns true
# if none of the elements are empty and false otherwise
