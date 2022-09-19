.class Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;
.super Landroid/app/Dialog;
.source "YoutuLoading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youtu/apps/widget/YoutuLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingDialog"
.end annotation


# instance fields
.field private loading:Lcom/youtu/apps/widget/Loading;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget v0, Lcom/youtu/apps/R$style;->recommend_LoadingDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOnBack"    # Z

    .prologue
    .line 65
    sget v0, Lcom/youtu/apps/R$style;->recommend_LoadingDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->setCancelable(Z)V

    .line 68
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 86
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->loading:Lcom/youtu/apps/widget/Loading;

    invoke-virtual {v0}, Lcom/youtu/apps/widget/Loading;->stopAnimation()V

    .line 88
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget v0, Lcom/youtu/apps/R$layout;->recommend_loading:I

    invoke-virtual {p0, v0}, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->setContentView(I)V

    .line 73
    sget-object v0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    const-string/jumbo v1, "tudou"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    sget v0, Lcom/youtu/apps/R$layout;->recommend_tudouloading:I

    invoke-virtual {p0, v0}, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->setContentView(I)V

    .line 80
    :cond_0
    :goto_0
    sget v0, Lcom/youtu/apps/R$id;->recommendLoading:I

    invoke-virtual {p0, v0}, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youtu/apps/widget/Loading;

    iput-object v0, p0, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->loading:Lcom/youtu/apps/widget/Loading;

    .line 81
    return-void

    .line 77
    :cond_1
    sget v0, Lcom/youtu/apps/R$layout;->recommend_loading:I

    invoke-virtual {p0, v0}, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->setContentView(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 92
    iget-object v0, p0, Lcom/youtu/apps/widget/YoutuLoading$LoadingDialog;->loading:Lcom/youtu/apps/widget/Loading;

    invoke-virtual {v0}, Lcom/youtu/apps/widget/Loading;->startAnimation()V

    .line 94
    return-void
.end method
