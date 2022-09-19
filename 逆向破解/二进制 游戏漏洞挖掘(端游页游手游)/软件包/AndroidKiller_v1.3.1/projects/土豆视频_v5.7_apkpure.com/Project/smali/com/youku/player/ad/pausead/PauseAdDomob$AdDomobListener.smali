.class Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;
.super Ljava/lang/Object;
.source "PauseAdDomob.java"

# interfaces
.implements Lcn/domob/android/ads/VideoInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/ad/pausead/PauseAdDomob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdDomobListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/pausead/PauseAdDomob;


# direct methods
.method private constructor <init>(Lcom/youku/player/ad/pausead/PauseAdDomob;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdDomob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/player/ad/pausead/PauseAdDomob;Lcom/youku/player/ad/pausead/PauseAdDomob$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/player/ad/pausead/PauseAdDomob;
    .param p2, "x1"    # Lcom/youku/player/ad/pausead/PauseAdDomob$1;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;-><init>(Lcom/youku/player/ad/pausead/PauseAdDomob;)V

    return-void
.end method


# virtual methods
.method public onLandingPageClose()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onLandingPageOpen()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public onVideoInterstitialAdClicked()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/pausead/IPauseAdCallback;->onPauseAdDismiss()V

    .line 115
    :cond_0
    return-void
.end method

.method public onVideoInterstitialAdDismiss()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onVideoInterstitialAdFailed(Lcn/domob/android/ads/AdManager$ErrorCode;)V
    .locals 1
    .param p1, "arg0"    # Lcn/domob/android/ads/AdManager$ErrorCode;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/pausead/IPauseAdCallback;->onPauseAdFailed()V

    .line 131
    :cond_0
    return-void
.end method

.method public onVideoInterstitialAdLeaveApplication()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onVideoInterstitialAdPresent()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdDomob;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdDomob$AdDomobListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdDomob;

    iget v1, v1, Lcom/youku/player/ad/pausead/PauseAdDomob;->mRequest:I

    invoke-interface {v0, v1}, Lcom/youku/player/ad/pausead/IPauseAdCallback;->onPauseAdPresent(I)V

    .line 100
    :cond_0
    return-void
.end method

.method public onVideoInterstitialAdReady()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
