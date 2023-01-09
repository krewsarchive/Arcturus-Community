package com.eu.habbo.messages.outgoing.guilds;

import com.eu.habbo.Emulator;
import com.eu.habbo.habbohotel.guilds.Guild;
import com.eu.habbo.habbohotel.users.Habbo;
import com.eu.habbo.messages.ServerMessage;
import com.eu.habbo.messages.outgoing.MessageComposer;
import com.eu.habbo.messages.outgoing.Outgoing;
import gnu.trove.set.hash.THashSet;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class GuildMembershipsMessageComposer extends MessageComposer {
    private final THashSet<Guild> guilds;
    private final Habbo habbo;
    @Override
    protected ServerMessage composeInternal() {
        this.response.init(Outgoing.guildMembershipsMessageComposer);
        this.response.appendInt(this.guilds.size());
        for (Guild guild : this.guilds) {
            this.response.appendInt(guild.getId());
            this.response.appendString(guild.getName());
            this.response.appendString(guild.getBadge());
            this.response.appendString(Emulator.getGameEnvironment().getGuildManager().getSymbolColor(guild.getColorOne()).getValueA());
            this.response.appendString(Emulator.getGameEnvironment().getGuildManager().getBackgroundColor(guild.getColorTwo()).getValueA());
            this.response.appendBoolean(this.habbo.getHabboStats().getGuild() == guild.getId());
            this.response.appendInt(guild.getOwnerId());
            this.response.appendBoolean(guild.hasForum());
        }
        return this.response;
    }
}
