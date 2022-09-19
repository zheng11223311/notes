.class public Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;
.super Ljava/lang/Object;
.source "DataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;
    }
.end annotation


# static fields
.field public static final INVALID_TOKEN:Ljava/lang/String; = "INVALID_TOKEN"

.field public static final LOGIN_INNEED:Ljava/lang/String; = "LOGIN_INNEED"

.field public static final VERSION_UPGRAD:Ljava/lang/String; = "VERSION_UPGRAD"

.field private static mLoader:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

.field private static mMutex:Ljava/lang/Object;


# instance fields
.field private groupListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;

.field private final mCacheCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheTask:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mKey:Ljava/lang/String;

.field private mPool:Ljava/util/concurrent/ExecutorService;

.field private mRestore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mLoader:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    .line 33
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mToken:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mKey:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mRestore:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mCacheTask:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mCacheStatus:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mCacheCallback:Ljava/util/Map;

    .line 168
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$1;-><init>(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->groupListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;

    .line 64
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoaderThreadFactory;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoaderThreadFactory;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mRestore:Ljava/util/List;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mCacheTask:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mCacheStatus:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mCacheCallback:Ljava/util/Map;

    return-object v0
.end method

.method private checkToken(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p1, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;
    .param p4, "bigArgs"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "cookie"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 81
    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mRestore:Ljava/util/List;

    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;-><init>(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->readkey()[Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "key":[Ljava/lang/String;
    if-eqz v8, :cond_0

    array-length v0, v8

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 84
    const/4 v0, 0x0

    aget-object v0, v8, v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mKey:Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    aget-object v0, v8, v0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mToken:Ljava/lang/String;

    .line 88
    .end local v8    # "key":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mLoader:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    if-nez v0, :cond_1

    .line 70
    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mLoader:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mLoader:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    .line 74
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mLoader:Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelGroupTaskById(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mCacheTask:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mCacheStatus:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mCacheTask:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 136
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;

    .line 137
    .local v1, "r":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;->cancelTask()V

    goto :goto_0

    .line 140
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;>;"
    .end local v1    # "r":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;
    :cond_0
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getResposne(Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getResposne(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResposne(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/String;
    .param p3, "bigArgs"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 147
    const-string v1, "DataLoader getResposne"

    invoke-static {v1, p1}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;

    invoke-static {p2}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p3}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mToken:Ljava/lang/String;

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mKey:Ljava/lang/String;

    move-object v1, p1

    move v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v0, "call":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable;, "Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadCallable<Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;>;"
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v8

    .line 151
    .local v8, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;>;"
    :try_start_0
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    :goto_0
    return-object v1

    .line 153
    :catch_0
    move-exception v7

    .line 154
    .local v7, "e":Ljava/lang/InterruptedException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 158
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    new-instance v1, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    invoke-direct {v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;-><init>()V

    goto :goto_0

    .line 155
    :catch_1
    move-exception v7

    .line 156
    .local v7, "e":Ljava/util/concurrent/ExecutionException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v7}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRestore()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mRestore:Ljava/util/List;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public insertGroupTask(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .param p3, "cancel"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceCancelListener;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "args"    # Ljava/lang/String;
    .param p6, "bigArgs"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "cookie"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;

    invoke-static/range {p5 .. p5}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-static/range {p6 .. p6}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->groupListener:Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;

    iget-object v9, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mToken:Ljava/lang/String;

    iget-object v10, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mKey:Ljava/lang/String;

    move-object v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p7

    move-object/from16 v6, p8

    move-object v7, p1

    invoke-direct/range {v0 .. v10}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;-><init>(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/listener/OnGroupListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v0, "task":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mCacheTask:Ljava/util/Map;

    monitor-enter v2

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mCacheTask:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mCacheTask:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 127
    .local v11, "array":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;>;"
    :goto_0
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 130
    return-void

    .line 122
    .end local v11    # "array":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;>;"
    :cond_0
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .restart local v11    # "array":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;>;"
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mCacheTask:Ljava/util/Map;

    invoke-interface {v1, p1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mCacheStatus:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mCacheCallback:Ljava/util/Map;

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    .end local v11    # "array":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public insertTask(Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 98
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;

    invoke-static {p3}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mToken:Ljava/lang/String;

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mKey:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;-><init>(Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v0, "task":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public insertTask(Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "l"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;
    .param p4, "bigArgs"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 92
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;

    invoke-static {p3}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p4}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mToken:Ljava/lang/String;

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mKey:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-direct/range {v0 .. v7}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;-><init>(Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v0, "task":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method public insertTask(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "cookie"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;

    invoke-static {p3}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mToken:Ljava/lang/String;

    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mKey:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;-><init>(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v0, "task":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public insertTask(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;
    .param p4, "bigArgs"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "cookie"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;

    invoke-static {p3}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p4}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mToken:Ljava/lang/String;

    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mKey:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;-><init>(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v0, "task":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public questRestore(Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;)V
    .locals 9
    .param p1, "quest"    # Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 163
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->getListener()Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    move-result-object v1

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->getArgs()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->getBigArgs()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader$RestoreQuest;->getCookie()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mToken:Ljava/lang/String;

    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mKey:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;-><init>(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v0, "task":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 166
    .end local v0    # "task":Lcom/youku/laifeng/libcuteroom/model/loader/DataLoadRunnable;
    :cond_0
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mKey"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mKey:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "mToken"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->mToken:Ljava/lang/String;

    .line 45
    return-void
.end method
