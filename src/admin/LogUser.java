/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

/**
 *
 * @author alcay
 */public class LogUser {

    // Static field to hold the current logged-in user ID
    private static int userId;

    // Set the user ID (call this after login)
    public static void setUserId(int id) {
        userId = id;
    }

    // Get the current logged-in user ID
    public static int getUserId() {
        return userId;
    }
}

