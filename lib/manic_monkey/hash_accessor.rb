module HashAccessor
  def hash_accessor(var_name, *keys)
    keys.each do |k|
      define_method k do
        instance_variable_get("@#{var_name}")[k]
      end
      define_method "#{key}=" do |v|
        instance_variable_get("@#{var_name}")[k] = v
      end
    end
  end
end

