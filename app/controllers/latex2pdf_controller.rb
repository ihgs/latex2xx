# coding: utf-8
class Latex2pdfController < ApplicationController
  def index
    text =<<EOS
\\documentclass{jarticle}
\\begin{document}
日本語 \\LaTeX
を使って文章を書く。.
\\end{document}
EOS
    send_data LatexToPdf.generate_pdf(text,{}), filename: "output.pdf", type: 'application/pdf'
  end
end
