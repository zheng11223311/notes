.class public Lcom/youku/player/reporter/KeyCounter;
.super Ljava/lang/Object;
.source "KeyCounter.java"


# instance fields
.field public final EXPIRE_TIME:J

.field protected mDefineKeyArray:[I

.field protected mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastTime:J


# direct methods
.method public constructor <init>([I)V
    .locals 2
    .param p1, "defineKeyArray"    # [I

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/youku/player/reporter/KeyCounter;->mKeyList:Ljava/util/ArrayList;

    .line 22
    iput-object v0, p0, Lcom/youku/player/reporter/KeyCounter;->mDefineKeyArray:[I

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youku/player/reporter/KeyCounter;->mLastTime:J

    .line 25
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/youku/player/reporter/KeyCounter;->EXPIRE_TIME:J

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/player/reporter/KeyCounter;->mLastTime:J

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/reporter/KeyCounter;->mKeyList:Ljava/util/ArrayList;

    .line 31
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/youku/player/reporter/KeyCounter;->mDefineKeyArray:[I

    .line 32
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/youku/player/reporter/KeyCounter;->mDefineKeyArray:[I

    .line 33
    return-void
.end method


# virtual methods
.method protected Start(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    return-void
.end method

.method public addKey(Landroid/content/Context;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyCode"    # I

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/youku/player/reporter/KeyCounter;->mLastTime:J

    sub-long v0, v2, v4

    .line 48
    .local v0, "diff":J
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyCounter addkey interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/youku/player/reporter/KeyCounter;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 52
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/youku/player/reporter/KeyCounter;->mLastTime:J

    .line 53
    iget-object v2, p0, Lcom/youku/player/reporter/KeyCounter;->mKeyList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0}, Lcom/youku/player/reporter/KeyCounter;->checkKey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/youku/player/reporter/KeyCounter;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/youku/player/reporter/KeyCounter;->Start(Landroid/content/Context;)V

    .line 59
    const/4 v2, 0x1

    .line 62
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected checkKey()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 71
    iget-object v5, p0, Lcom/youku/player/reporter/KeyCounter;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/youku/player/reporter/KeyCounter;->mDefineKeyArray:[I

    array-length v6, v6

    if-eq v5, v6, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v4

    .line 74
    :cond_1
    const/4 v0, 0x0

    .line 75
    .local v0, "i":I
    iget-object v5, p0, Lcom/youku/player/reporter/KeyCounter;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 77
    .local v3, "key":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/youku/player/reporter/KeyCounter;->mDefineKeyArray:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget v6, v6, v0

    if-ne v5, v6, :cond_0

    move v0, v1

    .line 79
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 80
    .end local v3    # "key":Ljava/lang/Integer;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
