require_relative 'monster'
class Mummy < Monster

  def initialize nocturnal: , legs: 2, name: "Mummy", vul: [:decapitation], dangers: [:bite]
    nocturnal = true if nocturnal.nil?

    super nocturnal, legs, name,
          vul, dangers
  end

  def test_whisper mummy
    mummy.whisper_creepily
  end

  def test_noc_set mummy
    mummy.set_nocturnal_to_false
  end

end