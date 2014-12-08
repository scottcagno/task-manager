package com.cagnosolutions.app.tasks

import groovy.transform.CompileStatic
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping

@CompileStatic
@Controller
class TaskController {
	@RequestMapping(value = "/")
	String index() {
		"index"
	}
}
