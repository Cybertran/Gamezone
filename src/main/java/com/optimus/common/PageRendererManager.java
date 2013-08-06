/**
 * 
 */
package com.optimus.common;

/**
 * @author jitendra
 *
 */
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

public class PageRendererManager {
	public static PageRenderer getPageRenderer() {

		PageRenderer manager = (PageRenderer) RequestContextHolder
				.currentRequestAttributes().getAttribute("pageRenderer",
						RequestAttributes.SCOPE_REQUEST);
		if (manager == null) {
			manager = new PageRenderer();
			RequestContextHolder.currentRequestAttributes().setAttribute(
					"pageRenderer", manager, RequestAttributes.SCOPE_REQUEST);
		}
		return manager;
	}

	public static void setPageRenderer(final PageRenderer pageRenderer) {
		RequestContextHolder.currentRequestAttributes().setAttribute(
				"pageRenderer", pageRenderer, RequestAttributes.SCOPE_REQUEST);
	}
}

