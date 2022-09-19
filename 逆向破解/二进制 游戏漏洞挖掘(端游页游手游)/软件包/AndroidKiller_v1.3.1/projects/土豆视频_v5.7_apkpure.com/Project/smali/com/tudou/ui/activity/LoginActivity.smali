.class public Lcom/tudou/ui/activity/LoginActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "LoginActivity.java"


# static fields
.field public static final INTENT_DETAIL_ACTIVITY_FAVORITE:I = 0x3ee

.field public static final INTENT_PLAYER_ACTIVITY_FAVORITE:I = 0x3f0

.field public static final LOGIN_REQUEST:I = 0x7d0

.field public static mActivity:Lcom/tudou/ui/activity/LoginActivity;


# instance fields
.field private isORIENTATION_LANDSCAPE:Z

.field private lastTime:J

.field public titletext:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tudou/ui/activity/LoginActivity;->lastTime:J

    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 91
    const-class v0, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "extendValue"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "refercode"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-class v1, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 87
    return-void
.end method

.method public static trackExtendCustomEventExtend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sExtend"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "refercode"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-class v1, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p0, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 102
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 32
    const/4 v0, 0x0

    const v1, 0x7f04000a

    invoke-static {p0, v0, v1}, Lcom/youku/widget/YoukuAnimation;->activityClose(Landroid/content/Context;II)V

    .line 33
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-static {}, Lcom/tudou/videoshare/ShareUtil;->getTencentInstance()Lcom/tencent/tauth/Tencent;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->onActivityResult(IILandroid/content/Intent;)Z

    .line 65
    invoke-static {}, Lcom/tudou/videoshare/SinaShare;->getInstance()Lcom/tudou/videoshare/SinaShare;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tudou/videoshare/SinaShare;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 67
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data_string=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "requestCode===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-eqz p2, :cond_0

    .line 70
    invoke-static {p1, p2, p3}, Lcom/alibaba/sdk/android/callback/CallbackContext;->onActivityResult(IILandroid/content/Intent;)Z

    .line 72
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tudou/ui/activity/LoginActivity;->lastTime:J

    .line 42
    const-string v1, "TAG_TUDOU"

    const-string v2, "login===onCreate==start"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-boolean v4, p0, Lcom/tudou/ui/activity/LoginActivity;->mAjust:Z

    .line 44
    sput-object p0, Lcom/tudou/ui/activity/LoginActivity;->mActivity:Lcom/tudou/ui/activity/LoginActivity;

    .line 45
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/LoginActivity;->requestWindowFeature(I)Z

    .line 47
    invoke-virtual {p0}, Lcom/tudou/ui/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ORIENTATION"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tudou/ui/activity/LoginActivity;->isORIENTATION_LANDSCAPE:Z

    .line 48
    invoke-virtual {p0}, Lcom/tudou/ui/activity/LoginActivity;->getRequestedOrientation()I

    move-result v0

    .line 49
    .local v0, "currentOrientation":I
    iget-boolean v1, p0, Lcom/tudou/ui/activity/LoginActivity;->isORIENTATION_LANDSCAPE:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0, v5}, Lcom/tudou/ui/activity/LoginActivity;->setRequestedOrientation(I)V

    .line 55
    :cond_0
    :goto_0
    const v1, 0x7f030036

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/LoginActivity;->setContentView(I)V

    .line 56
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "login===onCreate over===time=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/tudou/ui/activity/LoginActivity;->lastTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 51
    :cond_1
    iget-boolean v1, p0, Lcom/tudou/ui/activity/LoginActivity;->isORIENTATION_LANDSCAPE:Z

    if-nez v1, :cond_0

    if-eq v0, v4, :cond_0

    .line 52
    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/LoginActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/ui/activity/LoginActivity;->mActivity:Lcom/tudou/ui/activity/LoginActivity;

    .line 77
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onDestroy()V

    .line 78
    return-void
.end method
