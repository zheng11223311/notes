.class Lcom/mobisage/android/MobiSageAdProductPlacement$1;
.super Ljava/lang/Object;
.source "MobiSageAdProductPlacement.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageAdViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageAdProductPlacement;->initMobiSageAdView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdProductPlacement$1;->this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMobiSageAdViewClick(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdProductPlacement$1;->this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdProductPlacement$1;->this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    check-cast p1, Lcom/mobisage/android/MobiSageAdProductPlacement;

    .end local p1    # "adView":Lcom/mobisage/android/MobiSageAdView;
    invoke-interface {v0, p1}, Lcom/mobisage/android/MobiSageAdProductPlacementListener;->onMobiSageProductPlacementClick(Lcom/mobisage/android/MobiSageAdProductPlacement;)V

    .line 205
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewClose(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdProductPlacement$1;->this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdProductPlacement$1;->this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    check-cast p1, Lcom/mobisage/android/MobiSageAdProductPlacement;

    .end local p1    # "adView":Lcom/mobisage/android/MobiSageAdView;
    invoke-interface {v0, p1}, Lcom/mobisage/android/MobiSageAdProductPlacementListener;->onMobiSageProductPlacementClose(Lcom/mobisage/android/MobiSageAdProductPlacement;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewError(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdProductPlacement$1;->this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdProductPlacement$1;->this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    check-cast p1, Lcom/mobisage/android/MobiSageAdProductPlacement;

    .end local p1    # "adView":Lcom/mobisage/android/MobiSageAdView;
    invoke-interface {v0, p1}, Lcom/mobisage/android/MobiSageAdProductPlacementListener;->onMobiSageProductPlacementError(Lcom/mobisage/android/MobiSageAdProductPlacement;)V

    .line 189
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewHide(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdProductPlacement$1;->this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdProductPlacement$1;->this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    check-cast p1, Lcom/mobisage/android/MobiSageAdProductPlacement;

    .end local p1    # "adView":Lcom/mobisage/android/MobiSageAdView;
    invoke-interface {v0, p1}, Lcom/mobisage/android/MobiSageAdProductPlacementListener;->onMobiSageProductPlacementHide(Lcom/mobisage/android/MobiSageAdProductPlacement;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewHideWindow(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdProductPlacement$1;->this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdProductPlacement$1;->this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    check-cast p1, Lcom/mobisage/android/MobiSageAdProductPlacement;

    .end local p1    # "adView":Lcom/mobisage/android/MobiSageAdView;
    invoke-interface {v0, p1}, Lcom/mobisage/android/MobiSageAdProductPlacementListener;->onMobiSageProductPlacementHideWindow(Lcom/mobisage/android/MobiSageAdProductPlacement;)V

    .line 221
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewPopupWindow(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdProductPlacement$1;->this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdProductPlacement$1;->this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    check-cast p1, Lcom/mobisage/android/MobiSageAdProductPlacement;

    .end local p1    # "adView":Lcom/mobisage/android/MobiSageAdView;
    invoke-interface {v0, p1}, Lcom/mobisage/android/MobiSageAdProductPlacementListener;->onMobiSageProductPlacementPopupWindow(Lcom/mobisage/android/MobiSageAdProductPlacement;)V

    .line 213
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewShow(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 2
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 168
    iget-object v0, p1, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    const-string v1, "javascript:showAdView()"

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageAdWebView;->loadUrl(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdProductPlacement$1;->this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdProductPlacement$1;->this$0:Lcom/mobisage/android/MobiSageAdProductPlacement;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdProductPlacement;->mDevListener:Lcom/mobisage/android/MobiSageAdProductPlacementListener;

    check-cast p1, Lcom/mobisage/android/MobiSageAdProductPlacement;

    .end local p1    # "adView":Lcom/mobisage/android/MobiSageAdView;
    invoke-interface {v0, p1}, Lcom/mobisage/android/MobiSageAdProductPlacementListener;->onMobiSageProductPlacementShow(Lcom/mobisage/android/MobiSageAdProductPlacement;)V

    .line 173
    :cond_0
    return-void
.end method
