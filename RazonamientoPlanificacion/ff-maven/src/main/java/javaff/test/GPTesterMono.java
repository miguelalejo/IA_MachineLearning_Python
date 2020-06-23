package javaff.test;

import java.io.File;
import java.util.List;

import javaff.JavaFF;
import javaff.data.GroundProblem;
import javaff.data.Plan;
import javaff.data.UngroundProblem;
import javaff.parser.PDDL21parser;
import javaff.planning.PlanningGraph;
import javaff.planning.STRIPSState;
import javaff.planning.TemporalMetricState;


public class GPTesterMono
{

	public GPTesterMono(String domain, String pfile)
	{
	}

	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		String domain = "C:\\Users\\PC-MIKE\\UNIR\\UNIR_actividades\\RazonamientoyPlainifcacion\\laboratorio\\domain.pddl";
		String pfile =  "C:\\Users\\PC-MIKE\\UNIR\\UNIR_actividades\\RazonamientoyPlainifcacion\\laboratorio\\problem-base.pddl";
		
		
		
		GPTesterMono t = new GPTesterMono(domain, pfile);

//		JavaFF.main(args);
		

		// ********************************
		// Parse and Ground the Problem
		// ********************************
		long startTime = System.currentTimeMillis();
		
		UngroundProblem unground = PDDL21parser.parseFiles(new File(domain), new File(pfile));
		GroundProblem ground = unground.ground();

		ground.setState(ground.getSTRIPSInitialState());
		
		PlanningGraph pg = new PlanningGraph(ground);
		Plan plan = pg.getPlan(ground.getState());
		plan.print(System.out);
	}

}
