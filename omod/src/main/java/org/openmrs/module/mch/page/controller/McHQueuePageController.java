package org.openmrs.module.mch.page.controller;

import java.util.List;

import org.openmrs.api.context.Context;
import org.openmrs.module.hospitalcore.PatientQueueService;
import org.openmrs.module.hospitalcore.model.OpdPatientQueue;
import org.openmrs.ui.framework.UiUtils;
import org.openmrs.ui.framework.page.PageModel;

public class McHQueuePageController {
	private static final int MCH_CLINIC_CONCEPT_5090 = 5090;

	public void get(PageModel model, UiUtils ui) {
		List<OpdPatientQueue> patientQueues = Context.getService(PatientQueueService.class).listOpdPatientQueue("", MCH_CLINIC_CONCEPT_5090, "", 0, 0);
		model.addAttribute("mchQueue", patientQueues);
	}
}
