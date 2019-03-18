package com.eu.habbo.networking.gameserver;

import com.eu.habbo.Emulator;
import com.eu.habbo.habbohotel.gameclients.GameClientManager;
import com.eu.habbo.messages.PacketManager;
import com.eu.habbo.networking.Server;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.socket.SocketChannel;
import io.netty.handler.logging.LoggingHandler;

public class GameServer extends Server
{
    private final PacketManager packetManager;
    private final GameClientManager gameClientManager;

    public GameServer(String host, int port) throws Exception
    {
        super("Game Server", host, port, Emulator.getConfig().getInt("io.bossgroup.threads"), Emulator.getConfig().getInt("io.workergroup.threads"));
        this.packetManager = new PacketManager();
        this.gameClientManager = new GameClientManager();
    }

    @Override
    public void initializePipeline()
    {
        super.initializePipeline();

        this.serverBootstrap.childHandler(new ChannelInitializer<SocketChannel>()
        {
            @Override
            public void initChannel(SocketChannel ch) throws Exception
            {
                ch.pipeline().addLast("logger", new LoggingHandler());
                ch.pipeline().addLast("bytesDecoder", new GameByteDecoder());
                ch.pipeline().addLast(new GameMessageHandler());
            }
        });
    }

    public PacketManager getPacketManager()
    {
        return this.packetManager;
    }

    public GameClientManager getGameClientManager()
    {
        return this.gameClientManager;
    }
}
