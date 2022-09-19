.class public Lcom/youku/util/DeleteCachingItemList;
.super Ljava/lang/Object;
.source "DeleteCachingItemList.java"


# static fields
.field private static instance:Lcom/youku/util/DeleteCachingItemList;


# instance fields
.field private deleteAbleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/util/DeleteCachingItemList;->instance:Lcom/youku/util/DeleteCachingItemList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/youku/util/DeleteCachingItemList;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcom/youku/util/DeleteCachingItemList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/util/DeleteCachingItemList;->instance:Lcom/youku/util/DeleteCachingItemList;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/youku/util/DeleteCachingItemList;

    invoke-direct {v0}, Lcom/youku/util/DeleteCachingItemList;-><init>()V

    sput-object v0, Lcom/youku/util/DeleteCachingItemList;->instance:Lcom/youku/util/DeleteCachingItemList;

    .line 22
    :cond_0
    sget-object v0, Lcom/youku/util/DeleteCachingItemList;->instance:Lcom/youku/util/DeleteCachingItemList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addItems(Ljava/lang/String;)V
    .locals 1
    .param p1, "position"    # Ljava/lang/String;

    .prologue
    .line 45
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearQueue()V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsItem(Ljava/lang/String;)Z
    .locals 3
    .param p1, "position"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 73
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    const/4 v1, 0x1

    .line 83
    .end local v0    # "i":I
    :cond_0
    monitor-exit p0

    return v1

    .line 75
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getpositions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 34
    .local v1, "positionStrings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 35
    iget-object v2, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "i":I
    .end local v1    # "positionStrings":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    monitor-exit p0

    return-object v1

    .line 32
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeItem(Ljava/lang/String;)V
    .locals 2
    .param p1, "position"    # Ljava/lang/String;

    .prologue
    .line 59
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/youku/util/DeleteCachingItemList;->deleteAbleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v0    # "i":I
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
