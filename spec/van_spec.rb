require 'van'
require 'bike_container'

describe Van do

  it_behaves_like 'a bike container'

  let(:van) { Van.new }

 end
