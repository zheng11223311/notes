.class public abstract Lcom/tudou/android/chat/ChatBasedView;
.super Landroid/widget/RelativeLayout;
.source "ChatBasedView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tudou/android/chat/ChatBasedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tudou/android/chat/ChatBasedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tudou/android/chat/ChatBasedView;->setVisibility(I)V

    .line 27
    return-void
.end method

.method public abstract setChildrenClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public show()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tudou/android/chat/ChatBasedView;->setVisibility(I)V

    .line 31
    return-void
.end method
