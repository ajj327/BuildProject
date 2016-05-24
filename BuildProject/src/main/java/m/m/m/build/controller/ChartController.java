package m.m.m.build.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChartController {

	
	
		//chartIndex
		@RequestMapping("/ChartIndex")
		public String ChartIndex(){
			
			return "chart/index";
		}
	
	
	    //-Charts-flotChart,두번째바
		@RequestMapping("/flot")
		public String flot(){
			
			return "chart/flot";
		}
		
		
		//-Charts-Morris
		@RequestMapping("/morris")
		public String morris(){
			
			return "chart/morris";
		}
		

		//-----------Add jQuery
		
		//요일별용
		@RequestMapping("/LineSeriesMarkers")
		public String LineSeriesMarkers(){
			
			return "chart/LineSeriesMarkers";
		}
		
		
		//하루사용자재체크용[비율] -1
		@RequestMapping("/StackedColumSeries")
		public String StackedColumSeries(){
			
			return "chart/StackedColumSeries";
		}
		
		
		//하루사용자재체크용[비율] -1
		@RequestMapping("/PartialPieSeries")
		public String PartialPieSeries(){
			
			return "chart/PartialPieSeries";
		}
		
		
		//선택해서그래프확인가능
		@RequestMapping("/LiveUpdates")
		public String LiveUpdates(){
			
			return "chart/LiveUpdates";
		}
}
