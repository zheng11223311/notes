.class Lcom/mobisage/android/MobiSageAdPoster$1;
.super Ljava/lang/Object;
.source "MobiSageAdPoster.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageAdViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageAdPoster;->initMobiSageAdView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdPoster;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageAdPoster;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdPoster$1;->this$0:Lcom/mobisage/android/MobiSageAdPoster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMobiSageAdViewClick(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdPoster$1;->this$0:Lcom/mobisage/android/MobiSageAdPoster;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPoster;->mDevListener:Lcom/mobisage/android/MobiSageAdPosterListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdPoster$1;->this$0:Lcom/mobisage/android/MobiSageAdPoster;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPoster;->mDevListener:Lcom/mobisage/android/MobiSageAdPosterListener;

    invoke-interface {v0}, Lcom/mobisage/android/MobiSageAdPosterListener;->onMobiSagePosterClick()V

    .line 134
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewClose(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdPoster$1;->this$0:Lcom/mobisage/android/MobiSageAdPoster;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPoster;->mDevListener:Lcom/mobisage/android/MobiSageAdPosterListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdPoster$1;->this$0:Lcom/mobisage/android/MobiSageAdPoster;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPoster;->mDevListener:Lcom/mobisage/android/MobiSageAdPosterListener;

    invoke-interface {v0}, Lcom/mobisage/android/MobiSageAdPosterListener;->onMobiSagePosterClose()V

    .line 127
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewError(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdPoster$1;->this$0:Lcom/mobisage/android/MobiSageAdPoster;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPoster;->mDevListener:Lcom/mobisage/android/MobiSageAdPosterListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdPoster$1;->this$0:Lcom/mobisage/android/MobiSageAdPoster;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPoster;->mDevListener:Lcom/mobisage/android/MobiSageAdPosterListener;

    invoke-interface {v0}, Lcom/mobisage/android/MobiSageAdPosterListener;->onMobiSagePosterError()V

    .line 120
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewHide(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 1
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdPoster$1;->this$0:Lcom/mobisage/android/MobiSageAdPoster;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPoster;->mDevListener:Lcom/mobisage/android/MobiSageAdPosterListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdPoster$1;->this$0:Lcom/mobisage/android/MobiSageAdPoster;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageAdPoster;->mDevListener:Lcom/mobisage/android/MobiSageAdPosterListener;

    invoke-interface {v0}, Lcom/mobisage/android/MobiSageAdPosterListener;->onMobiSagePosterError()V

    .line 113
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewHideWindow(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 0
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 142
    return-void
.end method

.method public onMobiSageAdViewPopupWindow(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 0
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 138
    return-void
.end method

.method public onMobiSageAdViewShow(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 99
    new-instance v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;-><init>()V

    .line 100
    .local v0, "entity":Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;
    iput-object p1, v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;->mAdView:Lcom/mobisage/android/MobiSageAdView;

    .line 101
    sget-object v1, Lcom/mobisage/android/MobiSageAdPosterDialog;->sAdViewMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdPoster$1;->this$0:Lcom/mobisage/android/MobiSageAdPoster;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageAdPoster;->mDevListener:Lcom/mobisage/android/MobiSageAdPosterListener;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdPoster$1;->this$0:Lcom/mobisage/android/MobiSageAdPoster;

    iget-object v1, v1, Lcom/mobisage/android/MobiSageAdPoster;->mDevListener:Lcom/mobisage/android/MobiSageAdPosterListener;

    invoke-interface {v1}, Lcom/mobisage/android/MobiSageAdPosterListener;->onMobiSagePosterPreShow()V

    .line 106
    :cond_0
    return-void
.end method
