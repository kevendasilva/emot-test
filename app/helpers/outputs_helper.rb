module OutputsHelper
  def available_components()
    available = []

    components = Component.where(kind: "actuator")

    components.each do |component|
      unless component.output
        available.append [component.name, component.id]
      end
    end

    available
  end
end
