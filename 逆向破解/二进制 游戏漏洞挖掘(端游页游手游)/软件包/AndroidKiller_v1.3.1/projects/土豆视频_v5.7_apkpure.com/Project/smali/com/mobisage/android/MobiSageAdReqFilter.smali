.class Lcom/mobisage/android/MobiSageAdReqFilter;
.super Lcom/mobisage/android/MobiSageFilter;
.source "MobiSageAdReqFilter.java"


# instance fields
.field private effectRequestCount:I

.field private lastRequestTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageFilter;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobisage/android/MobiSageAdReqFilter;->effectRequestCount:I

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobisage/android/MobiSageAdReqFilter;->lastRequestTime:J

    .line 9
    return-void
.end method


# virtual methods
.method public filterMobiSageAction(Lcom/mobisage/android/MobiSageAction;)Z
    .locals 12
    .param p1, "action"    # Lcom/mobisage/android/MobiSageAction;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 17
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v4

    const-string v7, "intervalcountlimit"

    invoke-virtual {v4, v7}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 20
    .local v2, "limitCount":I
    if-nez v2, :cond_0

    .line 21
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/mobisage/android/MobiSageAdReqFilter;->lastRequestTime:J

    move v4, v5

    .line 40
    :goto_0
    return v4

    .line 25
    :cond_0
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 26
    .local v3, "now":Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 28
    invoke-virtual {v3, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 30
    .local v0, "currentTime":J
    iget-wide v8, p0, Lcom/mobisage/android/MobiSageAdReqFilter;->lastRequestTime:J

    sub-long v8, v0, v8

    const-wide/16 v10, 0x2710

    cmp-long v4, v8, v10

    if-lez v4, :cond_1

    .line 32
    iput-wide v0, p0, Lcom/mobisage/android/MobiSageAdReqFilter;->lastRequestTime:J

    .line 33
    iput v6, p0, Lcom/mobisage/android/MobiSageAdReqFilter;->effectRequestCount:I

    .line 38
    :goto_1
    iget v4, p0, Lcom/mobisage/android/MobiSageAdReqFilter;->effectRequestCount:I

    if-le v4, v2, :cond_2

    move v4, v6

    .line 39
    goto :goto_0

    .line 35
    :cond_1
    iget v4, p0, Lcom/mobisage/android/MobiSageAdReqFilter;->effectRequestCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mobisage/android/MobiSageAdReqFilter;->effectRequestCount:I

    goto :goto_1

    :cond_2
    move v4, v5

    .line 40
    goto :goto_0
.end method
