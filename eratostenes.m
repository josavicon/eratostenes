function v=eratostenes(aA,aB,sA,sB,alfaA,alfaB,cA,cB,D)
  
  % aA,ab         ALTURAS DE LAS VARAS
  % sA,sB         SOMBRAS DE LAS VARAS
  % alfaA,alfaB   DIRECCION DE LAS SOMBRAS
  %cA,cB          DIRECCION DE LA GEODESICA EN AMBOS PUNTOS
  
  lA=sA*cos(alfaA-cA);    % PROYECCION DE sA SOBRE LA GEODESICA
  betaA=atan(aA/lA);      % ANGULO CON LA PROYECCION
  
  %rad2deg(betaA)
  
  lB=sB*cos(alfaB-cB);    % PROYECCION DE sB SOBRE LA GEODESICA
  betaB=atan(aB/lB);      % ANGULO CON LA PROYECCION
  
  %arcoEstimado=rad2deg(betaA-betaB)
  
  %DISTANCIA EN LINEA RECTA AL SOL APLICANDO TEOREMA DEL SENO
  M=(D*sin(pi-betaB))/sin(abs(betaB-betaA));
  h=sin(betaA)*M; %Altura del Sol en la Tierra plana
  dSol=sqrt(M^2+h^2); %Distancia al Sol por el suelo
  
  RT=D/abs(betaA-betaB);  %Radio de la Tierra
  
  v=[RT h dSol];
  
endfunction