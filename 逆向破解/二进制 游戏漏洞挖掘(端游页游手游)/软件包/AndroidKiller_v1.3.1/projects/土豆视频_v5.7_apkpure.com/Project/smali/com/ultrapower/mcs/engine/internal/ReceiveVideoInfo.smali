.class public Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;
.super Ljava/lang/Object;
.source "ReceiveVideoInfo.java"


# instance fields
.field public cl:I

.field public ebw:I

.field public es:I

.field public gf:D

.field public go:D

.field public gt:D

.field public plr:I

.field public rbr:I

.field public receiveBitrate:I

.field public receiveFrameRate:I

.field public rpr:I

.field public rtt:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->es:I

    .line 20
    iput-wide v2, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->gf:D

    .line 21
    iput-wide v2, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->gt:D

    .line 22
    iput-wide v2, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->go:D

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 26
    const-string/jumbo v0, "rtt:%d\r\n%d:ebw\r\n%d:plr\r\n%d:cl\r\n%d:rb\r\n%d:rf\r\n%d:rbr\r\n%d:rpr\r\n%d:es\r\n%f:gf\r\n%f:gt\r\n%f:go"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->rtt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->ebw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->plr:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->cl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->receiveBitrate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->receiveFrameRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->rbr:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->rpr:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->es:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-wide v4, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->gf:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-wide v4, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->gt:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-wide v4, p0, Lcom/ultrapower/mcs/engine/internal/ReceiveVideoInfo;->go:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
