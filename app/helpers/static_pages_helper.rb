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

  def score_diff par, score
    score - par 
  end
  def diff_string diff
    if diff > 0
      "+#{diff.abs}"
    elsif diff < 0
      "-#{diff.abs}"
    else
      "0"
    end
  end

  def score_class diff
    if diff > 0
      "score-over"
    elsif diff < 0
      "score-under"
    else
      "score-par"
    end
  end
end
