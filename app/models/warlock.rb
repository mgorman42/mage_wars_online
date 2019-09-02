class Warlock < Mage
  def initialize(attributes={})
    super
    self.base_life = 38
    self.base_channel = 9
    self.base_attack = 3
  end
end
