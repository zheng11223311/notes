.class public Lio/rong/push/PushProtocalStack$PublishMessage;
.super Lio/rong/push/PushProtocalStack$RetryableMessage;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PublishMessage"
.end annotation


# instance fields
.field private data:[B

.field private date:I

.field private targetId:Ljava/lang/String;

.field private topic:Ljava/lang/String;


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
    .line 772
    invoke-direct {p0, p1}, Lio/rong/push/PushProtocalStack$RetryableMessage;-><init>(Lio/rong/push/PushProtocalStack$Message$Header;)V

    .line 773
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$PublishMessage;->data:[B

    return-object v0
.end method

.method public getDataAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$PublishMessage;->data:[B

    invoke-static {v0}, Lio/rong/push/PushProtocalStack$FormatUtil;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTime()I
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Lio/rong/push/PushProtocalStack$PublishMessage;->date:I

    return v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$PublishMessage;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$PublishMessage;->topic:Ljava/lang/String;

    return-object v0
.end method

.method protected messageLength()I
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x0

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
    .line 787
    const/16 v1, 0xe

    .line 788
    .local v1, "pos":I
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 789
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    .line 790
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lio/rong/push/PushProtocalStack$PublishMessage;->date:I

    .line 791
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$PublishMessage;->topic:Ljava/lang/String;

    .line 792
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$PublishMessage;->targetId:Ljava/lang/String;

    .line 793
    iget-object v2, p0, Lio/rong/push/PushProtocalStack$PublishMessage;->topic:Ljava/lang/String;

    invoke-static {v2}, Lio/rong/push/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    .line 794
    iget-object v2, p0, Lio/rong/push/PushProtocalStack$PublishMessage;->targetId:Ljava/lang/String;

    invoke-static {v2}, Lio/rong/push/PushProtocalStack$FormatUtil;->toWMtpString(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    .line 795
    invoke-super {p0, p1, p2}, Lio/rong/push/PushProtocalStack$RetryableMessage;->readMessage(Ljava/io/InputStream;I)V

    .line 796
    sub-int v2, p2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lio/rong/push/PushProtocalStack$PublishMessage;->data:[B

    .line 797
    iget-object v2, p0, Lio/rong/push/PushProtocalStack$PublishMessage;->data:[B

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->read([B)I

    .line 798
    return-void
.end method

.method protected writeMessage(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 782
    invoke-super {p0, p1}, Lio/rong/push/PushProtocalStack$RetryableMessage;->writeMessage(Ljava/io/OutputStream;)V

    .line 783
    return-void
.end method
