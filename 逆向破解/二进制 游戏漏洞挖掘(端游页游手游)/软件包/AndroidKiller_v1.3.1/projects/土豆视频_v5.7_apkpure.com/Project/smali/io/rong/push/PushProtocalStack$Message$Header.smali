.class public Lio/rong/push/PushProtocalStack$Message$Header;
.super Ljava/lang/Object;
.source "PushProtocalStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushProtocalStack$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private dup:Z

.field private qos:Lio/rong/push/PushProtocalStack$QoS;

.field private retain:Z

.field private type:Lio/rong/push/PushProtocalStack$Message$Type;


# direct methods
.method public constructor <init>(B)V
    .locals 3
    .param p1, "flags"    # B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    sget-object v0, Lio/rong/push/PushProtocalStack$QoS;->AT_MOST_ONCE:Lio/rong/push/PushProtocalStack$QoS;

    iput-object v0, p0, Lio/rong/push/PushProtocalStack$Message$Header;->qos:Lio/rong/push/PushProtocalStack$QoS;

    .line 520
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lio/rong/push/PushProtocalStack$Message$Header;->retain:Z

    .line 521
    and-int/lit8 v0, p1, 0x6

    shr-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/rong/push/PushProtocalStack$QoS;->valueOf(I)Lio/rong/push/PushProtocalStack$QoS;

    move-result-object v0

    iput-object v0, p0, Lio/rong/push/PushProtocalStack$Message$Header;->qos:Lio/rong/push/PushProtocalStack$QoS;

    .line 522
    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lio/rong/push/PushProtocalStack$Message$Header;->dup:Z

    .line 523
    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lio/rong/push/PushProtocalStack$Message$Type;->valueOf(I)Lio/rong/push/PushProtocalStack$Message$Type;

    move-result-object v0

    iput-object v0, p0, Lio/rong/push/PushProtocalStack$Message$Header;->type:Lio/rong/push/PushProtocalStack$Message$Type;

    .line 524
    return-void

    :cond_0
    move v0, v2

    .line 520
    goto :goto_0

    :cond_1
    move v1, v2

    .line 522
    goto :goto_1
.end method

.method private constructor <init>(Lio/rong/push/PushProtocalStack$Message$Type;ZLio/rong/push/PushProtocalStack$QoS;Z)V
    .locals 1
    .param p1, "type"    # Lio/rong/push/PushProtocalStack$Message$Type;
    .param p2, "retain"    # Z
    .param p3, "qos"    # Lio/rong/push/PushProtocalStack$QoS;
    .param p4, "dup"    # Z

    .prologue
    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    sget-object v0, Lio/rong/push/PushProtocalStack$QoS;->AT_MOST_ONCE:Lio/rong/push/PushProtocalStack$QoS;

    iput-object v0, p0, Lio/rong/push/PushProtocalStack$Message$Header;->qos:Lio/rong/push/PushProtocalStack$QoS;

    .line 513
    iput-object p1, p0, Lio/rong/push/PushProtocalStack$Message$Header;->type:Lio/rong/push/PushProtocalStack$Message$Type;

    .line 514
    iput-boolean p2, p0, Lio/rong/push/PushProtocalStack$Message$Header;->retain:Z

    .line 515
    iput-object p3, p0, Lio/rong/push/PushProtocalStack$Message$Header;->qos:Lio/rong/push/PushProtocalStack$QoS;

    .line 516
    iput-boolean p4, p0, Lio/rong/push/PushProtocalStack$Message$Header;->dup:Z

    .line 517
    return-void
.end method

.method synthetic constructor <init>(Lio/rong/push/PushProtocalStack$Message$Type;ZLio/rong/push/PushProtocalStack$QoS;ZLio/rong/push/PushProtocalStack$1;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/push/PushProtocalStack$Message$Type;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lio/rong/push/PushProtocalStack$QoS;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lio/rong/push/PushProtocalStack$1;

    .prologue
    .line 505
    invoke-direct {p0, p1, p2, p3, p4}, Lio/rong/push/PushProtocalStack$Message$Header;-><init>(Lio/rong/push/PushProtocalStack$Message$Type;ZLio/rong/push/PushProtocalStack$QoS;Z)V

    return-void
.end method

.method static synthetic access$200(Lio/rong/push/PushProtocalStack$Message$Header;)B
    .locals 1
    .param p0, "x0"    # Lio/rong/push/PushProtocalStack$Message$Header;

    .prologue
    .line 505
    invoke-direct {p0}, Lio/rong/push/PushProtocalStack$Message$Header;->encode()B

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lio/rong/push/PushProtocalStack$Message$Header;)Z
    .locals 1
    .param p0, "x0"    # Lio/rong/push/PushProtocalStack$Message$Header;

    .prologue
    .line 505
    iget-boolean v0, p0, Lio/rong/push/PushProtocalStack$Message$Header;->retain:Z

    return v0
