class Priestess < Mage
  def initialize(attributes={})
    super
    self.base_life = 32
    self.base_channel = 10
    self.base_attack = 3
  end
end
