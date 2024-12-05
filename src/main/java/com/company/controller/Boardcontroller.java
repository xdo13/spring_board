package com.company.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.dto.BoardDTO;
import com.company.dto.PageDTO;
import com.company.service.BoardService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/board")
public class Boardcontroller {
	
	private final BoardService boardService;
	
	@GetMapping("/save")
	public String saveForm() {
		return "save";
	}
	
	@PostMapping("/save")
	public String save(@ModelAttribute BoardDTO boardDTO) {
		int saveResult = boardService.save(boardDTO);
		if(saveResult > 0) {
			return "redirect:/board/paging";
		}else {
			return "save";
		}
	}
	@GetMapping("/")
	public String findAll(Model model) {
		List<BoardDTO> boardDTOList = boardService.findAll();
		model.addAttribute("boardList", boardDTOList);
		return "list";
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam("id") Long id) {
		boardService.delete(id);
		return "redirect:/board/";
	}
	@GetMapping("/update")
	public String updateForm(@RequestParam("id") Long id, Model model) {
		BoardDTO boardDTO = boardService.findById(id);
		model.addAttribute("board", boardDTO);
		return "update";
	}
	
	@PostMapping("/update")
	public String update(@ModelAttribute BoardDTO boardDTO, Model model) {
		boardService.update(boardDTO);
		BoardDTO dto = boardService.findById(boardDTO.getId());
		model.addAttribute("board", dto);
		return "detail";
	}
	@GetMapping("/paging")
	public String paging(Model model, @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		System.out.println("page =" +page);
		List<BoardDTO> pagingList = boardService.pageList(page);
		System.out.println("pageList = " + pagingList);
		 PageDTO pageDTO = boardService.pagingParam(page); 
		  model.addAttribute("boardList", pagingList);
		  model.addAttribute("paging", pageDTO);
		 
		return "paging";
	}
	@GetMapping
	public String findById(@RequestParam("id") Long id, @RequestParam(value= "page", required = false, defaultValue = "1")int page, Model model) {
		boardService.updateHits(id);
		BoardDTO boardDTO = boardService.findById(id);
		model.addAttribute("board", boardDTO);
		model.addAttribute("page", page);
		return "detail";
	}

}
