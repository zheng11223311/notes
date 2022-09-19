.class Lcom/mobisage/android/MobiSageAdBanner$1;
.super Ljava/lang/Object;
.source "MobiSageAdBanner.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageAdViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageAdBanner;->initMobiSageAdView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdBanner;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageAdBanner;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdBanner$1;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMobiSageAdViewClick(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner$1;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdBanner;->mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner$1;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdBanner;->mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

    check-cast p1, Lcom/mobisage/android/MobiSageAdBanner;

    .end local p1    # "adView":Lcom/mobisage/android/MobiSageAdView;
    invoke-interface {v0, p1}, Lcom/mobisage/android/MobiSageAdBannerListener;->onMobiSageBannerClick(Lcom/mobisage/android/MobiSageAdBanner;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewClose(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner$1;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdBanner;->mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner$1;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdBanner;->mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

    check-cast p1, Lcom/mobisage/android/MobiSageAdBanner;

    .end local p1    # "adView":Lcom/mobisage/android/MobiSageAdView;
    invoke-interface {v0, p1}, Lcom/mobisage/android/MobiSageAdBannerListener;->onMobiSageBannerClose(Lcom/mobisage/android/MobiSageAdBanner;)V

    .line 155
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewError(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner$1;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdBanner;->mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner$1;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdBanner;->mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

    check-cast p1, Lcom/mobisage/android/MobiSageAdBanner;

    .end local p1    # "adView":Lcom/mobisage/android/MobiSageAdView;
    invoke-interface {v0, p1}, Lcom/mobisage/android/MobiSageAdBannerListener;->onMobiSageBannerError(Lcom/mobisage/android/MobiSageAdBanner;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewHide(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner$1;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdBanner;->mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner$1;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdBanner;->mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

    check-cast p1, Lcom/mobisage/android/MobiSageAdBanner;

    .end local p1    # "adView":Lcom/mobisage/android/MobiSageAdView;
    invoke-interface {v0, p1}, Lcom/mobisage/android/MobiSageAdBannerListener;->onMobiSageBannerHide(Lcom/mobisage/android/MobiSageAdBanner;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewHideWindow(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner$1;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdBanner;->mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner$1;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdBanner;->mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

    check-cast p1, Lcom/mobisage/android/MobiSageAdBanner;

    .end local p1    # "adView":Lcom/mobisage/android/MobiSageAdView;
    invoke-interface {v0, p1}, Lcom/mobisage/android/MobiSageAdBannerListener;->onMobiSageBannerHideWindow(Lcom/mobisage/android/MobiSageAdBanner;)V

    .line 131
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewPopupWindow(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner$1;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdBanner;->mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner$1;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdBanner;->mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

    check-cast p1, Lcom/mobisage/android/MobiSageAdBanner;

    .end local p1    # "adView":Lcom/mobisage/android/MobiSageAdView;
    invoke-interface {v0, p1}, Lcom/mobisage/android/MobiSageAdBannerListener;->onMobiSageBannerPopupWindow(Lcom/mobisage/android/MobiSageAdBanner;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewShow(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner$1;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdBanner;->mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdBanner$1;->this$0:Lcom/mobisage/android/MobiSageAdBanner;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdBanner;->mDevListener:Lcom/mobisage/android/MobiSageAdBannerListener;

    check-cast p1, Lcom/mobisage/android/MobiSageAdBanner;

    .end local p1    # "adView":Lcom/mobisage/android/MobiSageAdView;
    invoke-interface {v0, p1}, Lcom/mobisage/android/MobiSageAdBannerListener;->onMobiSageBannerShow(Lcom/mobisage/android/MobiSageAdBanner;)V

    .line 115
    :cond_0
    return-void
.end method
