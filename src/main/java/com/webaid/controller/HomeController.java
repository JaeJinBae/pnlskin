package com.webaid.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req, Model model) {
		logger.info("main");
		
		Device device=DeviceUtils.getCurrentDevice(req);
		String deviceType="unknown";
		
		if(device == null){
			deviceType="unknown";
			logger.info("디바이스타입= "+deviceType);
			
			return "pc/index";
		}
		if(device.isMobile()){
			deviceType="mobile";
			logger.info("디바이스타입= "+deviceType);			
			return "mobile/index";
		}else if(device.isTablet()){
			deviceType="mobile";
			logger.info("디바이스타입= "+deviceType);			
			return "mobile/index";
		}else{
			deviceType="normal";
			logger.info("디바이스타입= "+deviceType);
			
			return "pc/index";
		}
	}
	
	@RequestMapping(value = "/menu01_01", method = RequestMethod.GET)
	public String menu01_01(Model model) {
		logger.info("menu01_01 get");
		
		return "pc/menu01_01";
	}
	
	@RequestMapping(value = "/menu01_02", method = RequestMethod.GET)
	public String menu01_02(Model model) {
		logger.info("menu01_02 get");
		
		return "pc/menu01_02";
	}
	
	@RequestMapping(value = "/menu01_03", method = RequestMethod.GET)
	public String menu01_03(Model model) {
		logger.info("menu01_03 get");
		
		return "pc/menu01_03";
	}
	
	@RequestMapping(value = "/menu01_04", method = RequestMethod.GET)
	public String menu01_04(Model model) {
		logger.info("menu01_04 get");
		
		return "pc/menu01_04";
	}
	
	@RequestMapping(value = "/menu01_05", method = RequestMethod.GET)
	public String menu01_05(Model model) {
		logger.info("menu01_05 get");
		
		return "pc/menu01_05";
	}
	
	@RequestMapping(value = "/menu01_06", method = RequestMethod.GET)
	public String menu01_06(Model model) {
		logger.info("menu01_06 get");
		
		return "pc/menu01_06";
	}
	
	@RequestMapping(value = "/menu01_07", method = RequestMethod.GET)
	public String menu01_07(Model model) {
		logger.info("menu01_07 get");
		
		return "pc/menu01_07";
	}
	
	@RequestMapping(value = "/menu01_08", method = RequestMethod.GET)
	public String menu01_08(Model model) {
		logger.info("menu01_08 get");
		
		return "pc/menu01_08";
	}
	
	@RequestMapping(value = "/menu02_01", method = RequestMethod.GET)
	public String menu02_01(Model model) {
		logger.info("menu02_01 get");
		
		return "pc/menu02_01";
	}

	@RequestMapping(value = "/menu02_02", method = RequestMethod.GET)
	public String menu02_02(Model model) {
		logger.info("menu02_02 get");
		
		return "pc/menu02_02";
	}

	@RequestMapping(value = "/menu02_03", method = RequestMethod.GET)
	public String menu02_03(Model model) {
		logger.info("menu02_03 get");
		
		return "pc/menu02_03";
	}

	@RequestMapping(value = "/menu02_04", method = RequestMethod.GET)
	public String menu02_04(Model model) {
		logger.info("menu02_04 get");
		
		return "pc/menu02_04";
	}

	@RequestMapping(value = "/menu02_05", method = RequestMethod.GET)
	public String menu02_05(Model model) {
		logger.info("menu02_05 get");
		
		return "pc/menu02_05";
	}

	@RequestMapping(value = "/menu02_06", method = RequestMethod.GET)
	public String menu02_06(Model model) {
		logger.info("menu02_06 get");
		
		return "pc/menu02_06";
	}

	@RequestMapping(value = "/menu02_07", method = RequestMethod.GET)
	public String menu02_07(Model model) {
		logger.info("menu02_07 get");
		
		return "pc/menu02_07";
	}

	@RequestMapping(value = "/menu02_08", method = RequestMethod.GET)
	public String menu02_08(Model model) {
		logger.info("menu02_08 get");
		
		return "pc/menu02_08";
	}

	@RequestMapping(value = "/menu02_09", method = RequestMethod.GET)
	public String menu02_09(Model model) {
		logger.info("menu02_09 get");
		
		return "pc/menu02_09";
	}

	@RequestMapping(value = "/menu02_10", method = RequestMethod.GET)
	public String menu02_10(Model model) {
		logger.info("menu02_10 get");
		
		return "pc/menu02_10";
	}

	@RequestMapping(value = "/menu02_11", method = RequestMethod.GET)
	public String menu02_11(Model model) {
		logger.info("menu02_11 get");
		
		return "pc/menu02_11";
	}

	@RequestMapping(value = "/menu02_12", method = RequestMethod.GET)
	public String menu02_12(Model model) {
		logger.info("menu02_12 get");
		
		return "pc/menu02_12";
	}

	@RequestMapping(value = "/menu03_00", method = RequestMethod.GET)
	public String menu03_00(Model model) {
		logger.info("menu03_00 get");
		
		return "pc/menu03_00";
	}
	
	@RequestMapping(value = "/menu03_01", method = RequestMethod.GET)
	public String menu03_01(Model model) {
		logger.info("menu03_01 get");
		
		return "pc/menu03_01";
	}

	@RequestMapping(value = "/menu03_02", method = RequestMethod.GET)
	public String menu03_02(Model model) {
		logger.info("menu03_02 get");
		
		return "pc/menu03_02";
	}

	@RequestMapping(value = "/menu03_03", method = RequestMethod.GET)
	public String menu03_03(Model model) {
		logger.info("menu03_03 get");
		
		return "pc/menu03_03";
	}

	@RequestMapping(value = "/menu03_04", method = RequestMethod.GET)
	public String menu03_04(Model model) {
		logger.info("menu03_04 get");
		
		return "pc/menu03_04";
	}

	@RequestMapping(value = "/menu03_05", method = RequestMethod.GET)
	public String menu03_05(Model model) {
		logger.info("menu03_05 get");
		
		return "pc/menu03_05";
	}

	@RequestMapping(value = "/menu03_06", method = RequestMethod.GET)
	public String menu03_06(Model model) {
		logger.info("menu03_06 get");
		
		return "pc/menu03_06";
	}

	@RequestMapping(value = "/menu03_07", method = RequestMethod.GET)
	public String menu03_07(Model model) {
		logger.info("menu03_07 get");
		
		return "pc/menu03_07";
	}

	@RequestMapping(value = "/menu03_08", method = RequestMethod.GET)
	public String menu03_08(Model model) {
		logger.info("menu03_08 get");
		
		return "pc/menu03_08";
	}

	@RequestMapping(value = "/menu03_09", method = RequestMethod.GET)
	public String menu03_09(Model model) {
		logger.info("menu03_09 get");
		
		return "pc/menu03_09";
	}

	@RequestMapping(value = "/menu03_10", method = RequestMethod.GET)
	public String menu03_10(Model model) {
		logger.info("menu03_10 get");
		
		return "pc/menu03_10";
	}

	@RequestMapping(value = "/menu03_11", method = RequestMethod.GET)
	public String menu03_11(Model model) {
		logger.info("menu03_11 get");
		
		return "pc/menu03_11";
	}

	@RequestMapping(value = "/menu03_12", method = RequestMethod.GET)
	public String menu03_12(Model model) {
		logger.info("menu03_12 get");
		
		return "pc/menu03_12";
	}

	@RequestMapping(value = "/menu03_13", method = RequestMethod.GET)
	public String menu03_13(Model model) {
		logger.info("menu03_13 get");
		
		return "pc/menu03_13";
	}

	@RequestMapping(value = "/menu03_14", method = RequestMethod.GET)
	public String menu03_14(Model model) {
		logger.info("menu03_14 get");
		
		return "pc/menu03_14";
	}

	@RequestMapping(value = "/menu03_15", method = RequestMethod.GET)
	public String menu03_15(Model model) {
		logger.info("menu03_15 get");
		
		return "pc/menu03_15";
	}

	@RequestMapping(value = "/menu03_16", method = RequestMethod.GET)
	public String menu03_16(Model model) {
		logger.info("menu03_16 get");
		
		return "pc/menu03_16";
	}

	@RequestMapping(value = "/menu03_17", method = RequestMethod.GET)
	public String menu03_17(Model model) {
		logger.info("menu03_17 get");
		
		return "pc/menu03_17";
	}

	@RequestMapping(value = "/menu03_18", method = RequestMethod.GET)
	public String menu03_18(Model model) {
		logger.info("menu03_18 get");
		
		return "pc/menu03_18";
	}

	@RequestMapping(value = "/menu04_01", method = RequestMethod.GET)
	public String menu04_01(Model model) {
		logger.info("menu04_01 get");
		
		return "pc/menu04_01";
	}

	@RequestMapping(value = "/menu04_02", method = RequestMethod.GET)
	public String menu04_02(Model model) {
		logger.info("menu04_02 get");
		
		return "pc/menu04_02";
	}
	
	@RequestMapping(value = "/menu04_03", method = RequestMethod.GET)
	public String menu04_03(Model model) {
		logger.info("menu04_03 get");
		
		return "pc/menu04_03";
	}

	@RequestMapping(value = "/menu04_04", method = RequestMethod.GET)
	public String menu04_04(Model model) {
		logger.info("menu04_04 get");
		
		return "pc/menu04_04";
	}

	@RequestMapping(value = "/menu04_05", method = RequestMethod.GET)
	public String menu04_05(Model model) {
		logger.info("menu04_05 get");
		
		return "pc/menu04_05";
	}

	@RequestMapping(value = "/menu04_06", method = RequestMethod.GET)
	public String menu04_06(Model model) {
		logger.info("menu04_06 get");
		
		return "pc/menu04_06";
	}

	@RequestMapping(value = "/menu04_07", method = RequestMethod.GET)
	public String menu04_07(Model model) {
		logger.info("menu04_07 get");
		
		return "pc/menu04_07";
	}

	@RequestMapping(value = "/menu04_08", method = RequestMethod.GET)
	public String menu04_08(Model model) {
		logger.info("menu04_08 get");
		
		return "pc/menu04_08";
	}

	@RequestMapping(value = "/menu04_09", method = RequestMethod.GET)
	public String menu04_09(Model model) {
		logger.info("menu04_09 get");
		
		return "pc/menu04_09";
	}

	@RequestMapping(value = "/menu04_10", method = RequestMethod.GET)
	public String menu04_10(Model model) {
		logger.info("menu04_10 get");
		
		return "pc/menu04_10";
	}

	@RequestMapping(value = "/menu04_11", method = RequestMethod.GET)
	public String menu04_11(Model model) {
		logger.info("menu04_11 get");
		
		return "pc/menu04_11";
	}

	@RequestMapping(value = "/menu04_12", method = RequestMethod.GET)
	public String menu04_12(Model model) {
		logger.info("menu04_12 get");
		
		return "pc/menu04_12";
	}

	@RequestMapping(value = "/menu04_13", method = RequestMethod.GET)
	public String menu04_13(Model model) {
		logger.info("menu04_13 get");
		
		return "pc/menu04_13";
	}

	@RequestMapping(value = "/menu04_14", method = RequestMethod.GET)
	public String menu04_14(Model model) {
		logger.info("menu04_14 get");
		
		return "pc/menu04_14";
	}

	@RequestMapping(value = "/menu04_15", method = RequestMethod.GET)
	public String menu04_15(Model model) {
		logger.info("menu04_15 get");
		
		return "pc/menu04_15";
	}

	@RequestMapping(value = "/menu04_16", method = RequestMethod.GET)
	public String menu04_16(Model model) {
		logger.info("menu04_16 get");
		
		return "pc/menu04_16";
	}

	@RequestMapping(value = "/menu04_17", method = RequestMethod.GET)
	public String menu04_17(Model model) {
		logger.info("menu04_17 get");
		
		return "pc/menu04_17";
	}

	@RequestMapping(value = "/menu04_18", method = RequestMethod.GET)
	public String menu04_18(Model model) {
		logger.info("menu04_18 get");
		
		return "pc/menu04_18";
	}

	@RequestMapping(value = "/menu05_01", method = RequestMethod.GET)
	public String menu05_01(Model model) {
		logger.info("menu05_01 get");
		
		return "pc/menu05_01";
	}

	@RequestMapping(value = "/menu05_02", method = RequestMethod.GET)
	public String menu05_02(Model model) {
		logger.info("menu05_02 get");
		
		return "pc/menu05_02";
	}

	@RequestMapping(value = "/menu05_03", method = RequestMethod.GET)
	public String menu05_03(Model model) {
		logger.info("menu05_03 get");
		
		return "pc/menu05_03";
	}

	@RequestMapping(value = "/menu05_04", method = RequestMethod.GET)
	public String menu05_04(Model model) {
		logger.info("menu05_04 get");
		
		return "pc/menu05_04";
	}

	@RequestMapping(value = "/menu05_05", method = RequestMethod.GET)
	public String menu05_05(Model model) {
		logger.info("menu05_05 get");
		
		return "pc/menu05_05";
	}

	@RequestMapping(value = "/menu05_06", method = RequestMethod.GET)
	public String menu05_06(Model model) {
		logger.info("menu05_06 get");
		
		return "pc/menu05_06";
	}

	@RequestMapping(value = "/menu05_07", method = RequestMethod.GET)
	public String menu05_07(Model model) {
		logger.info("menu05_07 get");
		
		return "pc/menu05_07";
	}

	@RequestMapping(value = "/menu05_08", method = RequestMethod.GET)
	public String menu05_08(Model model) {
		logger.info("menu05_08 get");
		
		return "pc/menu05_08";
	}

	@RequestMapping(value = "/menu05_09", method = RequestMethod.GET)
	public String menu05_09(Model model) {
		logger.info("menu05_09 get");
		
		return "pc/menu05_09";
	}

	@RequestMapping(value = "/menu05_10", method = RequestMethod.GET)
	public String menu05_10(Model model) {
		logger.info("menu05_10 get");
		
		return "pc/menu05_10";
	}

	@RequestMapping(value = "/menu05_11", method = RequestMethod.GET)
	public String menu05_11(Model model) {
		logger.info("menu05_11 get");
		
		return "pc/menu05_11";
	}

	@RequestMapping(value = "/menu05_12", method = RequestMethod.GET)
	public String menu05_12(Model model) {
		logger.info("menu05_12 get");
		
		return "pc/menu05_12";
	}

	@RequestMapping(value = "/menu05_13", method = RequestMethod.GET)
	public String menu05_13(Model model) {
		logger.info("menu05_13 get");
		
		return "pc/menu05_13";
	}

	@RequestMapping(value = "/menu05_14", method = RequestMethod.GET)
	public String menu05_14(Model model) {
		logger.info("menu05_14 get");
		
		return "pc/menu05_14";
	}

	@RequestMapping(value = "/menu05_15", method = RequestMethod.GET)
	public String menu05_15(Model model) {
		logger.info("menu05_15 get");
		
		return "pc/menu05_15";
	}

	@RequestMapping(value = "/menu05_16", method = RequestMethod.GET)
	public String menu05_16(Model model) {
		logger.info("menu05_16 get");
		
		return "pc/menu05_16";
	}

	@RequestMapping(value = "/menu05_17", method = RequestMethod.GET)
	public String menu05_17(Model model) {
		logger.info("menu05_17 get");
		
		return "pc/menu05_17";
	}

	@RequestMapping(value = "/menu05_18", method = RequestMethod.GET)
	public String menu05_18(Model model) {
		logger.info("menu05_18 get");
		
		return "pc/menu05_18";
	}

	@RequestMapping(value = "/menu05_20", method = RequestMethod.GET)
	public String menu05_20(Model model) {
		logger.info("menu05_20 get");
		
		return "pc/menu05_20";
	}

	@RequestMapping(value = "/menu05_21", method = RequestMethod.GET)
	public String menu05_21(Model model) {
		logger.info("menu05_21 get");
		
		return "pc/menu05_21";
	}

	@RequestMapping(value = "/menu06_01", method = RequestMethod.GET)
	public String menu06_01(Model model) {
		logger.info("menu06_01 get");
		
		return "pc/menu06_01";
	}

	@RequestMapping(value = "/menu06_02", method = RequestMethod.GET)
	public String menu06_02(Model model) {
		logger.info("menu06_02 get");
		
		return "pc/menu06_02";
	}

	@RequestMapping(value = "/menu06_03", method = RequestMethod.GET)
	public String menu06_03(Model model) {
		logger.info("menu06_03 get");
		
		return "pc/menu06_03";
	}

	@RequestMapping(value = "/menu06_04", method = RequestMethod.GET)
	public String menu06_04(Model model) {
		logger.info("menu06_04 get");
		
		return "pc/menu06_04";
	}

	@RequestMapping(value = "/menu06_05", method = RequestMethod.GET)
	public String menu06_05(Model model) {
		logger.info("menu06_05 get");
		
		return "pc/menu06_05";
	}

	@RequestMapping(value = "/menu06_06", method = RequestMethod.GET)
	public String menu06_06(Model model) {
		logger.info("menu06_06 get");
		
		return "pc/menu06_06";
	}

	@RequestMapping(value = "/menu06_07", method = RequestMethod.GET)
	public String menu06_07(Model model) {
		logger.info("menu06_07 get");
		
		return "pc/menu06_07";
	}

	@RequestMapping(value = "/menu06_08", method = RequestMethod.GET)
	public String menu06_08(Model model) {
		logger.info("menu06_08 get");
		
		return "pc/menu06_08";
	}

	@RequestMapping(value = "/menu06_09", method = RequestMethod.GET)
	public String menu06_09(Model model) {
		logger.info("menu06_09 get");
		
		return "pc/menu06_09";
	}

	@RequestMapping(value = "/menu06_10", method = RequestMethod.GET)
	public String menu06_10(Model model) {
		logger.info("menu06_10 get");
		
		return "pc/menu06_10";
	}

	@RequestMapping(value = "/menu06_11", method = RequestMethod.GET)
	public String menu06_11(Model model) {
		logger.info("menu06_11 get");
		
		return "pc/menu06_11";
	}

	@RequestMapping(value = "/menu06_12", method = RequestMethod.GET)
	public String menu06_12(Model model) {
		logger.info("menu06_12 get");
		
		return "pc/menu06_12";
	}

	@RequestMapping(value = "/menu06_13", method = RequestMethod.GET)
	public String menu06_13(Model model) {
		logger.info("menu06_13 get");
		
		return "pc/menu06_13";
	}

	@RequestMapping(value = "/menu06_14", method = RequestMethod.GET)
	public String menu06_14(Model model) {
		logger.info("menu06_14 get");
		
		return "pc/menu06_14";
	}

	@RequestMapping(value = "/menu06_15", method = RequestMethod.GET)
	public String menu06_15(Model model) {
		logger.info("menu06_15 get");
		
		return "pc/menu06_15";
	}

	@RequestMapping(value = "/menu07_01", method = RequestMethod.GET)
	public String menu07_01(Model model) {
		logger.info("menu07_01 get");
		
		return "pc/menu07_01";
	}

	@RequestMapping(value = "/menu07_02", method = RequestMethod.GET)
	public String menu07_02(Model model) {
		logger.info("menu07_02 get");
		
		return "pc/menu07_02";
	}

	@RequestMapping(value = "/menu07_03", method = RequestMethod.GET)
	public String menu07_03(Model model) {
		logger.info("menu07_03 get");
		
		return "pc/menu07_03";
	}

	@RequestMapping(value = "/menu07_04", method = RequestMethod.GET)
	public String menu07_04(Model model) {
		logger.info("menu07_04 get");
		
		return "pc/menu07_04";
	}

	@RequestMapping(value = "/menu07_05", method = RequestMethod.GET)
	public String menu07_05(Model model) {
		logger.info("menu07_05 get");
		
		return "pc/menu07_05";
	}

	@RequestMapping(value = "/menu07_06", method = RequestMethod.GET)
	public String menu07_06(Model model) {
		logger.info("menu07_06 get");
		
		return "pc/menu07_06";
	}

	@RequestMapping(value = "/menu07_07", method = RequestMethod.GET)
	public String menu07_07(Model model) {
		logger.info("menu07_07 get");
		
		return "pc/menu07_07";
	}

	@RequestMapping(value = "/menu08_01", method = RequestMethod.GET)
	public String menu08_01(Model model) {
		logger.info("menu08_01 get");
		
		return "pc/menu08_01";
	}

	@RequestMapping(value = "/menu08_02", method = RequestMethod.GET)
	public String menu08_02(Model model) {
		logger.info("menu08_02 get");
		
		return "pc/menu08_02";
	}

	@RequestMapping(value = "/menu08_03", method = RequestMethod.GET)
	public String menu08_03(Model model) {
		logger.info("menu08_03 get");
		
		return "pc/menu08_03";
	}

	@RequestMapping(value = "/menu08_04", method = RequestMethod.GET)
	public String menu08_04(Model model) {
		logger.info("menu08_04 get");
		
		return "pc/menu08_04";
	}

	@RequestMapping(value = "/menu08_05", method = RequestMethod.GET)
	public String menu08_05(Model model) {
		logger.info("menu08_05 get");
		
		return "pc/menu08_05";
	}

	@RequestMapping(value = "/menu08_06", method = RequestMethod.GET)
	public String menu08_06(Model model) {
		logger.info("menu08_06 get");
		
		return "pc/menu08_06";
	}

	@RequestMapping(value = "/menu08_07", method = RequestMethod.GET)
	public String menu08_07(Model model) {
		logger.info("menu08_07 get");
		
		return "pc/menu08_07";
	}

	@RequestMapping(value = "/menu08_08", method = RequestMethod.GET)
	public String menu08_08(Model model) {
		logger.info("menu08_08 get");
		
		return "pc/menu08_08";
	}

	@RequestMapping(value = "/menu09_01", method = RequestMethod.GET)
	public String menu09_01(Model model) {
		logger.info("menu09_01 get");
		
		return "pc/menu09_01";
	}

	@RequestMapping(value = "/menu09_02", method = RequestMethod.GET)
	public String menu09_02(Model model) {
		logger.info("menu09_02 get");
		
		return "pc/menu09_02";
	}

	@RequestMapping(value = "/menu09_03", method = RequestMethod.GET)
	public String menu09_03(Model model) {
		logger.info("menu09_03 get");
		
		return "pc/menu09_03";
	}

	@RequestMapping(value = "/menu09_04", method = RequestMethod.GET)
	public String menu09_04(Model model) {
		logger.info("menu09_04 get");
		
		return "pc/menu09_04";
	}

	@RequestMapping(value = "/menu09_05", method = RequestMethod.GET)
	public String menu09_05(Model model) {
		logger.info("menu09_05 get");
		
		return "pc/menu09_05";
	}

	@RequestMapping(value = "/menu10_01", method = RequestMethod.GET)
	public String menu10_01(Model model) {
		logger.info("menu10_01 get");
		
		return "pc/menu10_01";
	}

	@RequestMapping(value = "/menu10_02", method = RequestMethod.GET)
	public String menu10_02(Model model) {
		logger.info("menu10_02 get");
		
		return "pc/menu10_02";
	}

	@RequestMapping(value = "/menu10_03", method = RequestMethod.GET)
	public String menu10_03(Model model) {
		logger.info("menu10_03 get");
		
		return "pc/menu10_03";
	}

	@RequestMapping(value = "/menu10_04", method = RequestMethod.GET)
	public String menu10_04(Model model) {
		logger.info("menu10_04 get");
		
		return "pc/menu10_04";
	}

	@RequestMapping(value = "/menu10_05", method = RequestMethod.GET)
	public String menu10_05(Model model) {
		logger.info("menu10_05 get");
		
		return "pc/menu10_05";
	}

	@RequestMapping(value = "/menu10_06", method = RequestMethod.GET)
	public String menu10_06(Model model) {
		logger.info("menu10_06 get");
		
		return "pc/menu10_06";
	}

	@RequestMapping(value = "/menu10_07", method = RequestMethod.GET)
	public String menu10_07(Model model) {
		logger.info("menu10_07 get");
		
		return "pc/menu10_07";
	}

	@RequestMapping(value = "/menu11_01", method = RequestMethod.GET)
	public String menu11_01(Model model) {
		logger.info("menu11_01 get");
		
		return "pc/menu11_01";
	}

	@RequestMapping(value = "/menu11_02", method = RequestMethod.GET)
	public String menu11_02(Model model) {
		logger.info("menu11_02 get");
		
		return "pc/menu11_02";
	}

	@RequestMapping(value = "/menu11_03", method = RequestMethod.GET)
	public String menu11_03(Model model) {
		logger.info("menu11_03 get");
		
		return "pc/menu11_03";
	}

	@RequestMapping(value = "/menu11_04", method = RequestMethod.GET)
	public String menu11_04(Model model) {
		logger.info("menu11_04 get");
		
		return "pc/menu11_04";
	}

	@RequestMapping(value = "/menu11_05", method = RequestMethod.GET)
	public String menu11_05(Model model) {
		logger.info("menu11_05 get");
		
		return "pc/menu11_05";
	}

	@RequestMapping(value = "/menu11_06", method = RequestMethod.GET)
	public String menu11_06(Model model) {
		logger.info("menu11_06 get");
		
		return "pc/menu11_06";
	}

	@RequestMapping(value = "/menu11_07", method = RequestMethod.GET)
	public String menu11_07(Model model) {
		logger.info("menu11_07 get");
		
		return "pc/menu11_07";
	}

	@RequestMapping(value = "/menu11_08", method = RequestMethod.GET)
	public String menu11_08(Model model) {
		logger.info("menu11_08 get");
		
		return "pc/menu11_08";
	}

	@RequestMapping(value = "/menu11_09", method = RequestMethod.GET)
	public String menu11_09(Model model) {
		logger.info("menu11_09 get");
		
		return "pc/menu11_09";
	}

	@RequestMapping(value = "/menu12_01", method = RequestMethod.GET)
	public String menu12_01(Model model) {
		logger.info("menu12_01 get");
		
		return "pc/menu12_01";
	}

	@RequestMapping(value = "/menu12_02", method = RequestMethod.GET)
	public String menu12_02(Model model) {
		logger.info("menu12_02 get");
		
		return "pc/menu12_02";
	}

	@RequestMapping(value = "/menu12_03", method = RequestMethod.GET)
	public String menu12_03(Model model) {
		logger.info("menu12_03 get");
		
		return "pc/menu12_03";
	}

	@RequestMapping(value = "/menu12_04", method = RequestMethod.GET)
	public String menu12_04(Model model) {
		logger.info("menu12_04 get");
		
		return "pc/menu12_04";
	}

	@RequestMapping(value = "/menu12_05", method = RequestMethod.GET)
	public String menu12_05(Model model) {
		logger.info("menu12_05 get");
		
		return "pc/menu12_05";
	}

	@RequestMapping(value = "/menu12_06", method = RequestMethod.GET)
	public String menu12_06(Model model) {
		logger.info("menu12_06 get");
		
		return "pc/menu12_06";
	}

	@RequestMapping(value = "/menu12_07", method = RequestMethod.GET)
	public String menu12_07(Model model) {
		logger.info("menu12_07 get");
		
		return "pc/menu12_07";
	}

	@RequestMapping(value = "/menu12_08", method = RequestMethod.GET)
	public String menu12_08(Model model) {
		logger.info("menu12_08 get");
		
		return "pc/menu12_08";
	}

	@RequestMapping(value = "/menu12_09", method = RequestMethod.GET)
	public String menu12_09(Model model) {
		logger.info("menu12_09 get");
		
		return "pc/menu12_09";
	}

	@RequestMapping(value = "/menu13_01", method = RequestMethod.GET)
	public String menu13_01(Model model) {
		logger.info("menu13_01 get");
		
		return "pc/menu13_01";
	}

	@RequestMapping(value = "/menu13_02", method = RequestMethod.GET)
	public String menu13_02(Model model) {
		logger.info("menu13_02 get");
		
		return "pc/menu13_02";
	}

	@RequestMapping(value = "/menu13_03", method = RequestMethod.GET)
	public String menu13_03(Model model) {
		logger.info("menu13_03 get");
		
		return "pc/menu13_03";
	}

	@RequestMapping(value = "/menu13_04", method = RequestMethod.GET)
	public String menu13_04(Model model) {
		logger.info("menu13_04 get");
		
		return "pc/menu13_04";
	}

	@RequestMapping(value = "/menu13_05", method = RequestMethod.GET)
	public String menu13_05(Model model) {
		logger.info("menu13_05 get");
		
		return "pc/menu13_05";
	}

	@RequestMapping(value = "/menu13_06", method = RequestMethod.GET)
	public String menu13_06(Model model) {
		logger.info("menu13_06 get");
		
		return "pc/menu13_06";
	}

	@RequestMapping(value = "/menu13_07", method = RequestMethod.GET)
	public String menu13_07(Model model) {
		logger.info("menu13_07 get");
		
		return "pc/menu13_07";
	}

	@RequestMapping(value = "/menu13_08", method = RequestMethod.GET)
	public String menu13_08(Model model) {
		logger.info("menu13_08 get");
		
		return "pc/menu13_08";
	}

	@RequestMapping(value = "/menu13_09", method = RequestMethod.GET)
	public String menu13_09(Model model) {
		logger.info("menu13_09 get");
		
		return "pc/menu13_09";
	}

	@RequestMapping(value = "/menu13_10", method = RequestMethod.GET)
	public String menu13_10(Model model) {
		logger.info("menu13_10 get");
		
		return "pc/menu13_10";
	}

	@RequestMapping(value = "/menu13_11", method = RequestMethod.GET)
	public String menu13_11(Model model) {
		logger.info("menu13_11 get");
		
		return "pc/menu13_11";
	}

	@RequestMapping(value = "/menu13_12", method = RequestMethod.GET)
	public String menu13_12(Model model) {
		logger.info("menu13_12 get");
		
		return "pc/menu13_12";
	}

	@RequestMapping(value = "/menu13_13", method = RequestMethod.GET)
	public String menu13_13(Model model) {
		logger.info("menu13_13 get");
		
		return "pc/menu13_13";
	}

	@RequestMapping(value = "/menu14_01", method = RequestMethod.GET)
	public String menu14_01(Model model) {
		logger.info("menu14_01 get");
		
		return "pc/menu14_01";
	}

	@RequestMapping(value = "/menu14_02", method = RequestMethod.GET)
	public String menu14_02(Model model) {
		logger.info("menu14_02 get");
		
		return "pc/menu14_02";
	}

	@RequestMapping(value = "/menu14_03", method = RequestMethod.GET)
	public String menu14_03(Model model) {
		logger.info("menu14_03 get");
		
		return "pc/menu14_03";
	}

	@RequestMapping(value = "/menu14_04", method = RequestMethod.GET)
	public String menu14_04(Model model) {
		logger.info("menu14_04 get");
		
		return "pc/menu14_04";
	}

	@RequestMapping(value = "/menu14_05", method = RequestMethod.GET)
	public String menu14_05(Model model) {
		logger.info("menu14_05 get");
		
		return "pc/menu14_05";
	}

	@RequestMapping(value = "/menu14_06", method = RequestMethod.GET)
	public String menu14_61(Model model) {
		logger.info("menu14_06 get");
		
		return "pc/menu14_06";
	}
	
}
