package com.eu.habbo.messages.outgoing.unknown;

import com.eu.habbo.messages.ServerMessage;
import com.eu.habbo.messages.outgoing.MessageComposer;

public class SnowWarsLongDataComposer extends MessageComposer {
    @Override
    public ServerMessage compose() {
        this.response.init(2823);
        this.response.appendInt(1);
        this.response.appendString("SnowStorm level " + 10);
        this.response.appendInt(10); //Stage ID
        this.response.appendInt(10);
        this.response.appendInt(4);
        this.response.appendInt(8);
        this.response.appendString("Admin");
        this.response.appendInt(14);
        this.response.appendInt(2);

        this.response.appendInt(1);
        this.response.appendString("Admin");
        this.response.appendString("ca-1807-64.lg-275-78.hd-3093-1.hr-802-42.ch-3110-65-62.fa-1211-62");
        this.response.appendString("m");
        this.response.appendInt(1);
        this.response.appendInt(0);
        this.response.appendInt(0);
        this.response.appendInt(10);

        this.response.appendInt(2);
        this.response.appendString("Emetophobic");
        this.response.appendString("ca-1807-64.lg-275-78.hd-3093-1.hr-802-42.ch-3110-65-62.fa-1211-63");
        this.response.appendString("m");
        this.response.appendInt(2); //Team Id
        this.response.appendInt(0); //Stars
        this.response.appendInt(0); //Points
        this.response.appendInt(10); //Points for next lvl
        return this.response;
    }
}
