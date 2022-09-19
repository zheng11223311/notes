.class public Lcom/tudou/detail/widget/ErrorView;
.super Landroid/widget/FrameLayout;
.source "ErrorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/widget/ErrorView$ErrorType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExceptionView:Landroid/view/View;

.field private mNetErrorView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/tudou/detail/widget/ErrorView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/ErrorView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 32
    const v0, 0x7f0c035b

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/ErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/widget/ErrorView;->mExceptionView:Landroid/view/View;

    .line 33
    const v0, 0x7f0c035a

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/ErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/widget/ErrorView;->mNetErrorView:Landroid/view/View;

    .line 34
    return-void
.end method

.method public setBtnRetryClickLis(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "lis"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/detail/widget/ErrorView;->mExceptionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method public setErrorType(Lcom/tudou/detail/widget/ErrorView$ErrorType;)V
    .locals 3
    .param p1, "type"    # Lcom/tudou/detail/widget/ErrorView$ErrorType;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 37
    sget-object v0, Lcom/tudou/detail/widget/ErrorView$ErrorType;->EXCEPTION:Lcom/tudou/detail/widget/ErrorView$ErrorType;

    if-ne p1, v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/tudou/detail/widget/ErrorView;->mExceptionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/tudou/detail/widget/ErrorView;->mNetErrorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/widget/ErrorView;->mExceptionView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/tudou/detail/widget/ErrorView;->mNetErrorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
