module ViewComponent::FormHelpers
  def dummy_form_builder
    ActionView::Helpers::FormBuilder.new(:test_model, test_model, ActionView::Base.empty, {})
  end

  def test_model
    Struct.new("TestModel", :field_name, :checkbox_field).new(:test_field, "1")
  end
end
