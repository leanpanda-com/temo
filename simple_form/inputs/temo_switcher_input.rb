class TemoSwitcherInput < SimpleForm::Inputs::BooleanInput
  def input(wrapper_options = nil)
    html_options = label_html_options.dup
    html_options[:class] ||= []
    merged_input_options = merge_wrapper_options(
      input_html_options,
      wrapper_options
    )

    build_hidden_field_for_checkbox +
      build_check_box_without_hidden_field(merged_input_options)
  end

  def label
    @builder.label(label_target, class: "form__label switcher") do
      template.content_tag(:span, label_text)
    end
  end

  def label_input(wrapper_options = nil)
    return input(wrapper_options) if options[:label] == false

    input(wrapper_options) + label
  end

  def input_type
    :switcher
  end
end
