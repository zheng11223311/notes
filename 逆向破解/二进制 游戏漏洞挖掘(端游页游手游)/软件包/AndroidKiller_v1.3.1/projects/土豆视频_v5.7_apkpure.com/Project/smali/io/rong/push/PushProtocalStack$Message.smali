.class public abstract Lio/rong/push/PushProtocalStack$Message;
.super Ljava/lang/Object;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushProtocalStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Message"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/PushProtocalStack$Message$Header;,
        Lio/rong/push/PushProtocalStack$Message$Type;
    }
.end annotation


# instance fields
.field private final header:Lio/rong/push/PushProtocalStack$Message$Header;

.field private headerCode:B


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
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iput-object p1, p0, Lio/rong/push/PushProtocalStack$Message;->header:Lio/rong/push/PushProtocalStack$Message$Header;

    .line 555
    return-void
.end method

.method public constructor <init>(Lio/rong/push/PushProtocalStack$Message$Type;)V
    .locals 6
    .param p1, "type"    # Lio/rong/push/PushProtocalStack$Message$Type;

    .prologue
    const/4 v2, 0x0

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    new-instance v0, Lio/rong/push/PushProtocalStack$Message$Header;

    sget-object v3, Lio/rong/push/PushProtocalStack$QoS;->AT_MOST_ONCE:Lio/rong/push/PushProtocalStack$QoS;

    const/4 v5, 0x0

    move-object v1, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lio/rong/push/PushProtocalStack$Message$Header;-><init>(Lio/rong/push/PushProtocalStack$Message$Type;ZLio/rong/push/PushProtocalStack$QoS;ZLio/rong/push/PushProtocalStack$1;)V

    iput-object v0, p0, Lio/rong/push/PushProtocalStack$Message;->header:Lio/rong/push/PushProtocalStack$Message$Header;

    .line 551
    return-void
.end method

.method private readMsgLength(Ljava/io/InputStream;)I
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    const/4 v1, 0x0

    .line 572
    .local v1, "msgLength":I
    const/4 v2, 0x1

    .line 575
    .local v2, "multiplier":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 576
    .local v0, "digit":I
    and-int/lit8 v3, v0, 0x7f

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 577
    mul-int/lit16 v2, v2, 0x80

    .line 578
    and-int/lit16 v3, v0, 0x80

    if-gtz v3, :cond_0

    .line 579
    return v1
.end method

