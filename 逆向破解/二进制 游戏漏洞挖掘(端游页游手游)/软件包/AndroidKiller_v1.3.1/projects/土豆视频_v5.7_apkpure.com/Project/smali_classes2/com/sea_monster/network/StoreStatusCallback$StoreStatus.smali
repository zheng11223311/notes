.class public Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;
.super Ljava/lang/Object;
.source "StoreStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/network/StoreStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoreStatus"
.end annotation


# instance fields
.field private receivedSize:J

.field private totalSize:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "total"    # J

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->totalSize:J

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->receivedSize:J

    .line 12
    return-void
.end method


# virtual methods
.method public addReceivedSize(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->receivedSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->receivedSize:J

    .line 36
    return-void
.end method

.method public getPercent()J
    .locals 4

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->getReceivedSize()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->getTotalSize()J

    move-result-wide v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getReceivedSize()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->receivedSize:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->totalSize:J

    return-wide v0
.end method

.method public setReceivedSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->receivedSize:J

    .line 32
    return-void
.end method

.method public setTotalSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->totalSize:J

    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 40
    const-string v0, "StoreStatus-->totalSize:%1$d  receivedSize:%2$d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->totalSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/sea_monster/network/StoreStatusCallback$StoreStatus;->receivedSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
