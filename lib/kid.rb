require_relative './dance_module'
require_relative './meta_dancing_module'
require_relative './fancy_dance'

class Kid 
    include FancyDance::InstanceMethods
    extend FancyDance::ClassMethods

    attr_accessor :name

    def initialize(name)
        @name = name
    end
end 

tony = Kid.new('Tony')
puts tony.name
puts tony.take_a_bow

puts Kid.metadata

