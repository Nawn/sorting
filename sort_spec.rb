require_relative 'sort'


describe "#bubble_sort" do
  it "returns a sorted array" do
    expect(bubble_sort([3,2,5,7,1])).to eq [1,2,3,5,7]
    expect(bubble_sort([9,4,7,2,3])).to eq [2,3,4,7,9]
    expect(bubble_sort([18,2,1,7,8])).to eq [1,2,7,8,18]
    expect(bubble_sort([10,2,6,1,12])).to eq [1,2,6,10,12]
    expect(bubble_sort([3,2,5,7,1,14,25,23])).to eq [1,2,3,5,7,14,23,25]
  end
end