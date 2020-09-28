
package Analizadores;

public class NodoError {
    
    private String texto;
    private String tipo;
    private int linea;
    private int columna;
    private String detalle;

    public NodoError(String texto, String tipo, int linea, int columna, String detalle) {
        this.texto = texto;
        this.tipo = tipo;
        this.linea = linea;
        this.columna = columna;
        this.detalle = detalle;
    }

    public String getTexto() {
        return texto;
        
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getLinea() {
        return linea;
    }

    public void setLinea(int linea) {
        this.linea = linea;
    }

    public int getColumna() {
        return columna;
    }

    public void setColumna(int columna) {
        this.columna = columna;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }
    
    
}
