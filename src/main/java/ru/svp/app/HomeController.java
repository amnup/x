/*
 * Copyright 2013 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package ru.svp.app;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.api.Reference;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Simple little @Controller that invokes Facebook and renders the result.
 * The injected {@link Facebook} reference is configured with the required authorization credentials for the current user behind the scenes.
 * @author Keith Donald
 */
@Controller
public class HomeController {

	private final Facebook facebook;

    @Autowired
    ServletContext context;


	@Inject
	public HomeController(Facebook facebook) {
		this.facebook = facebook;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		List<Reference> friends = facebook.friendOperations().getFriends();
		model.addAttribute("friends", friends);
		return "home";
	}

    @ResponseBody
    @RequestMapping(value = "/photo2", method = RequestMethod.GET, produces = MediaType.IMAGE_JPEG_VALUE)
    public byte[] testphoto(HttpServletRequest request) throws IOException {
        InputStream in = request.getSession().getServletContext().getResourceAsStream("c:/resources/ert.jpg");

        URL url = new URL("http://cs11121.vk.me/u2845803/-6/x_f5d5ce81.jpg");
        InputStream imageStream = url.openStream();

        return IOUtils.toByteArray(imageStream);
    }

}
