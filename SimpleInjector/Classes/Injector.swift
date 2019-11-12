//
//  Injector.swift
//
//  Created by Tancrède Chazallet on 11/07/2018.
//  Copyright © 2018 Tancrède Chazallet. All rights reserved.
//

import Foundation

public class Injector {
	private var dependencies: [AnyObject]
	
	public init(dependencies: [AnyObject]) {
		#if DEBUG
		dependencies.forEach({ dependency in
			guard dependencies.filter({ dependency.self === $0.self }).count == 1 else {
				fatalError("Injector was given 2 dependencies of the same type")
			}
		})
		#endif
		
		self.dependencies = dependencies
	}
	
	public func dependency<T>() -> T {
		guard let dependency = dependencies.first(where: { $0 is T }) as? T else {
			fatalError("Couldn't retrieve dependency of type \(T.self) in:\n\(dependencies.debugDescription)")
		}
		return dependency
	}
    
    public func add(dependency: AnyObject) {
        dependencies.forEach({ depd in
            if depd === dependency {
                return
            }
        })
        
        self.dependencies.append(dependency)
    }
}
