.class final Lcom/tudou/android/Youku$6;
.super Landroid/content/BroadcastReceiver;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/android/Youku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 925
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 929
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Net========change======"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 932
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/android/Youku;->isShowNetWorkChange:Z

    .line 939
    sget-boolean v0, Lcom/tudou/android/Youku;->isParse:Z

    if-eqz v0, :cond_0

    .line 940
    sput-boolean v3, Lcom/tudou/android/Youku;->isShowNetWorkChange:Z

    .line 945
    :cond_0
    :goto_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 946
    sget-object v0, Lcom/tudou/android/Youku;->msgHandler:Landroid/os/Handler;

    const/16 v1, 0x27b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 963
    :goto_1
    invoke-static {}, Lcom/tudou/android/Youku;->getCurrentNetState()Lcom/tudou/android/Youku$NetState;

    move-result-object v0

    sput-object v0, Lcom/tudou/android/Youku;->mCurrentNetState:Lcom/tudou/android/Youku$NetState;

    .line 964
    sget-boolean v0, Lcom/tudou/android/Youku;->sPageStillExist:Z

    if-eqz v0, :cond_1

    .line 965
    invoke-static {}, Lcom/tudou/ui/fragment/UploadingFragment;->noNetStateChange()V

    .line 967
    :cond_1
    return-void

    .line 942
    :cond_2
    sput-boolean v3, Lcom/tudou/android/Youku;->isShowNetWorkChange:Z

    goto :goto_0

    .line 948
    :cond_3
    sget-boolean v0, Lcom/tudou/ui/activity/HomePageActivity;->mIsFistInApp:Z

    if-eqz v0, :cond_4

    .line 949
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTipsImg(I)V

    goto :goto_1

    .line 951
    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tudou/android/Youku$6$1;

    invoke-direct {v1, p0}, Lcom/tudou/android/Youku$6$1;-><init>(Lcom/tudou/android/Youku$6;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
