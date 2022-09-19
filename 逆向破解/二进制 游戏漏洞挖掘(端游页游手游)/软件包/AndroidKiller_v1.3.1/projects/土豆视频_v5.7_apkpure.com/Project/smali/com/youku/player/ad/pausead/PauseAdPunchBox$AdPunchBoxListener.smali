.class Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;
.super Ljava/lang/Object;
.source "PauseAdPunchBox.java"

# interfaces
.implements Lcom/punchbox/listener/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/ad/pausead/PauseAdPunchBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdPunchBoxListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/pausead/PauseAdPunchBox;


# direct methods
.method private constructor <init>(Lcom/youku/player/ad/pausead/PauseAdPunchBox;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/player/ad/pausead/PauseAdPunchBox;Lcom/youku/player/ad/pausead/PauseAdPunchBox$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/player/ad/pausead/PauseAdPunchBox;
    .param p2, "x1"    # Lcom/youku/player/ad/pausead/PauseAdPunchBox$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;-><init>(Lcom/youku/player/ad/pausead/PauseAdPunchBox;)V

    return-void
.end method


# virtual methods
.method public onDismissScreen()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/pausead/IPauseAdCallback;->onPauseAdClose()V

    .line 97
    :cond_0
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/punchbox/exception/PBException;)V
    .locals 2
    .param p1, "arg0"    # Lcom/punchbox/exception/PBException;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->disposeAdLoss(I)V

    .line 102
    return-void
.end method

.method public onPresentScreen()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    iget v1, v1, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->mRequest:I

    invoke-interface {v0, v1}, Lcom/youku/player/ad/pausead/IPauseAdCallback;->onPauseAdPresent(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public onReceiveAd()V
    .locals 4

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    invoke-static {v1}, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->access$100(Lcom/youku/player/ad/pausead/PauseAdPunchBox;)Lcom/punchbox/ads/InterstitialAd;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    invoke-static {v1}, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->access$100(Lcom/youku/player/ad/pausead/PauseAdPunchBox;)Lcom/punchbox/ads/InterstitialAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/punchbox/ads/InterstitialAd;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    invoke-static {v1}, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->access$200(Lcom/youku/player/ad/pausead/PauseAdPunchBox;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 116
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    invoke-static {v1}, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->access$100(Lcom/youku/player/ad/pausead/PauseAdPunchBox;)Lcom/punchbox/ads/InterstitialAd;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    invoke-static {v2}, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->access$200(Lcom/youku/player/ad/pausead/PauseAdPunchBox;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/punchbox/ads/InterstitialAd;->show(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdPunchBox;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/youku/player/ad/pausead/PauseAdPunchBox;->disposeAdLoss(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
