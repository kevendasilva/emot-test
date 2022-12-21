module OutputsHelper
  def available_components(components)
    available = []
    components.each do |component|
      unless component.output
        available.append [component.name, component.id]
      end
    end

    available
  end
end