.end method

.method static synthetic access$302(Lio/rong/push/PushProtocalStack$Message$Header;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/rong/push/PushProtocalStack$Message$Header;
    .param p1, "x1"    # Z

    .prologue
    .line 505
    iput-boolean p1, p0, Lio/rong/push/PushProtocalStack$Message$Header;->retain:Z

    return p1
.end method

.method static synthetic access$400(Lio/rong/push/PushProtocalStack$Message$Header;)Lio/rong/push/PushProtocalStack$QoS;
    .locals 1
    .param p0, "x0"    # Lio/rong/push/PushProtocalStack$Message$Header;

    .prologue
    .line 505
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$Message$Header;->qos:Lio/rong/push/PushProtocalStack$QoS;

    return-object v0
.end method

.method static synthetic access$402(Lio/rong/push/PushProtocalStack$Message$Header;Lio/rong/push/PushProtocalStack$QoS;)Lio/rong/push/PushProtocalStack$QoS;
    .locals 0
    .param p0, "x0"    # Lio/rong/push/PushProtocalStack$Message$Header;
    .param p1, "x1"    # Lio/rong/push/PushProtocalStack$QoS;

    .prologue
    .line 505
    iput-object p1, p0, Lio/rong/push/PushProtocalStack$Message$Header;->qos:Lio/rong/push/PushProtocalStack$QoS;

    return-object p1
.end method

.method static synthetic access$500(Lio/rong/push/PushProtocalStack$Message$Header;)Z
    .locals 1
    .param p0, "x0"    # Lio/rong/push/PushProtocalStack$Message$Header;

    .prologue
    .line 505
    iget-boolean v0, p0, Lio/rong/push/PushProtocalStack$Message$Header;->dup:Z

    return v0
.end method

.method static synthetic access$502(Lio/rong/push/PushProtocalStack$Message$Header;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/rong/push/PushProtocalStack$Message$Header;
    .param p1, "x1"    # Z

    .prologue
    .line 505
    iput-boolean p1, p0, Lio/rong/push/PushProtocalStack$Message$Header;->dup:Z

    return p1
.end method

.method static synthetic access$600(Lio/rong/push/PushProtocalStack$Message$Header;)Lio/rong/push/PushProtocalStack$Message$Type;
    .locals 1
    .param p0, "x0"    # Lio/rong/push/PushProtocalStack$Message$Header;

    .prologue
    .line 505
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$Message$Header;->type:Lio/rong/push/PushProtocalStack$Message$Type;

    return-object v0
.end method

.method private encode()B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "b":B
    iget-object v1, p0, Lio/rong/push/PushProtocalStack$Message$Header;->type:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-static {v1}, Lio/rong/push/PushProtocalStack$Message$Type;->access$000(Lio/rong/push/PushProtocalStack$Message$Type;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v0, v1

    .line 533
    iget-boolean v1, p0, Lio/rong/push/PushProtocalStack$Message$Header;->retain:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 534
    iget-object v1, p0, Lio/rong/push/PushProtocalStack$Message$Header;->qos:Lio/rong/push/PushProtocalStack$QoS;

    iget v1, v1, Lio/rong/push/PushProtocalStack$QoS;->val:I

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 535
    iget-boolean v1, p0, Lio/rong/push/PushProtocalStack$Message$Header;->dup:Z

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    :cond_0
    or-int v1, v0, v2

    int-to-byte v0, v1

    .line 536
    return v0

    :cond_1
    move v1, v2

    .line 533
    goto :goto_0
.end method


# virtual methods
.method public getType()Lio/rong/push/PushProtocalStack$Message$Type;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lio/rong/push/PushProtocalStack$Message$Header;->type:Lio/rong/push/PushProtocalStack$Message$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/rong/push/PushProtocalStack$Message$Header;->type:Lio/rong/push/PushProtocalStack$Message$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/rong/push/PushProtocalStack$Message$Header;->retain:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/rong/push/PushProtocalStack$Message$Header;->qos:Lio/rong/push/PushProtocalStack$QoS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/rong/push/PushProtocalStack$Message$Header;->dup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
