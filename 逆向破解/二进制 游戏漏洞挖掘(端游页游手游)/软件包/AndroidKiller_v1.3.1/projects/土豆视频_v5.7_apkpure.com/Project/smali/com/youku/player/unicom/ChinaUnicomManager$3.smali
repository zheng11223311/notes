.class final Lcom/youku/player/unicom/ChinaUnicomManager$3;
.super Ljava/lang/Object;
.source "ChinaUnicomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/unicom/ChinaUnicomManager;->checkChinaUnicomStatus(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/module/VideoUrlInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field final synthetic val$videoInfo:Lcom/youku/player/module/VideoUrlInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/module/VideoUrlInfo;Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-object p2, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 164
    const-string v0, "ChinaUnicomManager"

    const-string v1, "check china unicom status"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v0, v0, Lcom/youku/player/module/LiveInfo;->status:I

    if-ne v0, v2, :cond_1

    .line 169
    const-string v0, "ChinaUnicomManager"

    const-string v1, "live is not free flow"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isDRMVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->checkChinaUnicom3GWapNet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    const-string v0, "ChinaUnicomManager"

    const-string v1, "3G WAP is not free flow, turn on a alert dialog"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {v0, v1}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->showChinaUnicom3GWAPDialog(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 183
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    goto :goto_0

    .line 188
    :cond_2
    sget-boolean v0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isTransformUrlSuccess:Z

    if-nez v0, :cond_3

    .line 189
    const-string v0, "ChinaUnicomManager"

    const-string/jumbo v1, "transform free flow failed, turn on a alert dialog"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {v0, v1}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->showChinaUnicomTransformFailedDialog(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 191
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    goto :goto_0

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 202
    sget-boolean v0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isTransformUrlSuccess:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->checkChinaUnicom3GWapNet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u5f53\u524d\u4f7f\u7528\u8054\u901a\u514d\u6d41\u91cf\u64ad\u653e"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {v0, v1}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->showChinaUnicomTransformFailedDialog(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 209
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager$3;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    goto :goto_0
.end method
