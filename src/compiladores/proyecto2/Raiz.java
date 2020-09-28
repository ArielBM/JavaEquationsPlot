
package compiladores.proyecto2;

public class Raiz {
    
    public double encontrarRaiz(Funcion f, double x0, double x1)
    {
        double r = Double.NaN;
        double x2 = x0;
        int k = 0;
        while(Math.abs(f.evaluar(x2))> Double.parseDouble("1e-6") && k < 50)
        {
            x2 = x0-f.evaluar(x0)*(x1-x0)/(f.evaluar(x1) - f.evaluar(x0));
            x0 = x1;
            x1 = x2;
            k++;
        }
        
        if ( k < 35)
        {
            r = x2;
        }
        
        return r;
        
    }
    
}
