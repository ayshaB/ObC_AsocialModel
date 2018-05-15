//  study1_domain.m
//
//  Initially created by Charles Efferson on 8 Sept 2016.
//  Copyright 2016, University of Zurich.
//  All rights reserved.

#import "study1_domain.h" //gets in the variable list.
#import "mt19937ar.h" //this is the random no generator.
#import <stdlib.h>  //some atoi gunna happen up in here


@implementation study1_domain //implements the getters from the h file.

// getters

-(double) probStateAZero
{
	return probStateAZero;
}


-(int) stateA
{
	return stateA;
}


-(double) probStateBZero
{
	return probStateBZero;
}


-(int) stateB
{
	return stateB;
}


-(double) domRand
{
	return domRand;
}


-(double) probDomNone
{
	return probDomNone;
}


-(double) probDomZeroOne
{
	return probDomZeroOne;
}


-(double) probDomOneZero
{
	return probDomOneZero;
}


-(int) domainA
{
	return domainA;
}


-(int) domainB
{
	return domainB;
}

-(double) probKZero
{
	return probKZero;
}


-(int) behaviourK
{
	return behaviourK;
}


-(int) tempBehaviourK
{
	return tempBehaviourK;
}


-(double) exoFitness 
{
	return exoFitness;
}


-(double) endoFitness
{
	return endoFitness;
}



-(double) fitness
{
	return fitness;
}


-(double) totalFitness
{
	return totalFitness;
}


-(double) fitnessAsCumProp  
{
	return fitnessAsCumProp;
}


-(double) tempFitness  
{
	return tempFitness;
}


-(int) agentCopiedBehaviourFrom 
{
	return agentCopiedBehaviourFrom;
}


-(double) probMutate  
{
	return probMutate;
}

-(int) mutateDummy
{
	return mutateDummy;
}


-(int) tempMutateDummy
{
	return tempMutateDummy;
}


-(double) fitAMatchBehOne
{
	return fitAMatchBehOne;
}


-(double) fitAMatchBehZero
{
	return fitAMatchBehZero;
}


-(double) fitADiffBehZero
{
	return fitADiffBehZero;
}


-(double) fitADiffBehOne
{
	return fitADiffBehOne;
}


-(double) fitBMatchBehOne
{
	return fitBMatchBehOne;
}


-(double) fitBMatchBehZero
{
	return fitBMatchBehZero;
}


-(double) fitBDiffBehZero
{
	return fitBDiffBehZero;
}


-(double) fitBDiffBehOne
{
	return fitBDiffBehOne;
}




//  setters: sets the implemented variables.
-(void) setProbStateAZero: (double) PStateAZ
{
	probStateAZero = PStateAZ;
}


-(void) setStateA: (int) StateA
{
	stateA = StateA;
}


-(void) setProbStateBZero: (double) PStateBZ
{
	probStateBZero = PStateBZ;
}


-(void) setStateB: (int) StateB
{
	stateB = StateB;
}

-(void) setDomRand: (double) drand;
{
	domRand = drand;
}


-(void) setProbDomNone: (double) PDNo
{
	probDomNone = PDNo;
}


-(void) setProbDomZeroOne: (double) PDZO
{
	probDomZeroOne = PDZO;
}


-(void) setProbDomOneZero: (double) PDOZ
{
	probDomOneZero = PDOZ;
}


-(void) setDomainA: (int) domA
{
	domainA = domA;
}


-(void) setDomainB: (int) domB
{
	domainB = domB;
}


-(void) setProbKZero: (double) PKZ
{
	probKZero = PKZ;
}


-(void) setBehaviourK: (int) behK
{
	behaviourK = behK;
}


-(void) setTempBehaviourK: (int) tbehk
{
	tempBehaviourK = tbehk;
}


-(void) setExoFitness: (double) exoFit  
{
	exoFitness = exoFit;
}


-(void) setEndoFitness: (double) endoFit;
{
	endoFitness = endoFit;
}


