class TemoFormBuilder < SimpleForm::FormBuilder
  map_type :boolean, to: TemoBooleanInput
  map_type :switcher, to: TemoSwitcherInput
end
