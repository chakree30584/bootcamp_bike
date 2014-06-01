/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author chakree30584
 */
public class ThaiUtil {

    /**
     * Creates a new instance of ThaiUtil
     */
    public static String Unicode2ASCII(String unicode) {

        StringBuffer ascii = new StringBuffer(unicode);

        int code;

        for (int i = 0; i < unicode.length(); i++) {

            code = (int) unicode.charAt(i);

            if ((0xE01 <= code) && (code <= 0xE5B)) {
                ascii.setCharAt(i, (char) (code - 0xD60));
            }

        }

        return ascii.toString();

    }

    public static String ASCII2Unicode(String ascii) {

        StringBuffer unicode = new StringBuffer(ascii);

        int code;

        for (int i = 0; i < ascii.length(); i++) {

            code = (int) ascii.charAt(i);

            if ((0xA1 <= code) && (code <= 0xFB)) {
                unicode.setCharAt(i, (char) (code + 0xD60));
            }

        }

        return unicode.toString();

    }

}