-(void) setFitness: (double) fit;
{
	fitness = fit;
}


-(void) setTotalFitness: (double) toFit;
{
	totalFitness = toFit;
}


-(void) setFitnessAsCumProp: (double) fitCumProp //calculation to work out fitness as a cumulative probability.
{
	fitnessAsCumProp = fitCumProp; 
	if (fitnessAsCumProp > 1.0)
	{
		fitnessAsCumProp = 1.0; //ensures that the value is always between 0 and 1 by resetting any no above 1 to 1.
	}
} 


-(void) setTempFitness: (double) tFitness  
{
	tempFitness = tFitness;
}


-(void) setAgentCopiedBehaviourFrom: (int) aCopBeh 
{
	agentCopiedBehaviourFrom = aCopBeh;
}


-(void) setProbMutate: (double) pMut 
{
	probMutate = pMut;
}


-(void) setMutateDummy: (int) MutDum
{
	mutateDummy = MutDum;
}


-(void) setTempMutateDummy: (int) teMutDum
{
	tempMutateDummy = teMutDum;
}


-(void) setFitAMatchBehOne: (double) FAMatchOne
{
	fitAMatchBehOne = FAMatchOne;
}


-(void) setFitAMatchBehZero: (double) FAMatchZero
{
	fitAMatchBehZero = FAMatchZero;
}


-(void) setFitADiffBehZero: (double) FADiffZero
{
	fitADiffBehZero = FADiffZero;
}


-(void) setFitADiffBehOne: (double) FADiffOne
{
	fitADiffBehOne = FADiffOne;
}


-(void) setFitBMatchBehOne: (double) FBMatchOne
{
	fitBMatchBehOne = FBMatchOne;
}


-(void) setFitBMatchBehZero: (double) FBMatchZero
{
	fitBMatchBehZero = FBMatchZero;
}


-(void) setFitBDiffBehZero: (double) FBDiffZero
{
	fitBDiffBehZero = FBDiffZero;
}


-(void) setFitBDiffBehOne: (double) FBDiffOne
{
	fitBDiffBehOne = FBDiffOne;
}




// defines procedural methods --------------------------------------------
-(void) assignbehaviourK //decides the behaviour for first generation.
{
	if (((double) 1.0 - genrand_real2()) <= probKZero) //if this value falls within the probability of beh k being 0, as entered into code on main.m script.
	{
		behaviourK = 0;  //then assign behaviour as 0.
	}
	else 
	{
		behaviourK = 1;  //or behaviour is always 1.
	}
}


-(void) assigndomain //assigns agents to decide in both, neither or one domain.
{
	domRand = genrand_real2();  //assign a generated random number to domRand variable.
	if (((double) 1.0 - domRand) <= probDomNone) //if a random number is within the range of the probability of assigning neither domain.
	{
		domainA = 0; //then sets both domains to 0 to indicate they do not make their decisions in a domain.
		domainB = 0;
	}
	else if (((double) 1.0 - domRand) > probDomNone <= (probDomNone + probDomOneZero)) //change domain a first!!!. this random number has to fall within the probability range that the agent decides in DomainB not A.
	{
		domainA = 1; //assigns domainA as 0 -> doesn't decide here.
		domainB = 0; //assigns a 1 to DomainB as decides here.
	}
	else if ((((double) 1.0 - domRand) > (probDomNone + probDomOneZero)) <= (probDomNone + probDomOneZero + probDomZeroOne))
	{
		domainA = 0; //assigns a 1 to DomainA as decides here.
		domainB = 1; //assigns domainB as 0 -> doesn't decide here.
	}
	else //in all other cases, the ppt decides in both domains.
	{
		domainA = 1; //so assigns a 1 to both.
		domainB = 1;
	}
}


