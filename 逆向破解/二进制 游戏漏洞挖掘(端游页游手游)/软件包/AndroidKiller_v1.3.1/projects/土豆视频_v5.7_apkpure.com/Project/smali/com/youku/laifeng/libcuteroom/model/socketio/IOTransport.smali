.class interface abstract Lcom/youku/laifeng/libcuteroom/model/socketio/IOTransport;
.super Ljava/lang/Object;
.source "IOTransport.java"


# virtual methods
.method public abstract canSendBulk()Z
.end method

.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract invalidate()V
.end method

.method public abstract send(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sendBulk([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
