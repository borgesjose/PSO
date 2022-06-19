%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
% Universidade Federal do Piauí                       %
% Campus Ministro Petronio Portela                    %
% Copyright 2022 -José Borges do Carmo Neto-          %
% @author José Borges do Carmo Neto                   %
% @email jose.borges90@hotmail.com                    %
%  PSO - particle swarm implementation                % 
%                                                     %
%  -- Version: 1.0  - 01/05/2022                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc

% Defintion:
% Parameters of problem:
problem.nVar = 2;
problem.ub = 50 * ones(1, 2);
problem.lb = -50 * ones(1, 2);
problem.fobj = @ObjectiveFunction;
%Hyperparameters of PSO the algorithm;

pso.wMax = 0.9; %Inertia
pso.wMin = 0.2;%Inertia
pso.c1 = 2;%Cognition of particle 
pso.c2 = 2;%Social influence of swarm  
pso.vMax = (problem.ub - problem.lb).*0.2;
pso.vmin = -pso.vMax;

noP = 4; %Number of particles (N)
max_iter = 500;  % Maximum number of iterations (max_iter)

visFlag = 1; % set this to 0 if you do not want visualization

RunNo  = 30; 
BestSolutions_PSO = zeros(1 , RunNo);

[ GBEST  , cgcurve ] = PSO( noP , max_iter ,pso, problem, visFlag ) ;

 disp('Best solution found')
 GBEST.X
 disp('Best objective value')
 GBEST.O
 
 