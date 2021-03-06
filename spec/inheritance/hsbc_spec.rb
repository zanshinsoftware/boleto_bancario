# encoding: utf-8
require 'spec_helper'

class Hsbc < BoletoBancario::Hsbc
  def self.valor_documento_tamanho_maximo
    100 # Default 99999999.99
  end

  def self.carteiras_suportadas
    %w[ABC] # Default %w[CNR]
  end
end

describe Hsbc do
  describe "on validations" do
    it { should have_valid(:valor_documento).when(99, 99.99, 25) }
    it { should_not have_valid(:valor_documento).when(100.01, 150) }

    it { should have_valid(:carteira).when('ABC') }
    it { should_not have_valid(:carteira).when('CNR', 14, 'CSB') }
  end
end
