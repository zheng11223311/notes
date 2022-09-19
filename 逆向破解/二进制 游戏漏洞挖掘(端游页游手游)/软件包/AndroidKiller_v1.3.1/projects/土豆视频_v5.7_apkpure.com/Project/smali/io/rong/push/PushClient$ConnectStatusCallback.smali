.class public interface abstract Lio/rong/push/PushClient$ConnectStatusCallback;
.super Ljava/lang/Object;
.source "PushClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectStatusCallback"
.end annotation


# virtual methods
.method public abstract onConnected(Lio/rong/push/PushProtocalStack$ConnAckMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onDisConnected(Lio/rong/push/PushProtocalStack$DisconnectMessage;)V
.end method

.method public abstract onError(Ljava/io/IOException;)V
.end method
