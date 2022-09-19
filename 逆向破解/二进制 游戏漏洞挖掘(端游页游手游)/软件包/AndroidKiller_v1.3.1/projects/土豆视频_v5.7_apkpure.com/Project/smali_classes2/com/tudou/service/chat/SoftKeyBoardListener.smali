.class public Lcom/tudou/service/chat/SoftKeyBoardListener;
.super Ljava/lang/Object;
.source "SoftKeyBoardListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/service/chat/SoftKeyBoardListener$1;,
        Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;,
        Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;
    }
.end annotation


# static fields
.field private static mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private static mOnSoftKeyBoardChangeListener:Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

.field private static mSoftKeyBoardListener:Lcom/tudou/service/chat/SoftKeyBoardListener;

.field private static onSoftKeyBoardChangeListener:Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

.field private static rootView:Landroid/view/View;


# instance fields
.field private activity:Landroid/app/Activity;

.field rootViewVisibleHeight:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/tudou/service/chat/SoftKeyBoardListener;->activity:Landroid/app/Activity;

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/tudou/service/chat/SoftKeyBoardListener;->rootView:Landroid/view/View;

    .line 28
    new-instance v0, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tudou/service/chat/SoftKeyBoardListener$MyOnGlobalLayoutListener;-><init>(Lcom/tudou/service/chat/SoftKeyBoardListener;Lcom/tudou/service/chat/SoftKeyBoardListener$1;)V

    sput-object v0, Lcom/tudou/service/chat/SoftKeyBoardListener;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 29
    sget-object v0, Lcom/tudou/service/chat/SoftKeyBoardListener;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/tudou/service/chat/SoftKeyBoardListener;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 30
    return-void
.end method

.method static synthetic access$100()Landroid/view/View;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/tudou/service/chat/SoftKeyBoardListener;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/service/chat/SoftKeyBoardListener;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/chat/SoftKeyBoardListener;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tudou/service/chat/SoftKeyBoardListener;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300()Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/tudou/service/chat/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    return-object v0
.end method

.method public static removeListener()V
    .locals 2

    .prologue
    .line 101
    :try_start_0
    sget-object v0, Lcom/tudou/service/chat/SoftKeyBoardListener;->mSoftKeyBoardListener:Lcom/tudou/service/chat/SoftKeyBoardListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/service/chat/SoftKeyBoardListener;->mOnSoftKeyBoardChangeListener:Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/service/chat/SoftKeyBoardListener;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/service/chat/SoftKeyBoardListener;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/tudou/service/chat/SoftKeyBoardListener;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/tudou/service/chat/SoftKeyBoardListener;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/service/chat/SoftKeyBoardListener;->mOnSoftKeyBoardChangeListener:Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/service/chat/SoftKeyBoardListener;->mSoftKeyBoardListener:Lcom/tudou/service/chat/SoftKeyBoardListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setListener(Landroid/app/Activity;Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "onSoftKeyBoardChangeListener"    # Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .prologue
    .line 94
    new-instance v0, Lcom/tudou/service/chat/SoftKeyBoardListener;

    invoke-direct {v0, p0}, Lcom/tudou/service/chat/SoftKeyBoardListener;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/tudou/service/chat/SoftKeyBoardListener;->mSoftKeyBoardListener:Lcom/tudou/service/chat/SoftKeyBoardListener;

    .line 95
    sput-object p1, Lcom/tudou/service/chat/SoftKeyBoardListener;->mOnSoftKeyBoardChangeListener:Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 96
    sget-object v0, Lcom/tudou/service/chat/SoftKeyBoardListener;->mSoftKeyBoardListener:Lcom/tudou/service/chat/SoftKeyBoardListener;

    sget-object v1, Lcom/tudou/service/chat/SoftKeyBoardListener;->mOnSoftKeyBoardChangeListener:Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    invoke-direct {v0, v1}, Lcom/tudou/service/chat/SoftKeyBoardListener;->setOnSoftKeyBoardChangeListener(Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V

    .line 97
    return-void
.end method

.method private setOnSoftKeyBoardChangeListener(Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V
    .locals 0
    .param p1, "onSoftKeyBoardChangeListener"    # Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .prologue
    .line 81
    sput-object p1, Lcom/tudou/service/chat/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Lcom/tudou/service/chat/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 82
    return-void
.end method
