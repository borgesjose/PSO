function [GBEST,cgCurve] = PSO(noP, maxIter, pso, problem, datavis )



nVar = problem.nVar;
ub = problem.ub;
lb = problem.lb;
fobj = problem.fobj;

wMax = pso.wMax;
wMin = pso.wMin; 
c1 = pso.c1; 
c2 = pso.c2; 
vMax = pso.vMax; 
vMin = pso.vmin;

% Extra variables for data visualization
average_objective = zeros(1, maxIter);
cgCurve = zeros(1, maxIter);
FirstP_D1 = zeros(1 , maxIter);
position_history = zeros(noP , maxIter , nVar );

% The PSO algorithm
% Initialize the particles
for k = 1 : noP
    Swarm.Particles(k).X = (ub-lb) .* rand(1,nVar) + lb;
    Swarm.Particles(k).V = zeros(1, nVar);
    Swarm.Particles(k).PBEST.X = zeros(1,nVar);
    Swarm.Particles(k).PBEST.O = inf;
    
    Swarm.GBEST.X = zeros(1,nVar);
    Swarm.GBEST.O = inf;
end









end

