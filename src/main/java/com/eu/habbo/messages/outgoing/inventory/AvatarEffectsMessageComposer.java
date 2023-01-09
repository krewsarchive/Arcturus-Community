package com.eu.habbo.messages.outgoing.inventory;

import com.eu.habbo.Emulator;
import com.eu.habbo.habbohotel.users.Habbo;
import com.eu.habbo.habbohotel.users.inventory.EffectsComponent;
import com.eu.habbo.messages.ServerMessage;
import com.eu.habbo.messages.outgoing.MessageComposer;
import com.eu.habbo.messages.outgoing.Outgoing;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Collection;


@Getter
@AllArgsConstructor
public class AvatarEffectsMessageComposer extends MessageComposer {
    private final Habbo habbo;
    private final Collection<EffectsComponent.HabboEffect> effects;

    @Override
    protected ServerMessage composeInternal() {
        this.response.init(Outgoing.avatarEffectsMessageComposer);


        if (this.habbo == null || this.habbo.getInventory() == null || this.habbo.getInventory().getEffectsComponent() == null || this.habbo.getInventory().getEffectsComponent().getEffects() == null) {
            this.response.appendInt(0);
        } else {
            synchronized (this.habbo.getInventory().getEffectsComponent().getEffects()) {
                this.response.appendInt(this.effects.size());

                for (EffectsComponent.HabboEffect effect : effects) {
                    AvatarEffectsMessageComposer.this.response.appendInt(effect.effect);
                    AvatarEffectsMessageComposer.this.response.appendInt(0);
                    AvatarEffectsMessageComposer.this.response.appendInt(effect.duration > 0 ? effect.duration : Integer.MAX_VALUE);
                    AvatarEffectsMessageComposer.this.response.appendInt((effect.duration > 0 ? (effect.total - (effect.isActivated() ? 1 : 0)) : 0));

                    if(!effect.isActivated() && effect.duration > 0) {
                        AvatarEffectsMessageComposer.this.response.appendInt(0);
                    }
                    else {
                        AvatarEffectsMessageComposer.this.response.appendInt(effect.duration > 0 ? (Emulator.getIntUnixTimestamp() - effect.activationTimestamp) + effect.duration : 0);
                    }
                    AvatarEffectsMessageComposer.this.response.appendBoolean(effect.duration <= 0); // is perm
                }
            }
        }
        return this.response;
    }
}
