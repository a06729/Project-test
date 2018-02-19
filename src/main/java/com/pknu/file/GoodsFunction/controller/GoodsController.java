package com.pknu.file.GoodsFunction.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.pknu.file.GoodsFunction.dto.GoodsDto;
import com.pknu.file.GoodsFunction.dto.PagingDto;
import com.pknu.file.GoodsFunction.service.GoodsService;
import com.pknu.file.login.dto.LoginDto;


@Controller
public class GoodsController {
	@Autowired
	GoodsService goodsService;
	
	@RequestMapping(value="/paging",method= {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public Map<String,Object> paging(@RequestParam(value="index")int index,int pageStartNum,
									 HttpSession session) {
		Map<String,Object> resultMap=new HashMap<>();
		Map<String,Object> paramMap=new HashMap<>();
		
		LoginDto User=new LoginDto();
		String UserId=(String)session.getAttribute("UserId");
		User.setId(UserId);
		
		paramMap.put("Id", User);
		
		PagingDto paging=new PagingDto();
		paging.setIndex(index);
		paging.setPageStartNum(pageStartNum);
		
		paramMap.put("p", paging);
		
		List<GoodsDto>GoodsList=goodsService.selectPaging(paramMap);
		paging.setTotal(goodsService.selectTotalPaging(paramMap));
		
		resultMap.put("list", GoodsList);
		resultMap.put("p", paging);
		
		System.out.println("resultMap:"+resultMap);
		
		return resultMap;
	}
	
	@RequestMapping(value="/GoodsPage")
	public String GoodsPage(HttpSession session,Model model){
		HashMap<String, Object>parmMap=new HashMap<>();
		
		String UserId=(String)session.getAttribute("UserId");
		model.addAttribute("UserId",UserId);
		
		parmMap.put("id", UserId);
		
		
		return goodsService.getGoodsInf(parmMap, model);
	}
	
	@RequestMapping(value="/GoodsAddPage")
	public String GoodsAddPage(HttpSession session,Model model) {
		
		UserSession(session, model);
		
		return "Goods/GoodsAdd";
	}
	
	@RequestMapping(value="/GoodsUpdatePage",method=RequestMethod.GET)
	public String GoodsUpdatePage(HttpSession session,Model model,
								  GoodsDto goodsDto,@RequestParam("goodNum")int goodNum) {
		UserSession(session, model);
		String UserId=(String)session.getAttribute("UserId");
		goodsDto.setId(UserId);
		return goodsService.selectGoods(goodsDto,model);
	}
	
	@RequestMapping(value="/GoodsUpdate",method=RequestMethod.POST)
	public String GoodsUpdate(@RequestParam("uploadFile")MultipartFile uploadFile,
			   				  GoodsDto goodsDto,HttpSession session,HttpServletRequest request,
			   				  @RequestParam("goodNum")int goodNum) {
		String UserId=(String)session.getAttribute("UserId");
		String root_path=request.getSession().getServletContext().getRealPath("/");
		String path="resources/upload/"+UserId+"/";
		
		System.out.println(uploadFile.getOriginalFilename());
		if(uploadFile !=null&&!uploadFile.getOriginalFilename().isEmpty()) {
			String fileName=uuid()+"_"+uploadFile.getOriginalFilename();
			goodsDto.setImgName(fileName);
			try {
				File file=new File(root_path+path+fileName);
				if(!file.isDirectory()) {
					file.mkdirs();
				}
				System.out.println("업로드 성공");
				uploadFile.transferTo(file);
				goodsDto.setImgPath(path+fileName);
			}catch (Exception e) {
				// TODO: handle exception
			}
		}
		goodsDto.setId(UserId);
		goodsService.GoodsUpdate(goodsDto);
		
		return "redirect:/GoodsPage";
	}
	
	@RequestMapping(value="/GoodsAdd")
	public String GoodsAdd(@RequestParam("uploadFile")MultipartFile uploadFile,
						   GoodsDto goodsDto,HttpSession session,HttpServletRequest request) {
		String UserId=(String)session.getAttribute("UserId");
		String root_path=request.getSession().getServletContext().getRealPath("/");
		String path="resources/upload/"+UserId+"/";
		
		System.out.println(uploadFile.getOriginalFilename());
		if(uploadFile !=null&&!uploadFile.getOriginalFilename().isEmpty()) {
			String fileName=uuid()+"_"+uploadFile.getOriginalFilename();
			goodsDto.setImgName(fileName);
			try {
				File file=new File(root_path+path+fileName);
				if(!file.isDirectory()) {
					file.mkdirs();
				}
				System.out.println("업로드 성공");
				uploadFile.transferTo(file);
				goodsDto.setImgPath(path+fileName);
			}catch (Exception e) {
				// TODO: handle exception
			}
		}
		goodsDto.setId(UserId);
		goodsService.GoodsAdd(goodsDto);
		
		return "redirect:/GoodsPage";
	}
	
	
	
	@RequestMapping(value="/KategorieControl")
	public String KategoriePage(HttpSession session,Model model) {
		UserSession(session, model);
		return "Goods/KategorieControl";
	}
	
	public String uuid() {
		String uuid=UUID.randomUUID().toString().replace("-","");
		
		return uuid;
	}
	
	public void UserSession(HttpSession session,Model model) {
		String UserId=(String)session.getAttribute("UserId");
		model.addAttribute("UserId",UserId); 
	}
}
