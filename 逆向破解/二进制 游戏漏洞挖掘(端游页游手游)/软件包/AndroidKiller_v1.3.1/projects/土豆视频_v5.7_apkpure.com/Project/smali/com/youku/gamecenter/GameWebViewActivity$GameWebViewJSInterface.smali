.class public Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;
.super Ljava/lang/Object;
.source "GameWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameWebViewJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/GameWebViewActivity;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadGame()V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 383
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameWebViewActivity;->access$400(Lcom/youku/gamecenter/GameWebViewActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 384
    const-string v0, "GameWebViewActivity"

    const-string v1, "gameinfo\u4e3a\u7a7a\uff01"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameWebViewActivity;->access$400(Lcom/youku/gamecenter/GameWebViewActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_1

    .line 388
    const-string v0, "GameWebViewActivity"

    const-string v1, "GameWebViewActivity -> downloadGame Downloading , ignore\uff01"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameWebViewActivity;->access$900(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameWebViewActivity;->access$400(Lcom/youku/gamecenter/GameWebViewActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    const-string v2, "39"

    const-string v4, ""

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public downloadGameById(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 414
    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    iget-object v1, v1, Lcom/youku/gamecenter/GameWebViewActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v1, p1}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoFromGameManagerById(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 416
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    if-nez v0, :cond_0

    .line 417
    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v1, p1}, Lcom/youku/gamecenter/GameWebViewActivity;->access$1100(Lcom/youku/gamecenter/GameWebViewActivity;Ljava/lang/String;)V

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    iget-object v2, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/GameWebViewActivity;->access$900(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v3}, Lcom/youku/gamecenter/GameWebViewActivity;->access$1000(Lcom/youku/gamecenter/GameWebViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/youku/gamecenter/GameWebViewActivity;->access$1200(Lcom/youku/gamecenter/GameWebViewActivity;Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 446
    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "youku"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "tudou"

    goto :goto_0
.end method

.method public goGameDetails()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameWebViewActivity;->access$400(Lcom/youku/gamecenter/GameWebViewActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 399
    const-string v0, "GameWebViewActivity"

    const-string v1, "gameinfo\u4e3a\u7a7a\uff01"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameWebViewActivity;->access$900(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameWebViewActivity;->access$400(Lcom/youku/gamecenter/GameWebViewActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/GameWebViewActivity;->access$1000(Lcom/youku/gamecenter/GameWebViewActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public goGameDetailsById(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameWebViewActivity;->access$900(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameWebViewActivity;->access$1000(Lcom/youku/gamecenter/GameWebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public handleActivitionCodeCopy(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameWebViewActivity;->access$900(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameWebViewActivity;->access$900(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_copy_to_clipboard_success:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/youku/gamecenter/util/SystemUtils;->copyDataToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public handleEncryptKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0, p1}, Lcom/youku/gamecenter/GameWebViewActivity;->access$1400(Lcom/youku/gamecenter/GameWebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleExtractPrize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prizeId"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$GameWebViewJSInterface;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/youku/gamecenter/GameWebViewActivity;->access$1300(Lcom/youku/gamecenter/GameWebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method
