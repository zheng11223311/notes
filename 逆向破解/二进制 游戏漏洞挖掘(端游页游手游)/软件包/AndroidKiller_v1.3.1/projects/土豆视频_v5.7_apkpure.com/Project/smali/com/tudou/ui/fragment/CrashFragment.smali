.class public Lcom/tudou/ui/fragment/CrashFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "CrashFragment.java"


# instance fields
.field private crash:Lcom/youku/vo/Crash;

.field private latitude:D

.field private localGPS:Lcom/youku/util/GetLocalGPS;

.field private longitude:D

.field mCrashManager:Lcom/tudou/ui/activity/CrashManager;

.field mOnShakeListener:Lcom/tudou/ui/activity/CrashManager$OnShakeListener;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 33
    const-string v0, "CrashActivity"

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashFragment;->tag:Ljava/lang/String;

    .line 34
    iput-wide v2, p0, Lcom/tudou/ui/fragment/CrashFragment;->latitude:D

    .line 35
    iput-wide v2, p0, Lcom/tudou/ui/fragment/CrashFragment;->longitude:D

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashFragment;->mCrashManager:Lcom/tudou/ui/activity/CrashManager;

    .line 39
    new-instance v0, Lcom/tudou/ui/fragment/CrashFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/CrashFragment$1;-><init>(Lcom/tudou/ui/fragment/CrashFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashFragment;->mOnShakeListener:Lcom/tudou/ui/activity/CrashManager$OnShakeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/CrashFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CrashFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashFragment;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/CrashFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CrashFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/tudou/ui/fragment/CrashFragment;->crash()V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/CrashFragment;)Lcom/youku/vo/Crash;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CrashFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashFragment;->crash:Lcom/youku/vo/Crash;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tudou/ui/fragment/CrashFragment;Lcom/youku/vo/Crash;)Lcom/youku/vo/Crash;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CrashFragment;
    .param p1, "x1"    # Lcom/youku/vo/Crash;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tudou/ui/fragment/CrashFragment;->crash:Lcom/youku/vo/Crash;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/CrashFragment;Lcom/youku/vo/Crash;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/CrashFragment;
    .param p1, "x1"    # Lcom/youku/vo/Crash;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/CrashFragment;->goResultActivity(Lcom/youku/vo/Crash;)V

    return-void
.end method

.method private crash()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 72
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 73
    const v3, 0x7f0d02c3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 74
    iget-object v3, p0, Lcom/tudou/ui/fragment/CrashFragment;->mCrashManager:Lcom/tudou/ui/activity/CrashManager;

    invoke-virtual {v3, v6}, Lcom/tudou/ui/activity/CrashManager;->setEnable(Z)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v3, "crash"

    invoke-static {v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/tudou/ui/fragment/CrashFragment;->mCrashManager:Lcom/tudou/ui/activity/CrashManager;

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/CrashManager;->setEnable(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CrashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;Z)V

    .line 81
    sget-wide v4, Lcom/youku/util/GetLocalGPS;->mLocGPS_latitude:D

    iput-wide v4, p0, Lcom/tudou/ui/fragment/CrashFragment;->latitude:D

    .line 82
    sget-wide v4, Lcom/youku/util/GetLocalGPS;->mLocGPS_longitude:D

    iput-wide v4, p0, Lcom/tudou/ui/fragment/CrashFragment;->longitude:D

    .line 83
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v6}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 85
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    iget-wide v4, p0, Lcom/tudou/ui/fragment/CrashFragment;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, p0, Lcom/tudou/ui/fragment/CrashFragment;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/http/TudouURLContainer;->getCrashUrl(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/ui/fragment/CrashFragment;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/ui/fragment/CrashFragment$3;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/CrashFragment$3;-><init>(Lcom/tudou/ui/fragment/CrashFragment;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method private goResultActivity(Lcom/youku/vo/Crash;)V
    .locals 4
    .param p1, "c"    # Lcom/youku/vo/Crash;

    .prologue
    .line 115
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CrashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/CrashResultAcitvity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 117
    if-eqz p1, :cond_0

    iget v2, p1, Lcom/youku/vo/Crash;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "crash"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 120
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 122
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CrashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CrashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 123
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CrashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method private initTitle(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    const v3, 0x7f0c0094

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 52
    const v3, 0x7f0c00a7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 54
    .local v0, "back_img":Landroid/widget/ImageView;
    new-instance v3, Lcom/tudou/ui/fragment/CrashFragment$2;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/CrashFragment$2;-><init>(Lcom/tudou/ui/fragment/CrashFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v3, 0x7f0c00df

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    .local v2, "txt_title":Landroid/widget/TextView;
    const v3, 0x7f0d00d0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 134
    const v1, 0x7f030073

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/CrashFragment;->initTitle(Landroid/view/View;)V

    .line 136
    new-instance v1, Lcom/youku/util/GetLocalGPS;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CrashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/youku/util/GetLocalGPS;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/CrashFragment;->localGPS:Lcom/youku/util/GetLocalGPS;

    .line 137
    new-instance v1, Lcom/tudou/ui/activity/CrashManager;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/CrashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tudou/ui/activity/CrashManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/CrashFragment;->mCrashManager:Lcom/tudou/ui/activity/CrashManager;

    .line 138
    iget-object v1, p0, Lcom/tudou/ui/fragment/CrashFragment;->mCrashManager:Lcom/tudou/ui/activity/CrashManager;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CrashFragment;->mOnShakeListener:Lcom/tudou/ui/activity/CrashManager$OnShakeListener;

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/CrashManager;->start(Lcom/tudou/ui/activity/CrashManager$OnShakeListener;)Z

    .line 139
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashFragment;->localGPS:Lcom/youku/util/GetLocalGPS;

    invoke-virtual {v0}, Lcom/youku/util/GetLocalGPS;->stopGetLL()V

    .line 152
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 153
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashFragment;->mCrashManager:Lcom/tudou/ui/activity/CrashManager;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/CrashManager;->stop()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/ui/fragment/CrashFragment;->mCrashManager:Lcom/tudou/ui/activity/CrashManager;

    .line 155
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashFragment;->mCrashManager:Lcom/tudou/ui/activity/CrashManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/CrashManager;->setEnable(Z)V

    .line 145
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashFragment;->localGPS:Lcom/youku/util/GetLocalGPS;

    invoke-virtual {v0}, Lcom/youku/util/GetLocalGPS;->startGetLL()V

    .line 146
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 147
    return-void
.end method
