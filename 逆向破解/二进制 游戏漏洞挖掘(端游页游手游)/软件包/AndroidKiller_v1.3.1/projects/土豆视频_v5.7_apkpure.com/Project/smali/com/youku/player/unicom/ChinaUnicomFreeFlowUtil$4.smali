.class final Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;
.super Ljava/lang/Object;
.source "ChinaUnicomFreeFlowUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->showChinaUnicom3GWAPDialog(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$alertDialog:Lcom/youku/player/unicom/ChinaUnicomAlertDialog;

.field final synthetic val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;


# direct methods
.method constructor <init>(Lcom/youku/player/unicom/ChinaUnicomAlertDialog;Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;->val$alertDialog:Lcom/youku/player/unicom/ChinaUnicomAlertDialog;

    iput-object p2, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-object p3, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 247
    sget-object v1, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->TAG:Ljava/lang/String;

    const-string v2, "WAP Dialog, user choose to continue playing"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sput-boolean v3, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isFirstShow:Z

    .line 249
    sput-boolean v3, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isAlertDialogShown:Z

    .line 250
    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;->val$alertDialog:Lcom/youku/player/unicom/ChinaUnicomAlertDialog;

    invoke-virtual {v1}, Lcom/youku/player/unicom/ChinaUnicomAlertDialog;->dismiss()V

    .line 251
    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 254
    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->checkChinaUnicom3GWapNet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    sget-boolean v1, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isTransformUrlSuccess:Z

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4$1;

    invoke-direct {v2, p0}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4$1;-><init>(Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 282
    :cond_0
    :goto_1
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 272
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    sget-object v1, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->TAG:Ljava/lang/String;

    const-string v2, "china unicom transform failed, and show dialog"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil$4;->val$mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {v1, v2}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->showChinaUnicomTransformFailedDialog(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    goto :goto_1
.end method
