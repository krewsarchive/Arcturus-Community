package com.eu.habbo.messages.outgoing.modtool;

import com.eu.habbo.habbohotel.modtool.ModToolIssue;
import com.eu.habbo.messages.ServerMessage;
import com.eu.habbo.messages.outgoing.MessageComposer;
import com.eu.habbo.messages.outgoing.Outgoing;

public class IssueInfoMessageComposer extends MessageComposer {
    private final ModToolIssue issue;

    public IssueInfoMessageComposer(ModToolIssue issue) {
        this.issue = issue;
    }

    @Override
    protected ServerMessage composeInternal() {
        this.response.init(Outgoing.issueInfoMessageComposer);
        this.issue.serialize(this.response);
        return this.response;
    }
}
