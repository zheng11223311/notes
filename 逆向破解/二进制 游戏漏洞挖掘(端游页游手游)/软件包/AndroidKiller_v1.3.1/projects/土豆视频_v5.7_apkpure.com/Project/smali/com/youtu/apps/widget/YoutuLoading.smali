.class public Lcom/youtu/apps/widget/YoutuLoading;
.super Ljava/lang/Object;
.source "YoutuLoading.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;
    }
.end annotation


# static fields
.field private static mLoadingDialog:Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;

.field private static mYoukuLoading:Lcom/youtu/apps/widget/YoutuLoading;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    sget-object v0, Lcom/youtu/apps/widget/YoutuLoading;->mLoadingDialog:Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youtu/apps/widget/YoutuLoading;->mLoadingDialog:Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youtu/apps/widget/YoutuLoading;->mLoadingDialog:Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/youtu/apps/widget/YoutuLoading;->mLoadingDialog:Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->dismiss()V

    .line 54
    :cond_0
    sput-object v1, Lcom/youtu/apps/widget/YoutuLoading;->mLoadingDialog:Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;

    .line 55
    sput-object v1, Lcom/youtu/apps/widget/YoutuLoading;->mYoukuLoading:Lcom/youtu/apps/widget/YoutuLoading;

    .line 56
    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/youtu/apps/widget/YoutuLoading;->mYoukuLoading:Lcom/youtu/apps/widget/YoutuLoading;

    if-eqz v0, :cond_1

    .line 31
    sput-object v1, Lcom/youtu/apps/widget/YoutuLoading;->mYoukuLoading:Lcom/youtu/apps/widget/YoutuLoading;

    .line 33
    :cond_1
    sget-object v0, Lcom/youtu/apps/widget/YoutuLoading;->mLoadingDialog:Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;

    if-eqz v0, :cond_2

    .line 34
    sget-object v0, Lcom/youtu/apps/widget/YoutuLoading;->mLoadingDialog:Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/youtu/apps/widget/YoutuLoading;->mLoadingDialog:Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 35
    sget-object v0, Lcom/youtu/apps/widget/YoutuLoading;->mLoadingDialog:Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->dismiss()V

    .line 36
    sput-object v1, Lcom/youtu/apps/widget/YoutuLoading;->mLoadingDialog:Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;

    .line 39
    :cond_2
    sget-object v0, Lcom/youtu/apps/widget/YoutuLoading;->mYoukuLoading:Lcom/youtu/apps/widget/YoutuLoading;

    if-nez v0, :cond_3

    .line 40
    new-instance v0, Lcom/youtu/apps/widget/YoutuLoading;

    invoke-direct {v0}, Lcom/youtu/apps/widget/YoutuLoading;-><init>()V

    sput-object v0, Lcom/youtu/apps/widget/YoutuLoading;->mYoukuLoading:Lcom/youtu/apps/widget/YoutuLoading;

    .line 42
    :cond_3
    new-instance v0, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;

    invoke-direct {v0, p0}, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youtu/apps/widget/YoutuLoading;->mLoadingDialog:Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;

    .line 43
    sget-object v0, Lcom/youtu/apps/widget/YoutuLoading;->mLoadingDialog:Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 45
    sget-object v0, Lcom/youtu/apps/widget/YoutuLoading;->mLoadingDialog:Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->show()V

    goto :goto_0
.end method
