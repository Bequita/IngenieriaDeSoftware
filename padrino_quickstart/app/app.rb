require_relative '../app/models/calculadora'

module Ejemplo
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions

    calculadora = Calculadora.new

    get 'operaciones' do
      render 'operaciones'
    end

    post 'operar' do
      operacion = params[:operacion]

      if operacion.eql? 'promedio'
        array_numeros = params[:lista_numeros].split(', ')
        valor = calculadora.promedio(array_numeros)
      else
        valor1 = params[:operando1]
        valor2 = params[:operando2]
        valor = calculadora.send(operacion.to_sym, valor1.to_i, valor2.to_i)
      end

      if !valor.eql? 'fallo'
        @resultado = 'El resultado de la operacion es: ' + valor.to_s
        render 'operaciones'
      else
        'La division por 0 no es posible'
      end
    end

    post 'resetear' do
      calculadora.resetear_memoria
      @resultado = 'La cantidad de operaciones ha sido reseteada'
      render 'operaciones'
    end

    post 'consultar' do
      valor = calculadora.cantidad_operaciones
      @resultado = 'La cantidad de operaciones realizadas fueron: ' + valor.to_s
      render 'operaciones'
    end

  end
end