.class public Lio/rong/push/PushProtocalStack$PingReqMessage;
.super Lio/rong/push/PushProtocalStack$Message;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PingReqMessage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 729
    sget-object v0, Lio/rong/push/PushProtocalStack$Message$Type;->PINGREQ:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-direct {p0, v0}, Lio/rong/push/PushProtocalStack$Message;-><init>(Lio/rong/push/PushProtocalStack$Message$Type;)V

    .line 730
    return-void
.end method

.method public constructor <init>(Lio/rong/push/PushProtocalStack$Message$Header;)V
    .locals 0
    .param p1, "header"    # Lio/rong/push/PushProtocalStack$Message$Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 733
    invoke-direct {p0, p1}, Lio/rong/push/PushProtocalStack$Message;-><init>(Lio/rong/push/PushProtocalStack$Message$Header;)V

    .line 734
    return-void
.end method


# virtual methods
.method public setDup(Z)V
    .locals 2
    .param p1, "dup"    # Z

    .prologue
    .line 738
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PINGREQ message does not support the DUP flag"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQos(Lio/rong/push/PushProtocalStack$QoS;)V
    .locals 2
    .param p1, "qos"    # Lio/rong/push/PushProtocalStack$QoS;

    .prologue
    .line 743
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PINGREQ message does not support the QoS flag"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRetained(Z)V
    .locals 2
    .param p1, "retain"    # Z

    .prologue
    .line 748
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PINGREQ message does not support the RETAIN flag"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
