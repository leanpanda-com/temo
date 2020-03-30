SimpleForm.setup do |config|
  options = {
    form_class: "form",
    class: "form__field",
    error_class: "form__field--invalid"
  }

  config.wrappers :default, options do |b|
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :html5
    b.use :placeholder
    b.use :label_input
    b.use :hint, wrap_with: {tag: :div, class: "form__hint"}
    b.use :error, wrap_with: {tag: :div, class: "form__error"}
  end

  config.default_wrapper = :default
  config.boolean_style = :nested
  config.button_class = "button"
  config.error_notification_tag = :div
  config.error_notification_class = "form__alert"
  config.label_class = "form__label"
  config.default_form_class = "form"
  config.browser_validations = false
  config.input_class = "form__input"
  config.label_text = ->(label, required, _explicit) { "#{required} #{label}" }
end
