.class public final Lcom/luajava/LuaStateFactory;
.super Ljava/lang/Object;
.source "LuaStateFactory.java"


# static fields
.field private static final states:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/luajava/LuaStateFactory;->states:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getExistingState(I)Lcom/luajava/LuaState;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 73
    const-class v1, Lcom/luajava/LuaStateFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/luajava/LuaStateFactory;->states:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luajava/LuaState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getNextStateIndex()I
    .locals 3

    .prologue
    .line 119
    const-class v2, Lcom/luajava/LuaStateFactory;

    monitor-enter v2

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Lcom/luajava/LuaStateFactory;->states:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/luajava/LuaStateFactory;->states:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    monitor-exit v2

    return v0

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized insertLuaState(Lcom/luajava/LuaState;)I
    .locals 10
    .param p0, "L"    # Lcom/luajava/LuaState;

    .prologue
    .line 85
    const-class v4, Lcom/luajava/LuaStateFactory;

    monitor-enter v4

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v3, Lcom/luajava/LuaStateFactory;->states:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 87
    sget-object v3, Lcom/luajava/LuaStateFactory;->states:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luajava/LuaState;

    .line 89
    .local v2, "state":Lcom/luajava/LuaState;
    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v2}, Lcom/luajava/LuaState;->getCPtrPeer()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/luajava/LuaState;->getCPtrPeer()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    move v1, v0

    .line 100
    .end local v0    # "i":I
    .end local v2    # "state":Lcom/luajava/LuaState;
    .local v1, "i":I
    :goto_1
    monitor-exit v4

    return v1

    .line 85
    .end local v1    # "i":I
    .restart local v0    # "i":I
    .restart local v2    # "state":Lcom/luajava/LuaState;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "state":Lcom/luajava/LuaState;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/luajava/LuaStateFactory;->getNextStateIndex()I

    move-result v0

    .line 98
    sget-object v3, Lcom/luajava/LuaStateFactory;->states:Ljava/util/List;

    invoke-interface {v3, v0, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    .line 100
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 85
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized newLuaState()Lcom/luajava/LuaState;
    .locals 4

    .prologue
    .line 58
    const-class v3, Lcom/luajava/LuaStateFactory;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/luajava/LuaStateFactory;->getNextStateIndex()I

    move-result v1

    .line 59
    .local v1, "i":I
    new-instance v0, Lcom/luajava/LuaState;

    invoke-direct {v0, v1}, Lcom/luajava/LuaState;-><init>(I)V

    .line 61
    .local v0, "L":Lcom/luajava/LuaState;
    sget-object v2, Lcom/luajava/LuaStateFactory;->states:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v3

    return-object v0

    .line 58
    .end local v0    # "L":Lcom/luajava/LuaState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized removeLuaState(I)V
    .locals 3
    .param p0, "idx"    # I

    .prologue
    .line 109
    const-class v1, Lcom/luajava/LuaStateFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/luajava/LuaStateFactory;->states:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit v1

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
