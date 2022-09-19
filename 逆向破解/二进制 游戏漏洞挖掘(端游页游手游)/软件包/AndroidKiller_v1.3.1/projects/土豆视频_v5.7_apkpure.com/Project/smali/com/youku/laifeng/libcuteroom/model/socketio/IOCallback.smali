.class public interface abstract Lcom/youku/laifeng/libcuteroom/model/socketio/IOCallback;
.super Ljava/lang/Object;
.source "IOCallback.java"


# virtual methods
.method public varargs abstract on(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;[Ljava/lang/Object;)V
.end method

.method public abstract onConnect()V
.end method

.method public abstract onDisconnect()V
.end method

.method public abstract onError(Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V
.end method

.method public abstract onMessage(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;)V
.end method

.method public abstract onMessage(Lorg/json/JSONObject;Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;)V
.end method
