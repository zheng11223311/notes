.class public Lcom/youku/widget/TudouTipDialog;
.super Ljava/lang/Object;
.source "TudouTipDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/TudouTipDialog$LoadingDialog;
    }
.end annotation


# static fields
.field private static final ADD:I = 0x3e8

.field private static mHandler:Landroid/os/Handler;

.field private static mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

.field private static mYoukuLoading:Lcom/youku/widget/TudouTipDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lcom/youku/widget/TudouTipDialog$1;

    invoke-direct {v0}, Lcom/youku/widget/TudouTipDialog$1;-><init>()V

    sput-object v0, Lcom/youku/widget/TudouTipDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public static dismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    sput-object v2, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    .line 97
    sput-object v2, Lcom/youku/widget/TudouTipDialog;->mYoukuLoading:Lcom/youku/widget/TudouTipDialog;

    .line 98
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isShowing()Z
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static remove()V
    .locals 0

    .prologue
    .line 109
    invoke-static {}, Lcom/youku/widget/TudouTipDialog;->dismiss()V

    .line 110
    return-void
.end method

.method public static setOnDissmissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p0, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 45
    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    invoke-virtual {v0, p0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 48
    :cond_0
    return-void
.end method

.method public static show(Lcom/tudou/ui/activity/HomePageActivity;)V
    .locals 2
    .param p0, "context"    # Lcom/tudou/ui/activity/HomePageActivity;

    .prologue
    const/4 v1, 0x0

    .line 57
    if-nez p0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mYoukuLoading:Lcom/youku/widget/TudouTipDialog;

    if-eqz v0, :cond_1

    .line 61
    sput-object v1, Lcom/youku/widget/TudouTipDialog;->mYoukuLoading:Lcom/youku/widget/TudouTipDialog;

    .line 63
    :cond_1
    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    if-eqz v0, :cond_2

    .line 64
    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 66
    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->dismiss()V

    .line 67
    sput-object v1, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    .line 70
    :cond_2
    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mYoukuLoading:Lcom/youku/widget/TudouTipDialog;

    if-nez v0, :cond_3

    .line 71
    new-instance v0, Lcom/youku/widget/TudouTipDialog;

    invoke-direct {v0}, Lcom/youku/widget/TudouTipDialog;-><init>()V

    sput-object v0, Lcom/youku/widget/TudouTipDialog;->mYoukuLoading:Lcom/youku/widget/TudouTipDialog;

    .line 73
    :cond_3
    new-instance v0, Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;-><init>(Lcom/tudou/ui/activity/HomePageActivity;)V

    sput-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    .line 74
    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 76
    sget-object v0, Lcom/youku/widget/TudouTipDialog;->mLoadingDialog:Lcom/youku/widget/TudouTipDialog$LoadingDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouTipDialog$LoadingDialog;->show()V

    goto :goto_0
.end method
