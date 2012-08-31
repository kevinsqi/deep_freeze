class Object
  # Freeze objects recursively, so nested objects get frozen too.
  def deep_freeze
    unless frozen?
      freeze unless is_a?(Module)
      each(&:deep_freeze) if respond_to?(:each)
    end    
    self 
  end
end

