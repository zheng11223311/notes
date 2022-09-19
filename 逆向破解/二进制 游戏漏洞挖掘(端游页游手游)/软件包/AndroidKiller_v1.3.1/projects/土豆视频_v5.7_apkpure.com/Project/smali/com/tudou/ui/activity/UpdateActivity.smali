.class public Lcom/tudou/ui/activity/UpdateActivity;
.super Landroid/app/Activity;
.source "UpdateActivity.java"


# instance fields
.field private um:Lcom/youku/util/UpdateManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/tudou/ui/activity/UpdateActivity;->requestWindowFeature(I)Z

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 24
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    const v6, 0x7f03005b

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 26
    .local v2, "rootView":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/UpdateActivity;->setContentView(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0}, Lcom/tudou/ui/activity/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 28
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 29
    const-string/jumbo v6, "updateurl"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, "updateurl":Ljava/lang/String;
    const-string/jumbo v6, "updateversion"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 31
    .local v5, "updateversion":Ljava/lang/String;
    const-string/jumbo v6, "updatecontent"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "updatecontent":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 33
    const-string v3, ""

    .line 35
    :cond_0
    new-instance v6, Lcom/youku/util/UpdateManager;

    invoke-direct {v6, p0}, Lcom/youku/util/UpdateManager;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/tudou/ui/activity/UpdateActivity;->um:Lcom/youku/util/UpdateManager;

    .line 36
    iget-object v6, p0, Lcom/tudou/ui/activity/UpdateActivity;->um:Lcom/youku/util/UpdateManager;

    sget-object v7, Lcom/youku/util/UpdateManager$UpdateType;->push:Lcom/youku/util/UpdateManager$UpdateType;

    invoke-virtual {v6, v4, v5, v3, v7}, Lcom/youku/util/UpdateManager;->setUpdateInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/UpdateManager$UpdateType;)V

    .line 38
    iget-object v6, p0, Lcom/tudou/ui/activity/UpdateActivity;->um:Lcom/youku/util/UpdateManager;

    invoke-virtual {v6}, Lcom/youku/util/UpdateManager;->showNoticeDialog()V

    .line 40
    .end local v3    # "updatecontent":Ljava/lang/String;
    .end local v4    # "updateurl":Ljava/lang/String;
    .end local v5    # "updateversion":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/ui/activity/UpdateActivity;->um:Lcom/youku/util/UpdateManager;

    invoke-virtual {v0}, Lcom/youku/util/UpdateManager;->dialogDismiss()V

    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 46
    return-void
.end method
