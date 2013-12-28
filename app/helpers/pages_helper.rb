module PagesHelper
  def result_number num
    num.zero? ? 'N/A' : num
  end
end
