
class Assertion

    @@enabled = true

    def self.assert(condition, message=nil)
        return if (condition)
        if (block_given?)
            message = yield
            raise RuntimeError.new(message)
        else
            raise RuntimeError.new(message)
        end
    end

    def self.if_enabled
        if (@@enabled && block_given?)
            yield
        end
    end

end


# preferred use case
# Assertion::if_enabled do
    # Assertion:: assert 1 == 1 do message "some issue of value: #{issue}" end
# end


