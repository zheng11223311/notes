.class public Lio/rong/push/PushProtocalStack$PingRespMessage;
.super Lio/rong/push/PushProtocalStack$Message;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PingRespMessage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 760
    sget-object v0, Lio/rong/push/PushProtocalStack$Message$Type;->PINGRESP:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-direct {p0, v0}, Lio/rong/push/PushProtocalStack$Message;-><init>(Lio/rong/push/PushProtocalStack$Message$Type;)V

    .line 761
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
    .line 756
    invoke-direct {p0, p1}, Lio/rong/push/PushProtocalStack$Message;-><init>(Lio/rong/push/PushProtocalStack$Message$Header;)V

    .line 757
    return-void
.end method
