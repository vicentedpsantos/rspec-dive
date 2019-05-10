class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe 'have_attributes matcher' do
  describe ProfessionalWrestler.new('Stone Cold Santos', 'Stunner') do
    it 'checks for object attributes and proper values' do
      expect(subject).to have_attributes(name: 'Stone Cold Santos', finishing_move: 'Stunner')
      expect(subject).to have_attributes(name: 'Stone Cold Santos')
      expect(subject).to have_attributes(finishing_move: 'Stunner')
    end

    it { is_expected.to have_attributes(name: 'Stone Cold Santos', finishing_move: 'Stunner') }
    it { is_expected.to have_attributes(name: 'Stone Cold Santos') }
    it { is_expected.to have_attributes(finishing_move: 'Stunner') }
  end
end
