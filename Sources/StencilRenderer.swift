import Stencil
import Vapor

public class StencilRenderer: RenderDriver {

	public init() {
		//empty
	}

    public func render(template template: String, context: [String: Any]) throws -> String {
        let c = Context(dictionary: context)
        let template = Template(templateString: template)
        return try template.render(c)
    }
    
}
