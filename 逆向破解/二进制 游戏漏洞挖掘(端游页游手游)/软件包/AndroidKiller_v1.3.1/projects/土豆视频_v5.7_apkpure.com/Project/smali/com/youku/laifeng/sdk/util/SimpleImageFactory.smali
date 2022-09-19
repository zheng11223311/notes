.class public Lcom/youku/laifeng/sdk/util/SimpleImageFactory;
.super Ljava/lang/Object;
.source "SimpleImageFactory.java"


# static fields
.field private static instance:Lcom/youku/laifeng/sdk/util/SimpleImageFactory;

.field private static final mMutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/sdk/util/SimpleImageFactory;->instance:Lcom/youku/laifeng/sdk/util/SimpleImageFactory;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/sdk/util/SimpleImageFactory;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getFactory()Lcom/youku/laifeng/sdk/util/SimpleImageFactory;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/youku/laifeng/sdk/util/SimpleImageFactory;->instance:Lcom/youku/laifeng/sdk/util/SimpleImageFactory;

    if-nez v0, :cond_1

    .line 16
    sget-object v1, Lcom/youku/laifeng/sdk/util/SimpleImageFactory;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/sdk/util/SimpleImageFactory;->instance:Lcom/youku/laifeng/sdk/util/SimpleImageFactory;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/youku/laifeng/sdk/util/SimpleImageFactory;

    invoke-direct {v0}, Lcom/youku/laifeng/sdk/util/SimpleImageFactory;-><init>()V

    sput-object v0, Lcom/youku/laifeng/sdk/util/SimpleImageFactory;->instance:Lcom/youku/laifeng/sdk/util/SimpleImageFactory;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/youku/laifeng/sdk/util/SimpleImageFactory;->instance:Lcom/youku/laifeng/sdk/util/SimpleImageFactory;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getInstance(Ljava/lang/Class;Ljava/lang/String;Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 4
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "l"    # Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;
    .param p4, "stag"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "cacheable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 28
    .local v2, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 29
    instance-of v3, v2, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;

    if-eqz v3, :cond_0

    .line 30
    move-object v0, v2

    check-cast v0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;

    move-object v3, v0

    invoke-virtual {v3, p2}, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->setUrl(Ljava/lang/String;)V

    .line 31
    move-object v0, v2

    check-cast v0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;

    move-object v3, v0

    invoke-virtual {v3, p3}, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->setListener(Lcom/youku/laifeng/sdk/util/OnNetworkImageLoaderListener;)V

    .line 32
    move-object v0, v2

    check-cast v0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;

    move-object v3, v0

    invoke-virtual {v3, p6}, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->setCacheable(Z)V

    .line 33
    move-object v0, v2

    check-cast v0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;

    move-object v3, v0

    invoke-virtual {v3, p5}, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->setCategoryTag(Ljava/lang/String;)V

    .line 34
    move-object v0, v2

    check-cast v0, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;

    move-object v3, v0

    invoke-virtual {v3, p4}, Lcom/youku/laifeng/sdk/util/AbsImageLoaderRunnable;->setSingleTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object v2

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/InstantiationException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method

.method public getInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 56
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object v1

    .line 49
    .restart local v1    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/InstantiationException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
