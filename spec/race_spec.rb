require 'spec_helper'

RSpec.describe Race do
  subject(:race) { Race.new }

describe '::new' do
    it 'instantiates two cars' do
    expect(race.cars.length).to eq(2)
end

  it 'accelerates the cars to random speeds' do
   expect(race.cars[0].speed).to_not eq(race.cars[1].speed)
end

  describe '#winner' do
    it 'returns the winner' do
    expect(race.winner.speed).to be > (race.loser.speed)
end    
end
    it 'is not the loser' do
    expect(race.winner.speed).to_not be == (race.loser.speed)
  end
end

  describe '#loser' do
      it 'returns the loser' do
      expect(race.loser.speed).to be < (race.winner.speed)
  end
    it 'is not the winner' do
       expect(race.loser).to_not eq(race.winner)
    end
  end  
end

