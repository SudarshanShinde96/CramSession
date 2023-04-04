package com.cdac.cs.controller;

import org.apache.commons.io.IOUtils;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.ResponseEntity;
import org.springframework.web.servlet.mvc.method.annotation.StreamingResponseBody;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;



import java.net.URI;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.server.ResponseStatusException;
import org.springframework.web.servlet.ModelAndView;
import com.cdac.cs.model.Users;
import com.cdac.cs.exceptions.UserAlreadyExistsException;
import com.cdac.cs.model.Uploads;
import com.cdac.cs.repo.ProfilepicRepo;
import com.cdac.cs.repo.RegistrationRepo;
import com.cdac.cs.repo.UploadsRepo;
import com.cdac.cs.services.ProfilepicServiceImpl;
import com.cdac.cs.services.ProflepicUpload;
import com.cdac.cs.services.ServiceImpl;
import com.cdac.cs.services.UploadService;

import jakarta.annotation.Resource;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class CScontroller {
	
	@Autowired
	private ProflepicUpload proflepicUploadService;
	

	@Autowired
	private ServiceImpl serviceImpl;
	
	@Autowired
	private RegistrationRepo rrepo;
	
	@Autowired
	private UploadService uploadService;
	
	@Autowired
	private UploadsRepo uploadsRepo;
	
	
	
	
	
	/*HOME*/
	@GetMapping("/")
	private String Registration() {
		return "landingPage";
	}
	@PostMapping("/register")
	private ModelAndView register(@Valid Users user) {
	    ModelAndView mv = new ModelAndView("/loginPage");
	    if (serviceImpl.isUsernameTaken(user.getUsername())) {
	        Map<String, String> errors = new HashMap<>();
	        errors.put("registerError", "Username already exists");
	        mv = new ModelAndView("/registrationPage");
	        mv.addObject("errors", errors);
	    } else if (serviceImpl.isEmailTaken(user.getEmail())) {
	        Map<String, String> errors = new HashMap<>();
	        errors.put("registerError", "Email already exists");
	        mv = new ModelAndView("/registrationPage");
	        mv.addObject("errors", errors);
	    } else if (serviceImpl.isPhoneNumberTaken(user.getPhonenumber())) {
	        Map<String, String> errors = new HashMap<>();
	        errors.put("registerError", "Phone number already exists");
	        mv = new ModelAndView("/registrationPage");
	        mv.addObject("errors", errors);
	    } else {
	        serviceImpl.addUser(user);
	        mv.addObject("successMessage", "User registered successfully");
	    }
	    return mv;
	}

	
	/*LOGIN*/
	@PostMapping("/login")
	public ModelAndView Login(@Valid Users registration, BindingResult bindingResult, HttpSession session) {
		
	    boolean login = serviceImpl.findByUsername(registration.getUsername(), registration.getPassword());
	    
	    if (login) {
			 session.setAttribute("registration", registration) ;  
				/* model.addAttribute("username",registration.getUsername()); */
	        
//	        System.out.println(session.getAttributeNames());
	        
	        ModelAndView mv = new ModelAndView("/Home");
	        Iterable<Uploads> list=uploadsRepo.findAll();
	        mv.addObject("list",list);
	        return mv;
	    } else {
	        Map<String, String> errors = new HashMap<>();
	        errors.put("loginError", "Invalid username or password");
	        ModelAndView mv = new ModelAndView("/loginPage");
	        mv.addObject("errors", errors);
	        return mv;
	    }
	}

		
	
	/*UPLOAD FILE*/
	@PostMapping("/upload")
	public String handleFileupload(@RequestParam("file") MultipartFile file, String desc, HttpSession session,String type) {
		
	    Users registration = (Users) session.getAttribute("registration");
	    
	    String pathname= "C:\\temp/";
		/* System.out.println(registration); */
	   
	    Uploads createUpload = this.uploadService.saveFile(file, desc, registration,pathname,type);
	   
	    try {
	        byte[] bytes = file.getBytes();
	        Path path = Paths.get(pathname + file.getOriginalFilename());
	        Files.write(path, bytes);
	    } catch (Exception e) {
	        e.printStackTrace();
	        return "Upload failed";
	    }
	  
	    return "redirect:/Home";
	}
	
	
	   @GetMapping("/Home")
	    public ModelAndView listUploads() {
	      
		   ModelAndView mv= new ModelAndView("/Home");
		   Iterable<Uploads> list=uploadsRepo.findAll();
		   for (Uploads uploads : list) {
			System.out.println(uploads);
		}
		 
		   mv.addObject("list",list);
		   return mv;
		   
		   
			/*
			 * List<Uploads> uploadsList = uploadService.listAllUploads();
			 * model.addAttribute("uploadsList", uploadsList); return uploadsList;
			 */
	    }
	
	
	   @GetMapping("/Notes")
	    public ModelAndView listfileUploads() {
	      
		   ModelAndView mv= new ModelAndView("/BeforeHome");
		   Iterable<Uploads> list=uploadsRepo.findAll();
		   for (Uploads uploads : list) {
			System.out.println(uploads);
		}
		 
		   mv.addObject("list",list);
		   return mv;
		   
		   
			
	    }
	
	
	
	
	
	
	
	
	
	/*USER INFORMATION*/
	   @GetMapping("/profile")
	   public ModelAndView showProfile(HttpSession session) {
	       Users registration = (Users) session.getAttribute("registration");
	       if (registration == null) {
	          
	           return new ModelAndView("login");
	       }

	       registration = rrepo.findByUsername(registration.getUsername());
	       Iterable<Uploads>  uploads = uploadService.getFilesByUsername(registration.getUsername());
	       ModelAndView mv = new ModelAndView("userProfile");
	       mv.addObject("uploads", uploads);
	       mv.addObject("userinfo", registration);
	       return mv;
	   }
	
	
	
	/*PROFILE PICTURE UPLOAD*/
	
	@PostMapping("/picupload")
	public String profilePic(@RequestParam("file") MultipartFile file,HttpSession session) {
		 Users registration = (Users) session.getAttribute("registration");
		 
		 String pathname= "D:\\Profilepic/";
		 proflepicUploadService.ProfileUpload(file, registration,pathname);
		 
		 try {
		        byte[] bytes = file.getBytes();
		        Path path = Paths.get(pathname + file.getOriginalFilename());
		        Files.write(path, bytes);
		        
		        
		    } catch (Exception e) {
		        e.printStackTrace();
		        return "Upload failed";
		    }
		    return "userProfile";
		 	 
		
	}
	
	@GetMapping("/delete/{file_id}")
	public String deleteUpload(@PathVariable("file_id") int fileId) {
	    try {
	        this.uploadService.deleteUpload(fileId);
	    
	        return "redirect:/profile"; // return the view name
	    } catch (NoSuchElementException e) {
	        return "error"; // return an error view if the file ID doesn't exist
	    }
	    
	}

	

	
	
	
	
	
	
	@GetMapping("/destroy")
	public String destroySessionData(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/";
	}
	
	
	
	
	
	
	@GetMapping("/downloadFile/{id}")
	public ResponseEntity<StreamingResponseBody> downloadFile(@PathVariable int id) {
	    Uploads file = uploadsRepo.findById(id).orElseThrow(() -> new RuntimeException("File Not Found"));
	    try {
	    	 String filePath = "file:" + file.getFile_path(); // prepend "file:" to the file path
	         URL url=new URL(filePath);
	        InputStream inputStream = url.openStream();
	        HttpHeaders headers = new HttpHeaders();
	        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
	        headers.setContentLength(inputStream.available());
	        headers.setContentDisposition(ContentDisposition.builder("attachment")
	                .filename(file.getFile_name())
	                .build());
	        StreamingResponseBody responseBody = outputStream -> {
	            try {
	                IOUtils.copy(inputStream, outputStream);
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        };
	        return new ResponseEntity<>(responseBody, headers, HttpStatus.OK);
	    } catch (MalformedURLException e) {
	        e.printStackTrace();
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	    return null;
	}


	

	@GetMapping("/search")
	public String search(@RequestParam(value = "file_name", required = false) String fileName,
	                     @RequestParam(value = "file_description", required = false) String fileDescription,
	                     Model model) {
	    Iterable<Uploads> searchResults = uploadService.getUploadsByFileNameOrFileDescription(fileName, fileDescription);
	    model.addAttribute("searchResults", searchResults);
	    return "search";
	}
	
	@GetMapping("/beforesearch")
	public String beforesearch(@RequestParam(value = "file_name", required = false) String fileName,
	                     @RequestParam(value = "file_description", required = false) String fileDescription,
	                     Model model) {
	    Iterable<Uploads> searchResults = uploadService.getUploadsByFileNameOrFileDescription(fileName, fileDescription);
	    model.addAttribute("searchResults", searchResults);
	    return "beforeSearch";
	}
	
}
