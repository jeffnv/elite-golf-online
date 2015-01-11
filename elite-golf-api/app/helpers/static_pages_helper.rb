module StaticPagesHelper
  def par_data score
    diff = 30 - score
    if diff > 0
      "<td class='score-under'>-#{diff.abs}</td>".html_safe
    elsif diff < 0
      "<td class='score-over'>+#{diff.abs}</td>".html_safe
    else
      "<td class='score-par'>0</td>".html_safe
    end
  end
end
