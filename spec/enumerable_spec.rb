require './enumerable.rb'

RSpec.describe "Enumberable" do
    describe "#my_select" do
    it "works on an empty array" do
        expect([].my_select{|x| x == 1}).to eql([])
    end
    it "works where the selection is present" do
        expect([1,2,3].my_select{|x| x == 2}).to eql([2])
    end
    it "works where the selection is not present" do
        expect([1,2,3].my_select{|x| x == 4}).to eql([])
    end
end
    describe "#my_all" do 
    it "works for array where no values meet condition" do
        expect([1,2,3].my_all?{|x| x == 4 }).to eql(false)
    end
    it "works for array where all values meet condition" do
        expect([1,2,3].my_all?{|x| x < 5}).to eql(true)
    end
end
    describe "#my_count" do
    it "works for empty array" do
        expect([].my_count).to eql(0)
    end
    it "works for a small array" do
        expect([1,2,3,4,5].my_count).to eql(5)
    end
    it "works when passed a block" do
        expect([1,1,1,2,2,2].my_count{|x| x == 2}).to eql(3)
    end
end
    describe "#my_map" do
    it "works for empty array" do
        expect([].my_map{|x| x *= 2}).to eql([])
    end
    it "works for integers and a block" do
        expect([1,2,3,4].my_map{|x| x += 3}).to eql([4,5,6,7])
    end
    it "works with a proc" do
        test = Proc.new do |x|
            x = x*2
        end
        expect([1,2,3,4].my_map(test)).to eql([2,4,6,8])
    end
end
end