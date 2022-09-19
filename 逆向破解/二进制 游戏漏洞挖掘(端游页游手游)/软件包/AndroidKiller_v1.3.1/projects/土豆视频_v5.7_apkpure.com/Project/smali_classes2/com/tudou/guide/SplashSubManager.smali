.class public Lcom/tudou/guide/SplashSubManager;
.super Ljava/lang/Object;
.source "SplashSubManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/guide/SplashSubManager$CallBack;,
        Lcom/tudou/guide/SplashSubManager$OnGoInAppListener;,
        Lcom/tudou/guide/SplashSubManager$OnCancelAttention;,
        Lcom/tudou/guide/SplashSubManager$OnAddAttention;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Splash_Manager"

.field private static instance:Lcom/tudou/guide/SplashSubManager;

.field public static res:[I


# instance fields
.field private activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private guideSub:Lcom/youku/vo/GuideSub;

.field private mIsSubedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideTab;",
            ">;"
        }
    .end annotation
.end field

.field private onGoInAppListener:Lcom/tudou/guide/SplashSubManager$OnGoInAppListener;

.field private results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideSubResult;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideTab;",
            ">;"
        }
    .end annotation
.end field

.field private subedsTab:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/vo/GuideTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tudou/guide/SplashSubManager;->res:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0208e3
        0x7f0208e4
        0x7f0208e6
        0x7f0208e5
        0x7f0208e7
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/guide/SplashSubManager;->mTabs:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tudou/guide/SplashSubManager;->mIsSubedList:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tudou/guide/SplashSubManager;->subedsTab:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/guide/SplashSubManager;->selectedTabs:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/guide/SplashSubManager;->results:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/guide/SplashSubManager;)Lcom/youku/vo/GuideSub;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/guide/SplashSubManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager;->guideSub:Lcom/youku/vo/GuideSub;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tudou/guide/SplashSubManager;Lcom/youku/vo/GuideSub;)Lcom/youku/vo/GuideSub;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/guide/SplashSubManager;
    .param p1, "x1"    # Lcom/youku/vo/GuideSub;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tudou/guide/SplashSubManager;->guideSub:Lcom/youku/vo/GuideSub;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/guide/SplashSubManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/guide/SplashSubManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/tudou/guide/SplashSubManager;
    .locals 3

    .prologue
    .line 60
    const-class v1, Lcom/tudou/guide/SplashSubManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tudou/guide/SplashSubManager;->instance:Lcom/tudou/guide/SplashSubManager;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "Splash_Manager"

    const-string v2, "getInstance()"

    invoke-static {v0, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/tudou/guide/SplashSubManager;

    invoke-direct {v0}, Lcom/tudou/guide/SplashSubManager;-><init>()V

    sput-object v0, Lcom/tudou/guide/SplashSubManager;->instance:Lcom/tudou/guide/SplashSubManager;

    .line 65
    :cond_0
    sget-object v0, Lcom/tudou/guide/SplashSubManager;->instance:Lcom/tudou/guide/SplashSubManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addAttention(Ljava/util/ArrayList;Lcom/tudou/guide/SplashSubManager$OnAddAttention;Z)V
    .locals 2
    .param p2, "onAddAttention"    # Lcom/tudou/guide/SplashSubManager$OnAddAttention;
    .param p3, "isAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideTab;",
            ">;",
            "Lcom/tudou/guide/SplashSubManager$OnAddAttention;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/GuideTab;>;"
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    new-instance v1, Lcom/tudou/guide/SplashSubManager$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/tudou/guide/SplashSubManager$2;-><init>(Lcom/tudou/guide/SplashSubManager;Ljava/util/ArrayList;ZLcom/tudou/guide/SplashSubManager$OnAddAttention;)V

    invoke-interface {v0, p1, v1}, Lcom/tudou/service/attention/IAttention;->addSQLAttention(Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V

    .line 154
    return-void
.end method

.method public addSelectList(Lcom/youku/vo/GuideTab;)V
    .locals 2
    .param p1, "ids"    # Lcom/youku/vo/GuideTab;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/tudou/guide/SplashSubManager;->getSubedsTab()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/tudou/guide/SplashSubManager;->getSubedsTab()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    return-void
.end method

.method public canelAttention(Lcom/youku/vo/GuideTab;Lcom/tudou/guide/SplashSubManager$OnCancelAttention;)V
    .locals 2
    .param p1, "tab"    # Lcom/youku/vo/GuideTab;
    .param p2, "onCancelAttention"    # Lcom/tudou/guide/SplashSubManager$OnCancelAttention;

    .prologue
    .line 161
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tudou/service/attention/IAttention;->deleteLocalAttention(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/tudou/guide/SplashSubManager;->getSubedsTab()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/tudou/guide/SplashSubManager;->getSubedsTab()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/guide/SplashSubManager;->getSelectedTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/tudou/guide/SplashSubManager;->getSelectedTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 169
    :cond_1
    iget-object v0, p1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tudou/guide/SplashSubManager;->setResultTabs(Ljava/lang/String;Z)V

    .line 170
    invoke-interface {p2}, Lcom/tudou/guide/SplashSubManager$OnCancelAttention;->onFinish()V

    .line 171
    const v0, 0x7f0d01df

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_2
    const v0, 0x7f0d01e0

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0
.end method

.method public changePodToTab(Lcom/youku/vo/Podcast;)V
    .locals 3
    .param p1, "podcast"    # Lcom/youku/vo/Podcast;

    .prologue
    .line 275
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v1, v1, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager;->mTabs:Ljava/util/ArrayList;

    new-instance v2, Lcom/youku/vo/GuideTab;

    invoke-direct {v2}, Lcom/youku/vo/GuideTab;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/GuideTab;

    iget-object v2, p1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v2, v2, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/Podcast$Users$Subs;

    iget-object v2, v2, Lcom/youku/vo/Podcast$Users$Subs;->upic:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/GuideTab;->avatar:Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/GuideTab;

    iget-object v2, p1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v2, v2, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/Podcast$Users$Subs;

    iget v2, v2, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    .line 280
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/GuideTab;

    iget-object v2, p1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v2, v2, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/Podcast$Users$Subs;

    iget-object v2, v2, Lcom/youku/vo/Podcast$Users$Subs;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/GuideTab;->podcast_user_nick:Ljava/lang/String;

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    return-void
.end method

.method public getActivities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager;->activities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGuideSub()Lcom/youku/vo/GuideSub;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager;->guideSub:Lcom/youku/vo/GuideSub;

    return-object v0
.end method

.method public getIsSubed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager;->mIsSubedList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager;->mIsSubedList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getOnGoInAppListener()Lcom/tudou/guide/SplashSubManager$OnGoInAppListener;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager;->onGoInAppListener:Lcom/tudou/guide/SplashSubManager$OnGoInAppListener;

    return-object v0
.end method

.method public getResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideSubResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager;->results:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedTabs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideTab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager;->selectedTabs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/guide/SplashSubManager;->selectedTabs:Ljava/util/ArrayList;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager;->selectedTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSubData(Lcom/tudou/guide/SplashSubManager$CallBack;)V
    .locals 4
    .param p1, "callback"    # Lcom/tudou/guide/SplashSubManager$CallBack;

    .prologue
    .line 76
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    :goto_0
    return-void

    .line 78
    :cond_0
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 80
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getGuideSub()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/guide/SplashSubManager$1;

    invoke-direct {v2, p0, p1}, Lcom/tudou/guide/SplashSubManager$1;-><init>(Lcom/tudou/guide/SplashSubManager;Lcom/tudou/guide/SplashSubManager$CallBack;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public getSubedsTab()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/vo/GuideTab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager;->subedsTab:Ljava/util/HashMap;

    return-object v0
.end method

.method public isContains(Lcom/youku/vo/GuideTab;)Z
    .locals 2
    .param p1, "t"    # Lcom/youku/vo/GuideTab;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tudou/guide/SplashSubManager;->getSubedsTab()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tudou/guide/SplashSubManager;->getSubedsTab()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/tudou/guide/SplashSubManager;->getSubedsTab()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActivities(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Activity;>;"
    iput-object p1, p0, Lcom/tudou/guide/SplashSubManager;->activities:Ljava/util/ArrayList;

    .line 245
    return-void
.end method

.method public setGuideSub(Lcom/youku/vo/GuideSub;)V
    .locals 0
    .param p1, "guideSub"    # Lcom/youku/vo/GuideSub;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/tudou/guide/SplashSubManager;->guideSub:Lcom/youku/vo/GuideSub;

    .line 221
    return-void
.end method

.method public setOnGoInAppListener(Landroid/app/Activity;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 193
    new-instance v0, Lcom/tudou/guide/SplashSubManager$3;

    invoke-direct {v0, p0, p1}, Lcom/tudou/guide/SplashSubManager$3;-><init>(Lcom/tudou/guide/SplashSubManager;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tudou/guide/SplashSubManager;->onGoInAppListener:Lcom/tudou/guide/SplashSubManager$OnGoInAppListener;

    .line 213
    return-void
.end method

.method public setResultTabs(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager;->mIsSubedList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager;->mIsSubedList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_0
    return-void
.end method

.method public setResults(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideSubResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/GuideSubResult;>;"
    iput-object p1, p0, Lcom/tudou/guide/SplashSubManager;->results:Ljava/util/ArrayList;

    .line 229
    return-void
.end method

.method public setSelectedTabs(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GuideTab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "selectedTabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/GuideTab;>;"
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager;->selectedTabs:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager;->selectedTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 263
    :cond_0
    if-nez p1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager;->selectedTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 272
    :cond_1
    return-void

    .line 266
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 267
    iget-object v2, p0, Lcom/tudou/guide/SplashSubManager;->subedsTab:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/GuideTab;

    iget-object v1, v1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager;->selectedTabs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSubedsTab(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/vo/GuideTab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "subedsTab":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/youku/vo/GuideTab;>;"
    iput-object p1, p0, Lcom/tudou/guide/SplashSubManager;->subedsTab:Ljava/util/HashMap;

    .line 237
    return-void
.end method
