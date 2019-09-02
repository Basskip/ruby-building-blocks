module Enumerable

    def my_each
        case self
        when Array
            self.length.times do |index|
                yield(self[index])
            end
        when Hash
            keys = self.keys()
            self.length.times do |index|
                yield(keys[index], self[keys[index]])
            end
        end
    end

    def my_each_with_index
        case self
        when Array
            self.length.times do |index|
                yield(self[index], index)
            end
        when Hash
            keys = self.keys()
            self.length.times do |index|
                yield([keys[index], self[keys[index]]], index)
            end
        end
    end

    def my_select
        result = []
        self.my_each do |item|
            if yield(item)
                result << item
            end
        end
        result
    end

    def my_all?
        self.my_each do |item|
            return false if yield(item) == false
        end
        true
    end

    def my_any?
        self.my_each do |item|
            return true if yield(item)
        end
        false
    end

    def my_none?
        self.my_each do |item|
            return false if yield(item)
        end
        true
    end

    def my_count
        count = 0
        self.my_each do |item|
            if block_given?
                if yield(item)
                    count += 1
                end
            else
                count += 1
            end
        end
        count
    end

    def my_map(proc = nil)
        result = []
        self.my_each do |item|
            result << (proc ? proc.call(item) : yield(item))
        end
        result
    end

    def my_inject(acc = 0, &block)
        self.my_each do |item|
            acc = yield(acc, item)
        end
        acc
    end

    def multiply_els(array)
        array.my_inject(1) {|res, item| res *= item}
    end

end