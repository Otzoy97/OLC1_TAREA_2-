/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculadora;

import java.util.Stack;

/**
 *
 * @author otzoy
 */
public class Resultado {

    private String postfijo;
    private String resultado;

    public Resultado(String postfijo, String resultado) {
        this.postfijo = postfijo;
        this.resultado = resultado;
    }

    public String getPostfijo() {
        return postfijo;
    }

    public String getResultado() {
        return resultado;
    }
}
