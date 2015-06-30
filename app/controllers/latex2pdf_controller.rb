# coding: utf-8
class Latex2pdfController < ApplicationController
  def index
    text = params["code"]
    send_data LatexToPdf.generate_pdf(text,{}), filename: "output.pdf", type: 'application/pdf'
  end
end
