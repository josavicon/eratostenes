function v=testSolsticio(a,s,d,p)
  %a es la altura del objeto, s la sombra del objeto, d la distancia al tropico y p es el paralelo donde se mide
  tangente=s/a;
  fi=atan(tangente);

  Tropico=23.4372222;
  variacion=abs(abs(p-Tropico)-rad2deg(fi));

  RT=d/fi;
  AlturaSol=tangente*d;

  v=[RT AlturaSol variacion];

endfunction
