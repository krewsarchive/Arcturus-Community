package com.eu.habbo.messages.outgoing.users;

import com.eu.habbo.messages.ServerMessage;
import com.eu.habbo.messages.outgoing.MessageComposer;
import com.eu.habbo.messages.outgoing.Outgoing;

public class UserBCLimitsComposer extends MessageComposer
{
    @Override
    public ServerMessage compose()
    {
        this.response.init(Outgoing.UserBCLimitsComposer);
        this.response.appendInt(0);
        this.response.appendInt(500);
        this.response.appendInt(0);
        return this.response;
    }
}
