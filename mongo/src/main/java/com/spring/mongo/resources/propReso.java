package com.spring.mongo.resources;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import com.mongodb.BasicDBObject;
import java.io.InputStream;
import java.lang.reflect.Array;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.gridfs.GridFsOperations;
import org.springframework.data.mongodb.gridfs.GridFsResource;
import org.springframework.data.mongodb.gridfs.GridFsTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.mongodb.DBObject;
import com.mongodb.gridfs.GridFS;
import com.mongodb.util.JSON;
import com.mongodb.client.gridfs.GridFSBucket;
import com.mongodb.client.gridfs.model.GridFSFile;
import com.spring.mongo.daos.CloudinaryService;
import com.spring.mongo.daos.propDaos;
import com.spring.mongo.model.properties;
import com.spring.mongo.repository.propertiesrepo;
import org.apache.commons.io.IOUtils;
import org.bson.types.ObjectId;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping
public class propReso {
    

    private propertiesrepo propertiesRepo;

    @Autowired
    private CloudinaryService cloudinaryService;


    private propReso(propertiesrepo propertiesrepo) {
        this.propertiesRepo = propertiesrepo;

    }

    @RequestMapping("sell")
    public ModelAndView search(properties pro) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("sell");
        return mv;
    }
    @RequestMapping("imag")
    public ModelAndView search1(properties pro) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("image");
        return mv;
    }
   //To Post Properties
    @PostMapping("prop")
    public ModelAndView PostPro(properties pro, @RequestParam("uploadingFiles") MultipartFile[] uploadingFiles)
            throws IllegalStateException, IOException {
                ArrayList<String> hh = new ArrayList<>() ;
        // To Save Image
        for (MultipartFile file : uploadingFiles) {
           
            String url = cloudinaryService.uploadFile(file);
          
            hh.add(url);
        }
        
        pro.setImages(hh);

        propDaos pr = new propDaos(propertiesRepo);
        Boolean k = pr.insert(pro);     

        ModelAndView mv = new ModelAndView();
        mv.addObject("obj", pro);
        mv.setViewName("show1");
        return mv;

    }
    // To get properties
    @RequestMapping("prog")
    public ModelAndView getPro(properties pro ) throws IOException {
        propDaos pr = new propDaos(propertiesRepo);
        List prr = pr.getProp(pro);
        ModelAndView mv = new ModelAndView();
        mv.addObject("obj", prr);
        mv.setViewName("show");
        return mv;

    }
    public ModelAndView error(String error){

        ModelAndView mv = null;
        mv.addObject("error", error);
        mv.setViewName("error");

        return mv;
    }  
    
}
