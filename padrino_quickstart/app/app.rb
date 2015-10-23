require_relative '../app/models/calculadora'

module Ejemplo
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions

    calculadora = Calculadora.new

    get 'hola' do
      'hey! hola'
    end
    
    get 'saludo' do
      render 'saludo'
    end

    post 'saludo' do
      session[:nombre] = params[:nombre]
      @nombre = session[:nombre]
      render 'saludo'
    end

    get 'asd' do
      render 'sumar'
    end

    post 'asd' do
      session[:operando1] = params[:operando1]
      session[:operando2] = params[:operando2]
      calculadora.class.send(:define_method, params[:valorlista].to_sym, Proc.new { |a, b| a + b })
      @resultado = calculadora.sumar(session[:operando1].to_i, session[:operando2].to_i)
      if(@resultado.eql? 5)
        render 'sumar'
      else
        render 'prueba'
      end
    end

    get 'sumar' do
      render 'sumar'
    end

    post 'sumar' do
      session[:oper1] = params[:operando1]
      session[:oper2] = params[:operando2]
      @resultado = calculadora.sumar(session[:oper1].to_i,session[:oper2].to_i)
      render 'sumar'
    end




  end
end