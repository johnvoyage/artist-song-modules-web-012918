module Memorable

  # module ClassMethods

    def reset_all
      self::ALL.clear
    end

    def count
      self::ALL.count
    end

  # end

end