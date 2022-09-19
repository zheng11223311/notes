.class public Lcom/tudou/service/chat/ChatTipView;
.super Ljava/lang/Object;
.source "ChatTipView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/service/chat/ChatTipView$ViewDismissHandler;
    }
.end annotation


# instance fields
.field private mChatInfo:Lcom/youku/vo/ChatDialogInfo;

.field private mContext:Landroid/content/Context;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewDismissHandler:Lcom/tudou/service/chat/ChatTipView$ViewDismissHandler;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/vo/ChatDialogInfo;)V
    .locals 1
    .param p1, "application"    # Landroid/content/Context;
    .param p2, "chatInfo"    # Lcom/youku/vo/ChatDialogInfo;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/tudou/service/chat/ChatTipView;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/tudou/service/chat/ChatTipView;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    .line 39
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mWindowManager:Landroid/view/WindowManager;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/service/chat/ChatTipView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/chat/ChatTipView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/service/chat/ChatTipView;)Lcom/youku/vo/ChatDialogInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/chat/ChatTipView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    return-object v0
.end method

.method private unionOnEvent()V
    .locals 4

    .prologue
    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "actiontype"

    const-string/jumbo v2, "weixinfloating"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v1, "weixinfloating"

    const-string/jumbo v2, "weixinfloating"

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 137
    return-void
.end method


# virtual methods
.method public getChatInfo()Lcom/youku/vo/ChatDialogInfo;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    return-object v0
.end method

.method public removePoppedViewAndClear()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tudou/service/chat/ChatTipView;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mViewDismissHandler:Lcom/tudou/service/chat/ChatTipView$ViewDismissHandler;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mViewDismissHandler:Lcom/tudou/service/chat/ChatTipView$ViewDismissHandler;

    invoke-interface {v0}, Lcom/tudou/service/chat/ChatTipView$ViewDismissHandler;->onViewDismiss()V

    .line 123
    :cond_1
    return-void
.end method

.method public setViewDismissHandler(Lcom/tudou/service/chat/ChatTipView$ViewDismissHandler;)V
    .locals 0
    .param p1, "viewDismissHandler"    # Lcom/tudou/service/chat/ChatTipView$ViewDismissHandler;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tudou/service/chat/ChatTipView;->mViewDismissHandler:Lcom/tudou/service/chat/ChatTipView$ViewDismissHandler;

    .line 44
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mContext:Landroid/content/Context;

    const v5, 0x7f0302e1

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mView:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mView:Landroid/view/View;

    new-instance v5, Lcom/tudou/service/chat/ChatTipView$1;

    invoke-direct {v5, p0}, Lcom/tudou/service/chat/ChatTipView$1;-><init>(Lcom/tudou/service/chat/ChatTipView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mView:Landroid/view/View;

    const v5, 0x7f0c0cf3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mTitleView:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tudou/service/chat/ChatTipView;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    invoke-virtual {v5}, Lcom/youku/vo/ChatDialogInfo;->getSysoendInvideDialogTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    const/4 v1, -0x1

    .line 98
    .local v1, "w":I
    const/high16 v0, 0x42820000    # 65.0f

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    .line 100
    .local v2, "h":I
    const/16 v4, 0x8

    .line 103
    .local v4, "flags":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v0, v5, :cond_1

    .line 104
    const/16 v3, 0x7d5

    .line 108
    .local v3, "type":I
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 109
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v5, 0x7f0e01eb

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 110
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x30

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 112
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/tudou/service/chat/ChatTipView;->mView:Landroid/view/View;

    iget-object v6, p0, Lcom/tudou/service/chat/ChatTipView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-direct {p0}, Lcom/tudou/service/chat/ChatTipView;->unionOnEvent()V

    .line 115
    return-void

    .line 106
    .end local v3    # "type":I
    :cond_1
    const/16 v3, 0x7d2

    .restart local v3    # "type":I
    goto :goto_0
.end method

.method public updateContent(Lcom/youku/vo/ChatDialogInfo;)V
    .locals 3
    .param p1, "chatInfo"    # Lcom/youku/vo/ChatDialogInfo;

    .prologue
    .line 47
    if-nez p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iput-object p1, p0, Lcom/tudou/service/chat/ChatTipView;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    .line 50
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tudou/service/chat/ChatTipView;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 52
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/service/chat/ChatTipView;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    invoke-virtual {v1}, Lcom/youku/vo/ChatDialogInfo;->getSysoendInvideDialogTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/tudou/service/chat/ChatTipView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tudou/service/chat/ChatTipView;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/service/chat/ChatTipView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-direct {p0}, Lcom/tudou/service/chat/ChatTipView;->unionOnEvent()V

    goto :goto_0
.end method
