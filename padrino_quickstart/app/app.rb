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

    post 'sumar' do
      session[:oper1] = params[:operando1]
      session[:oper2] = params[:operando2]
      valor = calculadora.sumar(session[:oper1].to_i,session[:oper2].to_i)
      @resultado = 'El resultado de la operacion es: ' + valor.to_s
      render 'operaciones'
    end

    post 'restar' do
      session[:oper1] = params[:operando1]
      session[:oper2] = params[:operando2]
      valor = calculadora.restar(session[:oper1].to_i,session[:oper2].to_i)
      @resultado = 'El resultado de la operacion es: ' + valor.to_s
      render 'operaciones'
    end

    post 'promediar' do
      session[:numeros] = params[:lista_numeros].split(',')
      valor = calculadora.promedio(session[:numeros])
      @resultado = 'El resultado de la operacion es: ' + valor.to_s
      render 'operaciones'
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