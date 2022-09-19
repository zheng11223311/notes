.class public Lcom/mobisage/android/MobiSageAdPosterDialog;
.super Landroid/app/Dialog;
.source "MobiSageAdPosterDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;
    }
.end annotation


# static fields
.field static sAdViewMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdViewHashCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdPosterDialog;->sAdViewMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adViewHashCode"    # I
    .param p3, "theme"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    iput p2, p0, Lcom/mobisage/android/MobiSageAdPosterDialog;->mAdViewHashCode:I

    .line 30
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 35
    sget-object v3, Lcom/mobisage/android/MobiSageAdPosterDialog;->sAdViewMap:Ljava/util/HashMap;

    iget v4, p0, Lcom/mobisage/android/MobiSageAdPosterDialog;->mAdViewHashCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    sget-object v3, Lcom/mobisage/android/MobiSageAdPosterDialog;->sAdViewMap:Ljava/util/HashMap;

    iget v4, p0, Lcom/mobisage/android/MobiSageAdPosterDialog;->mAdViewHashCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;

    .line 37
    .local v0, "entity":Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;->mAdView:Lcom/mobisage/android/MobiSageAdView;

    if-eqz v3, :cond_1

    .line 38
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;->mDialog:Landroid/app/Dialog;

    .line 39
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;->mAdView:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v3}, Lcom/mobisage/android/MobiSageAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 40
    .local v1, "view":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 41
    check-cast v2, Landroid/view/ViewGroup;

    .line 42
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;->mAdView:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 45
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;->mAdView:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v3}, Lcom/mobisage/android/MobiSageAdView;->onDestroy()V

    .line 46
    sget-object v3, Lcom/mobisage/android/MobiSageAdPosterDialog;->sAdViewMap:Ljava/util/HashMap;

    iget v4, p0, Lcom/mobisage/android/MobiSageAdPosterDialog;->mAdViewHashCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .end local v0    # "entity":Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;
    .end local v1    # "view":Landroid/view/ViewParent;
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget-object v3, Lcom/mobisage/android/MobiSageAdPosterDialog;->sAdViewMap:Ljava/util/HashMap;

    iget v4, p0, Lcom/mobisage/android/MobiSageAdPosterDialog;->mAdViewHashCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    sget-object v3, Lcom/mobisage/android/MobiSageAdPosterDialog;->sAdViewMap:Ljava/util/HashMap;

    iget v4, p0, Lcom/mobisage/android/MobiSageAdPosterDialog;->mAdViewHashCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;

    .line 58
    .local v0, "entity":Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;
    iput-object p0, v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;->mDialog:Landroid/app/Dialog;

    .line 59
    sget-object v3, Lcom/mobisage/android/MobiSageAdPosterDialog;->sAdViewMap:Ljava/util/HashMap;

    iget v4, p0, Lcom/mobisage/android/MobiSageAdPosterDialog;->mAdViewHashCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;->mAdView:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v3}, Lcom/mobisage/android/MobiSageAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 62
    .local v2, "viewParent":Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    move-object v1, v2

    .line 63
    check-cast v1, Landroid/view/ViewGroup;

    .line 64
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;->mAdView:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;->mAdView:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {p0, v3}, Lcom/mobisage/android/MobiSageAdPosterDialog;->setContentView(Landroid/view/View;)V

    .line 67
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 69
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;->mAdView:Lcom/mobisage/android/MobiSageAdView;

    iget-object v3, v3, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/mobisage/android/MobiSageAdWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 72
    :cond_1
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;->mAdView:Lcom/mobisage/android/MobiSageAdView;

    iget-object v3, v3, Lcom/mobisage/android/MobiSageAdView;->frontWebView:Lcom/mobisage/android/MobiSageAdWebView;

    const-string v4, "javascript:showAdView()"

    invoke-virtual {v3, v4}, Lcom/mobisage/android/MobiSageAdWebView;->loadUrl(Ljava/lang/String;)V

    .line 76
    .end local v0    # "entity":Lcom/mobisage/android/MobiSageAdPosterDialog$PosterEntity;
    .end local v2    # "viewParent":Landroid/view/ViewParent;
    :goto_0
    return-void

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPosterDialog;->dismiss()V

    goto :goto_0
.end method
