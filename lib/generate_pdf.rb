require 'prawn'

module GeneratePdf
  PDF_OPTIONS = {
    # Escolhe o Page size como uma folha A4
    :page_size   => "A4",
    # Define o formato do layout como portrait (poderia ser landscape)
    :page_layout => :landscape,
    # Define a margem do documento
    :margin      => [40, 75]
  }

  def self.certificado subscriber, cpf
    # Apenas uma string aleatório para termos um corpo de texto pro contrato
    texto1 = "Certificamos que"
    texto2 = "<b>#{subscriber.name.upcase}</b>"
    texto3 = "portador(a) do CPF nº <b>#{cpf}</b>, participou do XIII ENCONTRO REGIONAL DO AMOR-EXIGENTE, com o tema \"RELAÇÕES FAMILIARES: VIVENDO EMOÇÕES E SENTIMENTOS\", realizado no dia 10 de novembro de 2018, em Goiânia, com carga horária de 08 horas."

    Prawn::Document.new(PDF_OPTIONS) do |pdf|
      bg_image = "#{Rails.root.to_s}/app/assets/images/certificado2.jpg"

      pdf.image bg_image, at: [-75,555], :scale => 0.2833

      pdf.move_up -20

      # Define a cor do traçado
      pdf.fill_color "222222"
      # Cria um texto com tamanho 30 PDF Points, bold alinha no centro
      pdf.move_down 72
      pdf.text "Certificado", :size => 32, :style => :bold, :align => :center
      # Move 80 PDF points para baixo o cursor
      pdf.move_down 50
      # Escreve o texto do contrato com o tamanho de 14 PDF points, com o alinhamento justify
      pdf.text "#{texto1}", :size => 12, :align => :justify, :inline_format => true, leading: 5

      pdf.move_down 10

      pdf.text "#{texto2}", :size => 22, :align => :center, :style => :bold, :inline_format => true, leading: 5

      pdf.move_down 10

      pdf.text "#{texto3}", :size => 12, :align => :justify, :inline_format => true, leading: 5

      pdf.move_down 50
      # Inclui um texto com um link clicável (usando a tag link) no bottom da folha do lado esquerdo e coloca uma cor especifica nessa parte (usando a tag color)
      pdf.text "Goiânia, 12 de novembro de 2018", :size => 12, :inline_format => true, :align => :right
      # Gera no nosso PDF e coloca na pasta public com o nome agreement.pdf
      pdf.render_file("public/#{subscriber.cpf}.pdf")
    end
  end

end
