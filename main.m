%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
% Universidade Federal do Piau�                       %
% Campus Ministro Petronio Portela                    %
% Copyright 2022 -Jos� Borges do Carmo Neto-          %
% @author Jos� Borges do Carmo Neto                   %
% @email jose.borges90@hotmail.com                    %
%  PSO - particle swarm implementation                % 
%                                                     %
%  -- Version: 1.0  - 01/05/2022                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc

% Defintion:
% Parameters of problem:
problem.d = 2; %Number of dimensions
problem.lb = 50 * ones(1, 2);%Lower bound
problem.ub = -50 * ones(1, 2);%Upper bound
problem.fobj = @ObjectiveFunction; %Objective function

%Hyperparameters of PSO the algorithm;

pso.wMax = 0.9; %Inertia
pso.wMin = 0.2;%Inertia
pso.c1 = 2;%Cognition of particle 
pso.c2 = 2;%Social influence of swarm  
pso.vMax = (problem.ub - problem.lb).*0.2;
pso.vmin = -vMax;

Nop = 4; %Number of particles (N)
max_iter = 500;  % Maximum number of iterations (max_iter)

visFlag = 1; % set this to 0 if you do not want visualization

RunNo  = 30; 
BestSolutions_PSO = zeros(1 , RunNo);

[ GBEST  , cgcurve ] = PSO( noP , maxIter, problem ,pso, visFlag ) ;

 disp('Best solution found')
 GBEST.X
 disp('Best objective value')
 GBEST.O
 
 