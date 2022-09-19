.class public Lcom/alibaba/sdk/android/repository/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/repository/PluginRepository;


# instance fields
.field private a:Lcom/alibaba/sdk/android/repository/a/c;

.field private b:Lcom/alibaba/sdk/android/repository/a/a;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/plugin/PluginInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/repository/a/d;->c:Ljava/util/Map;

    new-instance v0, Lcom/alibaba/sdk/android/repository/a/c;

    sget-object v1, Lcom/alibaba/sdk/android/b/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/repository/a/c;-><init>(Landroid/content/res/AssetManager;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/repository/a/d;->a:Lcom/alibaba/sdk/android/repository/a/c;

    new-instance v0, Lcom/alibaba/sdk/android/repository/a/a;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/repository/a/a;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/repository/a/d;->b:Lcom/alibaba/sdk/android/repository/a/a;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/repository/a/d;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/repository/a/d;)Lcom/alibaba/sdk/android/repository/a/a;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/repository/a/d;->b:Lcom/alibaba/sdk/android/repository/a/a;

    return-object v0
.end method

.method private a()V
    .locals 10

    const/4 v6, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "binaryFinder"

    invoke-static {v0}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->startTimeRecord(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/repository/a/d;->b:Lcom/alibaba/sdk/android/repository/a/a;

    invoke-static {}, Lcom/alibaba/sdk/android/repository/a/a;->a()[Lcom/alibaba/sdk/android/plugin/PluginInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-boolean v1, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "findPlugins"

    const-string v3, "binaryFinder"

    const-string v4, "binaryFinder"

    invoke-static {v4}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->getTimeUsed(Ljava/lang/String;)J

    move-result-wide v4

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "success"

    aput-object v7, v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->content(Ljava/lang/String;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_9

    :try_start_1
    sget-boolean v1, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "propertiesFinder"

    invoke-static {v1}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->startTimeRecord(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/alibaba/sdk/android/repository/a/d;->a:Lcom/alibaba/sdk/android/repository/a/c;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/repository/a/c;->a()[Lcom/alibaba/sdk/android/plugin/PluginInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    sget-boolean v0, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "findPlugins"

    const-string v3, "propertiesFinder"

    const-string v4, "propertiesFinder"

    invoke-static {v4}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->getTimeUsed(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "success"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->content(Ljava/lang/String;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "sortPlugin"

    invoke-static {v0}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->startTimeRecord(Ljava/lang/String;)V

    :cond_4
    array-length v0, v1

    const/4 v3, 0x2

    if-le v0, v3, :cond_5

    new-instance v0, Lcom/alibaba/sdk/android/repository/a/b;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/repository/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/repository/a/b;->a([Lcom/alibaba/sdk/android/plugin/PluginInfo;)V

    :cond_5
    sget-boolean v0, Lcom/alibaba/sdk/android/ConfigManager;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "sortPlugin"

    const-string v3, "PluginInfoSorter"

    const-string v4, "sortPlugin"

    invoke-static {v4}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->getTimeUsed(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "success"

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->content(Ljava/lang/String;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taobao/tae/sdk/log/SdkCoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_1
    if-eqz v1, :cond_8

    array-length v3, v1

    move v0, v2

    :goto_2
    if-ge v0, v3, :cond_7

    aget-object v2, v1, v0

    iget-object v4, p0, Lcom/alibaba/sdk/android/repository/a/d;->c:Ljava/util/Map;

    iget-object v5, v2, Lcom/alibaba/sdk/android/plugin/PluginInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v3, "kernel"

    const-string v4, "Fail to read the plugin info from binary finder"

    invoke-static {v3, v4, v1}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_3
    const-string v3, "kernel"

    const-string v4, "Fail to read the plugin info from property file finder"

    invoke-static {v3, v4, v0}, Lcom/alibaba/sdk/android/trace/AliSDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/alibaba/sdk/android/b/a;->f:Lcom/alibaba/sdk/android/executor/ExecutorService;

    new-instance v2, Lcom/alibaba/sdk/android/repository/a/e;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/sdk/android/repository/a/e;-><init>(Lcom/alibaba/sdk/android/repository/a/d;[Lcom/alibaba/sdk/android/plugin/PluginInfo;)V

    invoke-interface {v0, v2}, Lcom/alibaba/sdk/android/executor/ExecutorService;->postTask(Ljava/lang/Runnable;)V

    :cond_8
    return-void

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_9
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public getPluginInfo(Ljava/lang/String;)Lcom/alibaba/sdk/android/plugin/PluginInfo;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/repository/a/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/plugin/PluginInfo;

    return-object v0
.end method

.method public getPluginInfos()[Lcom/alibaba/sdk/android/plugin/PluginInfo;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/repository/a/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/repository/a/d;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/sdk/android/plugin/PluginInfo;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/plugin/PluginInfo;

    return-object v0
.end method

.method public getPluginNames()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/repository/a/d;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/repository/a/d;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
