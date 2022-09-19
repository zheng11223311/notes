.class public Lcom/youku/gamecenter/outer/InstallablePromptHelper;
.super Ljava/lang/Object;
.source "InstallablePromptHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/youku/gamecenter/outer/InstallablePromptHelper;


# instance fields
.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->sInstance:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->mCache:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->mListeners:Ljava/util/List;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/outer/InstallablePromptHelper;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/outer/InstallablePromptHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->computePrompt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/outer/InstallablePromptHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->mCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/outer/InstallablePromptHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/outer/InstallablePromptHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->notifyPromptGot(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private computePrompt(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "validPresent"    # Z

    .prologue
    .line 109
    if-eqz p2, :cond_0

    .line 110
    sget v1, Lcom/youku/gamecenter/R$string;->game_installable_prompt_presenting:I

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    .line 114
    :cond_0
    invoke-static {p1}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoByPackageName(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 115
    .local v0, "game":Lcom/youku/gamecenter/data/GameInfo;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/youku/gamecenter/data/GameInfo;->download_way:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 116
    sget v1, Lcom/youku/gamecenter/R$string;->game_installable_prompt_updating:I

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 120
    :cond_1
    sget v1, Lcom/youku/gamecenter/R$string;->game_installable_prompt_install:I

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/outer/InstallablePromptHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-class v1, Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->sInstance:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->sInstance:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    .line 41
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->sInstance:Lcom/youku/gamecenter/outer/InstallablePromptHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getStringById(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadPromptAsync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lcom/youku/gamecenter/services/GetPresentListService;

    iget-object v2, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/youku/gamecenter/services/GetPresentListService;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, "service":Lcom/youku/gamecenter/services/GetPresentListService;
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/youku/gamecenter/services/URLContainer;->getPresentListByAppIdUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;

    invoke-direct {v2, p0, p2}, Lcom/youku/gamecenter/outer/InstallablePromptHelper$1;-><init>(Lcom/youku/gamecenter/outer/InstallablePromptHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/services/GetPresentListService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 87
    return-void
.end method

.method private notifyPromptGot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "prompt"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v2, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;

    .line 129
    .local v1, "listener":Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;
    invoke-interface {v1, p1, p2}, Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;->onInstallablePromptGot(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v1    # "listener":Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public getPromptDatas(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "packagename"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->mCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->mCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->loadPromptAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, ""

    goto :goto_0
.end method

.method protected isValidPresent(Lcom/youku/gamecenter/present/PresentListInfo;)Z
    .locals 5
    .param p1, "data"    # Lcom/youku/gamecenter/present/PresentListInfo;

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-virtual {p1}, Lcom/youku/gamecenter/present/PresentListInfo;->getAllPresents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/present/PresentInfo;

    .line 91
    .local v1, "item":Lcom/youku/gamecenter/present/PresentInfo;
    iget-object v3, v1, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    sget-object v4, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_GET:Lcom/youku/gamecenter/present/PresentStatus;

    if-ne v3, v4, :cond_2

    .line 104
    .end local v1    # "item":Lcom/youku/gamecenter/present/PresentInfo;
    :cond_1
    :goto_0
    return v2

    .line 94
    .restart local v1    # "item":Lcom/youku/gamecenter/present/PresentInfo;
    :cond_2
    iget-object v3, v1, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    sget-object v4, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_ING:Lcom/youku/gamecenter/present/PresentStatus;

    if-eq v3, v4, :cond_1

    .line 97
    iget-object v3, v1, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    sget-object v4, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_CHECK:Lcom/youku/gamecenter/present/PresentStatus;

    if-eq v3, v4, :cond_1

    .line 100
    iget-object v3, v1, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    sget-object v4, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_GET_ERROR_TIME:Lcom/youku/gamecenter/present/PresentStatus;

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 104
    .end local v1    # "item":Lcom/youku/gamecenter/present/PresentInfo;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeListener(Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
