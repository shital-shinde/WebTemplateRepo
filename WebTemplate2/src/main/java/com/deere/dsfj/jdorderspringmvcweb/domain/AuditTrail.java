package com.deere.dsfj.jdorderspringmvcweb.domain;



/**
 * Copyright: (C) Deere & Company
 *  
 * @author Developer Enablement Team
 * 
 */

public class AuditTrail {

    // TODO Need to understand functionality of this class and how it can be used 
    
    //private static final int MAX_USERID = 25;
    //private static final int MAX_MESSAGE = 100;

    public static final String INSERT = "Insert";
    public static final String UPDATE = "Update";
    public static final String DELETE = "Delete";

    private int id = 0;
    //private GregorianCalendar timestamp = new GregorianCalendar();
    private String type = "";
    private String entity = "";
    private String userID = "";
    private String message = "";

    /**
     * Constructor
     */
    public AuditTrail() {
        super();
    }

    /**
     * Insert the method's description here.
     * 
     * @return String
     */
    public String toString() {
        StringBuffer buf = new StringBuffer();
        buf.append("[AuditTrail]: ");
        buf.append("id=" + id);
        // buf.append(", timestamp=" + (timestamp == null ? "[null]" : "'" + Formatter.formatDateTime(timestamp).trim() + "'"));
        buf.append(", type=" + (type == null ? "[null]" : "'" + type.trim() + "'"));
        buf.append(", entity=" + (entity == null ? "[null]" : "'" + entity.trim() + "'"));
        buf.append(", userID=" + (userID == null ? "[null]" : "'" + userID.trim() + "'"));
        buf.append(", message=" + (message == null ? "[null]" : "'" + message.trim() + "'"));

        return buf.toString();
    }

   }
