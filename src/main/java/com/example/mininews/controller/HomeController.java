package com.example.mininews.controller;
import com.example.mininews.domain.News;
import com.example.mininews.domain.User;
import com.example.mininews.repos.NewsRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

@Controller
    public class HomeController {

        @Autowired
        private NewsRepo newsRepo;

        @Value("${upload.path}")
        private String uploadPath;

        @GetMapping("/home")
        public String home( Map<String,Object> model){
            Iterable<News> news1 = newsRepo.findAll();

            model.put("news", news1);
            return "home";
        }

        @PostMapping("/home")
        public String posting(
                @AuthenticationPrincipal User user,
                @RequestParam String text, Map<String,Object> model,
                @RequestParam("file") MultipartFile file) throws IOException {
            News news = new News(text,user);
            if (file != null && !file.getOriginalFilename().isEmpty()) {
                File uploadDir = new File(uploadPath);

                if (!uploadDir.exists()) {
                    uploadDir.mkdir();
                }

                String uuidFile = UUID.randomUUID().toString();
                String resultFilename = uuidFile + "." + file.getOriginalFilename();

                file.transferTo(new File(uploadPath + "/" + resultFilename));

                news.setFilename(resultFilename);
            }
            newsRepo.save(news);
            Iterable<News> news1 = newsRepo.findAll();

            model.put("news", news1);
            return "home";
        }
        @GetMapping("/")
        public String main( Map<String,Object> model){
            return "main";
        }

    }
