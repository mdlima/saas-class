class Class
  
  def attr_accessor_with_history(attr_name)  
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    attr_hist = attr_name+"_history"
    class_eval %Q{
      def #{attr_name}=(new_val)
        @#{attr_hist} = Array.new(1,@#{attr_name}) unless @#{attr_hist}
        @#{attr_hist} << new_val
        @#{attr_name} = new_val
      end
    }
  end
  
end