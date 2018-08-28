package com.lecto.forward.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lecto.forward.dto.BoardDTO;
import com.lecto.forward.dto.GradeDTO;
import com.lecto.forward.dto.MemberGradesDTO;
import com.lecto.forward.service.BoardService;
import com.lecto.forward.vo.BoardSearchVO;

@Controller
public class BoardController{

	@Autowired
	BoardService boardService;
	
	@RequestMapping(value="/ad_addboardView", method=RequestMethod.POST)
	public String addBoard(@Param("boardCode")String boardCode) throws Exception{
		System.out.println(boardCode+"하하");	
		return "/ad_addboard";
	}

	@RequestMapping(value="/ad_addboard", method=RequestMethod.POST)
	public String addBoard2(String boardName, String gradeDate, String themeCode, String divgrade,
			@RequestParam("gradeNum")String[] gradeNum, @RequestParam("gradeName") String[] gradeName,
			@RequestParam("articleCount")String[] articleCount, Model model) throws Exception{
		
		BoardDTO boardDTO = new BoardDTO(boardService.generateBoardCode(),boardName, gradeDate, "th1");
		System.out.println(boardDTO+"********************************"+boardDTO.getBoardName());
	
		boardService.addBoard(boardDTO);
		GradeDTO gt;
		List<GradeDTO> gradeList = new ArrayList<GradeDTO>();
		for(int i=0;i<gradeNum.length;i++) {
			System.out.println(gradeNum[i]);
			System.out.println(gradeName[i]);
			System.out.println(articleCount[i]);
			gt =new GradeDTO(Integer.parseInt(gradeNum[i]),gradeName[i],Integer.parseInt(articleCount[i]),boardDTO.getBoardCode());
			
			System.out.println(gt);
			gradeList.add(gt);
		}
	
		boardService.addGrade(gradeList);
		
		MemberGradesDTO memberGrades = new MemberGradesDTO(boardService.generateBoardMemberGrade(),boardDTO.getBoardCode(),"admin", -1);
		boardService.addMemberGrades(memberGrades);
		model.addAttribute("boardViewList",boardService.searchBoard());
		
		return "redirect:/ad_boardlist";
	}
	
	/////////////////////////////////////// 2018-08-28 01:31 다미가 수정 ///////////////////////////////////////////////////////////////////
	@RequestMapping(value="/a_editboard", method=RequestMethod.POST)
	public String updateBoard(Model model,String boardCode,String boardName, String gradeUpDate,
		String[] gradeNum, String[] gradeName, String[] articleCount, HttpSession session) {
		
		String sessionId = (String) session.getAttribute("login");
		
		try {
			System.out.println("포스트  "+boardCode);
			BoardDTO board = new BoardDTO(boardCode, boardName, gradeUpDate, "th1");
			List<GradeDTO> grades = new ArrayList<GradeDTO>();
			GradeDTO gradeDTO =null;
			System.out.println(gradeNum.length);
			for (int i = 0; i < gradeNum.length; i++) {
			gradeDTO = new GradeDTO(Integer.parseInt(gradeNum[i]),gradeName[i],Integer.parseInt(articleCount[i]), boardCode);	
			grades.add(gradeDTO);
		}
			boardService.updateBoard(board, grades);
		} catch (Exception e) {
			System.out.println(e+" updateBoard 오류");
		}
		
		if(sessionId.equals("admin")) {
			return "redirect:/ad_boardlist";
		}else {
			model.addAttribute("selectBoardCode", boardCode);
			model.addAttribute("selectBoardName", boardName);
			return "redirect:/a_articlelist";
		}
	}

	@RequestMapping(value="/a_editboard", method=RequestMethod.GET)
	public String updateBoard(@RequestParam("clickboardCode")String clickboardCode, Model model, String searchWay, String keyword, HttpServletRequest request) {
		try {
			if(clickboardCode.equals("f")) {
				return searchBoard2( searchWay,  keyword, model, request);
			}else{
				System.out.println(clickboardCode + "수정");
				BoardDTO boardDTO = boardService.searchBoardCode(clickboardCode);
				System.out.println(boardDTO + "231");
				model.addAttribute("boardDTO", boardDTO);
				List<GradeDTO> gradeDTO = boardService.searchGrade(clickboardCode);
				System.out.println(gradeDTO.size()+" 사이즈 무엇?");
				for (int i = 0; i < gradeDTO.size(); i++) {
					System.out.println("안들어와?");
					System.out.println(gradeDTO.get(i));
				}
				model.addAttribute("gradeDTO", gradeDTO);
				model.addAttribute("size",gradeDTO.size());
				return "/a_editboard";
			}
		} catch (Exception e) {
			System.out.println(e +" 업데이트퓨 오류");
			return "/a_editboard";
		}
	}
	
	@RequestMapping(value="/ad_boardlist", method=RequestMethod.GET)
	public String searchBoard2(String searchWay, String keyword,Model model,HttpServletRequest request) {
		
		System.out.println("호오호");
		try {
			List<BoardSearchVO> viewList = new ArrayList<BoardSearchVO>();
			List<Object> obj = new ArrayList<Object>();
			if(keyword==null|| keyword.isEmpty()) {
				System.out.println("여기 널");
				model.addAttribute("boardViewList", boardService.searchBoard());
			}else {
				System.out.println(keyword);
				obj = Arrays.asList(request.getAttribute("list"));
				for(int i=0;i<obj.size();i++) {
					viewList.add((BoardSearchVO)obj.get(i));
				}
				for(int i=0;i<viewList.size();i++) {
					System.out.println(viewList.get(i));
				}
				model.addAttribute("boardViewList", viewList);
				model.addAttribute("mas", "success");
			}
		}catch (Exception e) {
			System.out.println(e+"서치 오류");
		
		}
		return "/ad_boardlist";
	}
	
	@RequestMapping(value="/searchBoardWay", method=RequestMethod.POST	)
	public String searchBoard(String searchWay,String boardCodeforarticle, String keyword,Model model, HttpServletRequest request) throws Exception{
		System.out.println(searchWay);
		System.out.println(keyword);
		System.out.println(boardCodeforarticle+"???");
		if(keyword==null || keyword.isEmpty()) {
			model.addAttribute("boardViewList", boardService.searchBoard());
			
		}else {
			List<BoardSearchVO> list = boardService.searchBoard(searchWay, keyword);
			request.setAttribute("list", list);
			model.addAttribute("boardViewList", list);
			model.addAttribute("msg", "success");
		}
		return "/ad_boardlist";
	}
	
	@RequestMapping(value="/deleteBoardList", method =RequestMethod.GET)
	public String deleteBoardListGET(HttpServletRequest request,  String boardName2,Model model) throws Exception{
		System.out.println("딜리트 겟");
		System.out.println(boardName2+"보드코드 겟");

		model.addAttribute("boardViewList",boardService.searchBoard());	
		return "redirect:/ad_boardlist";
	}
	
	@RequestMapping(value="/deleteBoardList", method=RequestMethod.POST)
	public String deleteBoardList(@RequestParam("boardCode00")String[] boardCodes) throws Exception{
		System.out.println("딜리트 들어옴");
		
		ArrayList<String> boardCodeList = new ArrayList<String>(Arrays.asList(boardCodes));
		System.out.println(boardCodeList.size());
		for(int i=0;i<boardCodes.length;i++) {
			System.out.println(boardCodes[i]);
			System.out.println(boardCodeList.get(i));
		}
		
		boardService.deleteBoard(boardCodeList);

		return "redirect:/ad_boardlist";
	}
	
}