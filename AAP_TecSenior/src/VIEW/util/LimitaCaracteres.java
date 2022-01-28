package VIEW.util;

import javax.swing.text.AttributeSet;
import javax.swing.text.BadLocationException;
import javax.swing.text.PlainDocument;

public class LimitaCaracteres extends PlainDocument {

    public enum TipoEntrada {

        NumeroInteiro, NumeroDecimal, Nome, Email, Data, Senha;

    };
    private int qtdCaracteres;
    private TipoEntrada tpEntrada;

    public LimitaCaracteres(int qtdCaracteres, TipoEntrada tpEntrada) {
        this.qtdCaracteres = qtdCaracteres;
        this.tpEntrada = tpEntrada;
    }

    @Override
    public void insertString(int offs, String str, AttributeSet a) throws BadLocationException {
        if (str == null || getLength() == qtdCaracteres) {
            return;
        }
        int totalCarac = getLength() + str.length();
        
        // Filtro de Caracteres
        
        String regex = "";
        switch (tpEntrada) {
            case NumeroInteiro: regex = "[^0-9]"; break;
            case NumeroDecimal: regex = "[^0-9,.]";break;
            case Nome:          regex = "[^\\p{IsLatin} ]"; break;
            case Email:         regex =  "[^\\p{IsLatin}@.\\-_][^0-9]"; break;
            case Senha:         regex =  "[^\\p{IsLatin}@.\\-_][^0-9]"; break;
            case Data:          regex = "[^0-9/]";break;
                 
        }
        
        // Fazendo a substituição
        
        str = str.replaceAll(regex, "");
        
        if (totalCarac <= qtdCaracteres){
            super.insertString(offs, str, a); //To change body of generated methods, choose Tools | Templates.
        } else {
            String nova = str.substring(0, qtdCaracteres);
            super.insertString(offs, nova, a);
        }

        
    }

}
