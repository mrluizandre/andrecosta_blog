class MelhorConsoleController < ApplicationController
  skip_before_action :verify_authenticity_token

  layout '99vidas'
  def elim
    @voto = MelhorConsole.new
  end

  def semi
    @voto = MelhorConsole.create(params.require(:melhor_console).permit(:elim_sony, :elim_sega, :elim_outros, :elim_nintendo, :elim_microsoft))
    session[:voto_id] = @voto.id
  end

  def final
    @voto = MelhorConsole.find(session[:voto_id])
    @voto.update(params.require(:melhor_console).permit(:semi_1, :semi_2))
  end

  def fim
    @voto = MelhorConsole.find(session[:voto_id])
    @voto.update(params.require(:melhor_console).permit(:final))
    puts "#{@voto.inspect}".on_yellow
  end

  def resultados
    puts MelhorConsole.group(:elim_microsoft).count.inspect.on_red
  end
end
