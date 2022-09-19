.class Lcom/youku/player/ad/pausead/PauseAdYouku$3;
.super Ljava/lang/Object;
.source "PauseAdYouku.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/pausead/PauseAdYouku;->showADImageWhenLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/pausead/PauseAdYouku;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$3;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u70b9\u51fb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$3;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    invoke-static {v2}, Lcom/youku/player/ad/pausead/PauseAdYouku;->access$500(Lcom/youku/player/ad/pausead/PauseAdYouku;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$3;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$3;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    invoke-static {v1}, Lcom/youku/player/ad/pausead/PauseAdYouku;->access$600(Lcom/youku/player/ad/pausead/PauseAdYouku;)Lcom/youku/player/goplay/AdvInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/player/util/DisposableStatsUtils;->disposeCUM(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 189
    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$3;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    invoke-static {v0}, Lcom/youku/player/ad/pausead/PauseAdYouku;->access$600(Lcom/youku/player/ad/pausead/PauseAdYouku;)Lcom/youku/player/goplay/AdvInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$3;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    invoke-static {v1}, Lcom/youku/player/ad/pausead/PauseAdYouku;->access$500(Lcom/youku/player/ad/pausead/PauseAdYouku;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/player/util/AdUtil;->isDownloadAPK(Lcom/youku/player/goplay/AdvInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIDownloadApk:Lcom/youku/player/apiservice/IDownloadApk;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$3;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$3;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v1, v1, Lcom/youku/player/ad/pausead/PauseAdYouku;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/youku/player/ad/pausead/PauseAdYouku;->access$700(Lcom/youku/player/ad/pausead/PauseAdYouku;Landroid/app/Activity;Z)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$3;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$3;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/pausead/IPauseAdCallback;->onPauseAdDismiss()V

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$3;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$3;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdYouku;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$3;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    invoke-static {v1}, Lcom/youku/player/ad/pausead/PauseAdYouku;->access$500(Lcom/youku/player/ad/pausead/PauseAdYouku;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$3;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    invoke-static {v2}, Lcom/youku/player/ad/pausead/PauseAdYouku;->access$600(Lcom/youku/player/ad/pausead/PauseAdYouku;)Lcom/youku/player/goplay/AdvInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->onMoreInfoClicked(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    goto :goto_0
.end method
