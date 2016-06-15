module BoletoBancario
  module Calculos
    # Classe responsável por calcular o módulo 11 com fatores 3197.
    # <b>Essa classe difere das outras pois a constante para o calculo é 3197.</b>
    #
    class Modulo11Fator3197 < Modulo11
      # Sequência numérica 3197 que será feito a multiplicação de cada dígito
      # do número passado no #initialize.
      #
      # @return [Array] Sequência numérica
      #
      def fatores
        [3, 1, 9, 7]
      end

      # Realiza o cálculo do módulo 11 com fatores 3197.
      #
      # === Resultado
      #   Se o resultado final for maior que 9 o digito será 0 (zero).
      #
      # @return [Fixnum] Resultado da subtração.
      #
      def calculate
        return 0 if total > 9

        total
      end

      def mod_division
        @mod_division ||= FatoresDeMultiplicacao.new(@number.to_s.reverse, fatores: fatores).sum % 11
      end
    end
  end
end
