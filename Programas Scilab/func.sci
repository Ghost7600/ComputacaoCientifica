function grafico_vxi(funv, funi,t)
    clf() // limpa a janela gráfica atual
    v = evstr(funv)
    i = evstr(funi)
    subplot(2,1,1)
    plot(t,v,'r')
    a=gca()
    a.font_size=3
    poly1= a.children.children; //manipulador de polyline em poly1
    poly1.thickness = 2; // ...e espessura da curva.
    xlabel("t (s)" ,"fontsize",3)
    ylabel("v (V)","fontsize",3)
    xgrid(color("grey"))
    subplot(2,1,2)
    plot(t,i,'b')
    b=gca()
    b.font_size=3
    poly1=b.children.children; //manipulador de polyline em poly1
    poly1.thickness = 2; // ...e espessura da curva.
    xlabel("t (s)","fontsize",3)
    ylabel("i (A)","fontsize",3)
    xgrid(color("grey"))
end
