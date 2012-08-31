class Object
  # Freeze then deepen to prevent infinite recursion
  def deep_freeze
    unless frozen?
      freeze unless is_a?(Module)
      each(&:deep_freeze) if respond_to?(:each)
    end    
    self 
  end
end