.method private writeMsgCode(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-virtual {p0}, Lio/rong/push/PushProtocalStack$Message;->messageLength()I

    move-result v2

    .line 597
    .local v2, "val":I
    iget-byte v1, p0, Lio/rong/push/PushProtocalStack$Message;->headerCode:B

    .line 600
    .local v1, "code":I
    :cond_0
    and-int/lit8 v3, v2, 0x7f

    int-to-byte v0, v3

    .line 601
    .local v0, "b":B
    shr-int/lit8 v2, v2, 0x7

    .line 602
    if-lez v2, :cond_1

    .line 603
    or-int/lit16 v3, v0, 0x80

    int-to-byte v0, v3

    .line 605
    :cond_1
    xor-int/2addr v1, v0

    .line 606
    if-gtz v2, :cond_0

    .line 608
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 609
    return-void
.end method

.method private writeMsgLength(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    invoke-virtual {p0}, Lio/rong/push/PushProtocalStack$Message;->messageLength()I

    move-result v1

    .line 586
    .local v1, "val":I
    :cond_0
    and-int/lit8 v2, v1, 0x7f

    int-to-byte v0, v2

    .line 587
    .local v0, "b":B
    shr-int/lit8 v1, v1, 0x7

    .line 588
    if-lez v1, :cond_1

    .line 589
    or-int/lit16 v2, v0, 0x80

    int-to-byte v0, v2

    .line 591
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 592
    if-gtz v1, :cond_0

    .line 593
    return-void
.end method


# virtual methods
.method public getQos()Lio/rong/push/PushProtocalStack$QoS;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$Message;->header:Lio/rong/push/PushProtocalStack$Message$Header;

    invoke-static {v0}, Lio/rong/push/PushProtocalStack$Message$Header;->access$400(Lio/rong/push/PushProtocalStack$Message$Header;)Lio/rong/push/PushProtocalStack$QoS;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lio/rong/push/PushProtocalStack$Message$Type;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$Message;->header:Lio/rong/push/PushProtocalStack$Message$Header;

    invoke-static {v0}, Lio/rong/push/PushProtocalStack$Message$Header;->access$600(Lio/rong/push/PushProtocalStack$Message$Header;)Lio/rong/push/PushProtocalStack$Message$Type;

    move-result-object v0

    return-object v0
.end method

.method public isDup()Z
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$Message;->header:Lio/rong/push/PushProtocalStack$Message$Header;

    invoke-static {v0}, Lio/rong/push/PushProtocalStack$Message$Header;->access$500(Lio/rong/push/PushProtocalStack$Message$Header;)Z

    move-result v0

    return v0
.end method

.method public isRetained()Z
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$Message;->header:Lio/rong/push/PushProtocalStack$Message$Header;

    invoke-static {v0}, Lio/rong/push/PushProtocalStack$Message$Header;->access$300(Lio/rong/push/PushProtocalStack$Message$Header;)Z

    move-result v0

    return v0
.end method

.method protected messageLength()I
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method final read(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lio/rong/push/PushProtocalStack$Message;->readMsgLength(Ljava/io/InputStream;)I

    move-result v0

    .line 559
    .local v0, "msgLength":I
    invoke-virtual {p0, p1, v0}, Lio/rong/push/PushProtocalStack$Message;->readMessage(Ljava/io/InputStream;I)V

    .line 560
    return-void
.end method

.method protected readMessage(Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "msgLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    return-void
.end method

.method public setDup(Z)V
    .locals 1
    .param p1, "dup"    # Z

    .prologue
    .line 648
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$Message;->header:Lio/rong/push/PushProtocalStack$Message$Header;

    invoke-static {v0, p1}, Lio/rong/push/PushProtocalStack$Message$Header;->access$502(Lio/rong/push/PushProtocalStack$Message$Header;Z)Z

    .line 649
    return-void
.end method

.method public setQos(Lio/rong/push/PushProtocalStack$QoS;)V
    .locals 1
    .param p1, "qos"    # Lio/rong/push/PushProtocalStack$QoS;

    .prologue
    .line 640
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$Message;->header:Lio/rong/push/PushProtocalStack$Message$Header;

    invoke-static {v0, p1}, Lio/rong/push/PushProtocalStack$Message$Header;->access$402(Lio/rong/push/PushProtocalStack$Message$Header;Lio/rong/push/PushProtocalStack$QoS;)Lio/rong/push/PushProtocalStack$QoS;

    .line 641
    return-void
.end method

.method public setRetained(Z)V
    .locals 1
    .param p1, "retain"    # Z

    .prologue
    .line 632
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$Message;->header:Lio/rong/push/PushProtocalStack$Message$Header;

    invoke-static {v0, p1}, Lio/rong/push/PushProtocalStack$Message$Header;->access$302(Lio/rong/push/PushProtocalStack$Message$Header;Z)Z

    .line 633
    return-void
.end method

.method public final toBytes()[B
    .locals 2

    .prologue
    .line 612
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 614
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lio/rong/push/PushProtocalStack$Message;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 615
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final write(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$Message;->header:Lio/rong/push/PushProtocalStack$Message$Header;

    invoke-static {v0}, Lio/rong/push/PushProtocalStack$Message$Header;->access$200(Lio/rong/push/PushProtocalStack$Message$Header;)B

    move-result v0

    iput-byte v0, p0, Lio/rong/push/PushProtocalStack$Message;->headerCode:B

    .line 564
    iget-byte v0, p0, Lio/rong/push/PushProtocalStack$Message;->headerCode:B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 565
    invoke-direct {p0, p1}, Lio/rong/push/PushProtocalStack$Message;->writeMsgCode(Ljava/io/OutputStream;)V

    .line 566
    invoke-direct {p0, p1}, Lio/rong/push/PushProtocalStack$Message;->writeMsgLength(Ljava/io/OutputStream;)V

    .line 567
    invoke-virtual {p0, p1}, Lio/rong/push/PushProtocalStack$Message;->writeMessage(Ljava/io/OutputStream;)V

    .line 568
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
    .line 625
    return-void
.end method
