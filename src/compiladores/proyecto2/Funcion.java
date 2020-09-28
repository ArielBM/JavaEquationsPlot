package compiladores.proyecto2;

import org.nfunk.jep.JEP;

public class Funcion {

    JEP j = new JEP();
    String miVar;

    public Funcion(String def, String var) {
        
        miVar = var;
        
        j.setImplicitMul(true);
        j.addVariable(var, 0);
        
        j.addStandardConstants();
        j.addStandardFunctions();
        j.parseExpression(def);
        

        if (j.hasError()) {
            System.out.println(j.getErrorInfo() + "\n");
        }
    }

    public double evaluar(double x) {
        
        double r;
        
        j.addVariable(miVar, x);
        r = j.getValue();

        if (j.hasError()) {
            System.out.println(j.getErrorInfo() + "\n");
        }

        return r;
    }

}
