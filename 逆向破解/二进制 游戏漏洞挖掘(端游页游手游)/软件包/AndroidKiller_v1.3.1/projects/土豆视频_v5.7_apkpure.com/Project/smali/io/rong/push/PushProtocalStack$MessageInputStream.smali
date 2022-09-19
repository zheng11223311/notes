.class public Lio/rong/push/PushProtocalStack$MessageInputStream;
.super Ljava/lang/Object;
.source "PushProtocalStack.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageInputStream"
.end annotation


# instance fields
.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput-object p1, p0, Lio/rong/push/PushProtocalStack$MessageInputStream;->in:Ljava/io/InputStream;

    .line 666
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$MessageInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 708
    return-void
.end method

.method public readMessage()Lio/rong/push/PushProtocalStack$Message;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 669
    iget-object v4, p0, Lio/rong/push/PushProtocalStack$MessageInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-byte v0, v4

    .line 671
    .local v0, "flags":B
    new-instance v1, Lio/rong/push/PushProtocalStack$Message$Header;

    invoke-direct {v1, v0}, Lio/rong/push/PushProtocalStack$Message$Header;-><init>(B)V

    .line 672
    .local v1, "header":Lio/rong/push/PushProtocalStack$Message$Header;
    const/4 v2, 0x0

    .line 673
    .local v2, "msg":Lio/rong/push/PushProtocalStack$Message;
    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$Message$Header;->getType()Lio/rong/push/PushProtocalStack$Message$Type;

    move-result-object v4

    if-nez v4, :cond_0

    .line 703
    :goto_0
    return-object v3

    .line 676
    :cond_0
    sget-object v4, Lio/rong/push/PushProtocalStack$1;->$SwitchMap$io$rong$push$PushProtocalStack$Message$Type:[I

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$Message$Header;->getType()Lio/rong/push/PushProtocalStack$Message$Type;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/push/PushProtocalStack$Message$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 697
    const-string v4, "PushProtocalStack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No support for deserializing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lio/rong/push/PushProtocalStack$Message$Header;->getType()Lio/rong/push/PushProtocalStack$Message$Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "messages"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 678
    :pswitch_0
    new-instance v2, Lio/rong/push/PushProtocalStack$ConnAckMessage;

    .end local v2    # "msg":Lio/rong/push/PushProtocalStack$Message;
    invoke-direct {v2, v1}, Lio/rong/push/PushProtocalStack$ConnAckMessage;-><init>(Lio/rong/push/PushProtocalStack$Message$Header;)V

    .line 701
    .restart local v2    # "msg":Lio/rong/push/PushProtocalStack$Message;
    :goto_1
    iget-object v3, p0, Lio/rong/push/PushProtocalStack$MessageInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 702
    iget-object v3, p0, Lio/rong/push/PushProtocalStack$MessageInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Lio/rong/push/PushProtocalStack$Message;->read(Ljava/io/InputStream;)V

    move-object v3, v2

    .line 703
    goto :goto_0

    .line 681
    :pswitch_1
    new-instance v2, Lio/rong/push/PushProtocalStack$PublishMessage;

    .end local v2    # "msg":Lio/rong/push/PushProtocalStack$Message;
    invoke-direct {v2, v1}, Lio/rong/push/PushProtocalStack$PublishMessage;-><init>(Lio/rong/push/PushProtocalStack$Message$Header;)V

    .line 682
    .restart local v2    # "msg":Lio/rong/push/PushProtocalStack$Message;
    goto :goto_1

    .line 685
    :pswitch_2
    new-instance v2, Lio/rong/push/PushProtocalStack$PingRespMessage;

    .end local v2    # "msg":Lio/rong/push/PushProtocalStack$Message;
    invoke-direct {v2, v1}, Lio/rong/push/PushProtocalStack$PingRespMessage;-><init>(Lio/rong/push/PushProtocalStack$Message$Header;)V

    .line 686
    .restart local v2    # "msg":Lio/rong/push/PushProtocalStack$Message;
    goto :goto_1

    .line 688
    :pswitch_3
    new-instance v2, Lio/rong/push/PushProtocalStack$ConnectMessage;

    .end local v2    # "msg":Lio/rong/push/PushProtocalStack$Message;
    invoke-direct {v2, v1}, Lio/rong/push/PushProtocalStack$ConnectMessage;-><init>(Lio/rong/push/PushProtocalStack$Message$Header;)V

    .line 689
    .restart local v2    # "msg":Lio/rong/push/PushProtocalStack$Message;
    goto :goto_1

    .line 691
    :pswitch_4
    new-instance v2, Lio/rong/push/PushProtocalStack$PingReqMessage;

    .end local v2    # "msg":Lio/rong/push/PushProtocalStack$Message;
    invoke-direct {v2, v1}, Lio/rong/push/PushProtocalStack$PingReqMessage;-><init>(Lio/rong/push/PushProtocalStack$Message$Header;)V

    .line 692
    .restart local v2    # "msg":Lio/rong/push/PushProtocalStack$Message;
    goto :goto_1

    .line 694
    :pswitch_5
    new-instance v2, Lio/rong/push/PushProtocalStack$DisconnectMessage;

    .end local v2    # "msg":Lio/rong/push/PushProtocalStack$Message;
    invoke-direct {v2, v1}, Lio/rong/push/PushProtocalStack$DisconnectMessage;-><init>(Lio/rong/push/PushProtocalStack$Message$Header;)V

    .line 695
    .restart local v2    # "msg":Lio/rong/push/PushProtocalStack$Message;
    goto :goto_1

    .line 676
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
