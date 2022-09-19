.class public Lcom/tudou/detail/CommentDialogRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CommentDialogRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/CommentDialogRelativeLayout$LayoutChangeListener;
    }
.end annotation


# instance fields
.field private mLayoutChangeListener:Lcom/tudou/detail/CommentDialogRelativeLayout$LayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tudou/detail/CommentDialogRelativeLayout;->mLayoutChangeListener:Lcom/tudou/detail/CommentDialogRelativeLayout$LayoutChangeListener;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/tudou/detail/CommentDialogRelativeLayout;->mLayoutChangeListener:Lcom/tudou/detail/CommentDialogRelativeLayout$LayoutChangeListener;

    invoke-interface {v0, p1}, Lcom/tudou/detail/CommentDialogRelativeLayout$LayoutChangeListener;->onLayoutChange(Z)V

    .line 33
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 34
    return-void
.end method

.method public setLayoutListener(Lcom/tudou/detail/CommentDialogRelativeLayout$LayoutChangeListener;)V
    .locals 0
    .param p1, "layoutChangeListener"    # Lcom/tudou/detail/CommentDialogRelativeLayout$LayoutChangeListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tudou/detail/CommentDialogRelativeLayout;->mLayoutChangeListener:Lcom/tudou/detail/CommentDialogRelativeLayout$LayoutChangeListener;

    .line 42
    return-void
.end method
