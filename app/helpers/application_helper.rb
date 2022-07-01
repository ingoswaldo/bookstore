module ApplicationHelper
  def errors_include?(errors, index)
    return false if errors == nil
    errors.include? index
  end
end