-(void) calculatestateA //randomly assigns the state to 0 or 1 for those that decide in domainA.
{
	
	 if (((double) 1.0 - genrand_real2()) <= probStateAZero)  //if a random no falls within the probability that the state is 0.
	 {
		stateA = 0;  //then assigns a 0 to state.
	 }
	 else
	 { 
        stateA = 1; //otherwise state is 1.
     }
}


-(void) calculatestateB //randomly assigns the state to 0 or 1 for those that decide in domainB.
{
	 if (((double) 1.0 - genrand_real2()) <= probStateBZero) //if a random no falls within the probability that the state is 0.
	 {
		stateB = 0;  //then assigns a 0 to state.
	 }
	 else
	 { 
        stateB = 1;  //otherwise state is 1.
	 }
}
//in neither domain they are not making any decisions so fitness should just be exofitness i.e. 1. 


-(void) calculateendoFitness
{
endoFitness = 0.0; //standardises endogenous fitness to 0.

 if (behaviourK == 1 && stateA == 1) //if behaviour matches state 1 in domain A
 {
	endoFitness += fitAMatchBehOne; //add the correct fitness.
 }
 else if (behaviourK == 0 && stateA == 0) //if behaviour matches state 0 in domain A
 {
	endoFitness += fitAMatchBehZero; //add the correct fitness.
 }
 else if (behaviourK == 1 && stateA == 0) //if the behaviour clashes with state 0 in domainA
 {
	endoFitness += fitADiffBehOne; //add the correct fitness.
 }
 else //or the behaviour clashes with state 1 in domainA
 {
	endoFitness += fitADiffBehZero; //add the correct fitness. - potentially wrong because of neither state?
 }
 
 //start a separate loop: domainB can only go here, but also allows those in both domains to have the fitness added onto endoFitness again.
 if (behaviourK == 1 && stateB == 1) //if behaviour matches state 1 in domain B
 {
	endoFitness += fitBMatchBehOne;  //add the correct fitness.
 }
 else if (behaviourK == 0 && stateB == 0) //if behaviour matches state 0 in domain B
 {
	endoFitness += fitBMatchBehZero;  //add the correct fitness.
 }
 else if (behaviourK == 1 && stateB == 0)  //if the behaviour clashes with state 0 in domainB
 {
	endoFitness += fitBDiffBehOne;  //add the correct fitness.
 }
 else  //or the behaviour clashes with state 1 in domainB
 {
	endoFitness += fitBDiffBehZero;  //add the correct fitness.
 }
 
}


-(void) calculatefitness
{
	fitness = (endoFitness + exoFitness);
}


//insertfitnessascumpropr here
-(void) implementMutations //method for working out rate of mutations.
{
	if (((double) 1.0 - genrand_real2()) <= probMutate) //if a randomly generated number between 0 and 1, when taken away from 1, leads to a value less than the small probability of mutation as implemented elsewhere in the code, then behaviour k must change.
	{
		tempBehaviourK = 1 - tempBehaviourK; //1-k ensures k changes i.e. 1-1 is 0, and 1-0 is 1. Temp variables avoids overwriting the behaviour to inherit in the middle of a generation.
    	tempMutateDummy = 1;  //assigns a 1 to any agent who has mutated their inherited behaviour. Temp variables avoids overwriting the behaviour to inherit in the middle of a generation.
	}
	else //when not mutating
	{
		tempMutateDummy = 0; //then denote this with a 0.
	}
} //closes void for implementMutations.


-(void) updatePhenotypeFromAgent //update temporary behaviour values from inheritence loop.
{
	behaviourK = tempBehaviourK;  //this ensures that behaviour for first generation is not always overwritten when population inherits this, but second generation must be changed back to behaviour after this loop otherwise agents will only ever inherit from the first generation.
}


-(void) updatetempMutateDummy //updates temporary mutate dummy values from inheritence loop.
{
	mutateDummy = tempMutateDummy; //this ensures that a permanent record is kept, and tempmutatedummy can be overwritten for the next generation.
}


@end
