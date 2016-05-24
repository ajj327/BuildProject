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
	
	
	    //-Charts-flotChart,�ι�°��
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
		
		//���Ϻ���
		@RequestMapping("/LineSeriesMarkers")
		public String LineSeriesMarkers(){
			
			return "chart/LineSeriesMarkers";
		}
		
		
		//�Ϸ�������üũ��[����] -1
		@RequestMapping("/StackedColumSeries")
		public String StackedColumSeries(){
			
			return "chart/StackedColumSeries";
		}
		
		
		//�Ϸ�������üũ��[����] -1
		@RequestMapping("/PartialPieSeries")
		public String PartialPieSeries(){
			
			return "chart/PartialPieSeries";
		}
		
		
		//�����ؼ��׷���Ȯ�ΰ���
		@RequestMapping("/LiveUpdates")
		public String LiveUpdates(){
			
			return "chart/LiveUpdates";
		}
}
