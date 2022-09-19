.class public abstract Lio/rong/push/PushProtocalStack$RetryableMessage;
.super Lio/rong/push/PushProtocalStack$Message;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RetryableMessage"
.end annotation


# instance fields
.field private messageId:I


# direct methods
.method public constructor <init>(Lio/rong/push/PushProtocalStack$Message$Header;)V
    .locals 0
    .param p1, "header"    # Lio/rong/push/PushProtocalStack$Message$Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    invoke-direct {p0, p1}, Lio/rong/push/PushProtocalStack$Message;-><init>(Lio/rong/push/PushProtocalStack$Message$Header;)V

    .line 846
    return-void
.end method

.method public constructor <init>(Lio/rong/push/PushProtocalStack$Message$Type;)V
    .locals 0
    .param p1, "type"    # Lio/rong/push/PushProtocalStack$Message$Type;

    .prologue
    .line 849
    invoke-direct {p0, p1}, Lio/rong/push/PushProtocalStack$Message;-><init>(Lio/rong/push/PushProtocalStack$Message$Type;)V

    .line 850
    return-void
.end method


# virtual methods
.method public getMessageId()I
    .locals 1

    .prologue
    .line 877
    iget v0, p0, Lio/rong/push/PushProtocalStack$RetryableMessage;->messageId:I

    return v0
.end method

.method protected messageLength()I
    .locals 1

    .prologue
    .line 854
    const/4 v0, 0x2

    return v0
.end method

.method protected readMessage(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "msgLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 868
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    add-int v0, v1, v2

    .line 869
    .local v0, "msgId":I
    invoke-virtual {p0, v0}, Lio/rong/push/PushProtocalStack$RetryableMessage;->setMessageId(I)V

    .line 870
    return-void
.end method

.method public setMessageId(I)V
    .locals 0
    .param p1, "messageId"    # I

    .prologue
    .line 873
    iput p1, p0, Lio/rong/push/PushProtocalStack$RetryableMessage;->messageId:I

    .line 874
    return-void
.end method

.method protected writeMessage(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-virtual {p0}, Lio/rong/push/PushProtocalStack$RetryableMessage;->getMessageId()I

    move-result v0

    .line 860
    .local v0, "id":I
    and-int/lit16 v1, v0, 0xff

    .line 861
    .local v1, "lsb":I
    const v3, 0xff00

    and-int/2addr v3, v0

    shr-int/lit8 v2, v3, 0x8

    .line 862
    .local v2, "msb":I
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 863
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 864
    return-void
.end method
