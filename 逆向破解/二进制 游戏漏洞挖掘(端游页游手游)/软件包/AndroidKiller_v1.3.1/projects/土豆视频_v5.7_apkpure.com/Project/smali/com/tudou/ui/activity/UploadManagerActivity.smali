.class public Lcom/tudou/ui/activity/UploadManagerActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "UploadManagerActivity.java"


# static fields
.field public static mActivity:Lcom/tudou/ui/activity/UploadManagerActivity;


# instance fields
.field public titletext:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/tudou/ui/activity/UploadManagerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "extendValue"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "refercode"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-class v1, Lcom/tudou/ui/activity/UploadManagerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/tudou/ui/fragment/UploadFragment;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/tudou/ui/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 42
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/tudou/ui/fragment/UploadingFragment;->sFragment:Lcom/tudou/ui/fragment/UploadingFragment;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/tudou/ui/fragment/UploadingFragment;->sFragment:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 21
    sput-object p0, Lcom/tudou/ui/activity/UploadManagerActivity;->mActivity:Lcom/tudou/ui/activity/UploadManagerActivity;

    .line 22
    iput-boolean v0, p0, Lcom/tudou/ui/activity/UploadManagerActivity;->mAjust:Z

    .line 23
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/UploadManagerActivity;->requestWindowFeature(I)Z

    .line 27
    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/UploadManagerActivity;->setContentView(I)V

    .line 28
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/ui/activity/UploadManagerActivity;->mActivity:Lcom/tudou/ui/activity/UploadManagerActivity;

    .line 36
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onDestroy()V

    .line 37
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 32
    return-void
.end method
