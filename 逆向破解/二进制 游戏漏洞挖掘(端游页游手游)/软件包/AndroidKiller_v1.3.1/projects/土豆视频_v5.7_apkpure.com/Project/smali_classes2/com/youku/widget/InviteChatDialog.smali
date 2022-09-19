.class public Lcom/youku/widget/InviteChatDialog;
.super Landroid/app/Dialog;
.source "InviteChatDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/InviteChatDialog$ButOnClickListener;
    }
.end annotation


# instance fields
.field private final INVITE_LEFT_BUT_TEXT:Ljava/lang/String;

.field private final INVITE_RIGHT_BUT_TEXT:Ljava/lang/String;

.field private final INVITE_TITLE:Ljava/lang/String;

.field private final SHARE_LEFT_BUT_TEXT:Ljava/lang/String;

.field private final SHARE_RIGHT_BUT_TEXT:Ljava/lang/String;

.field private final SHARE_TITLE:Ljava/lang/String;

.field private isChangeChat:Z

.field private isShare:Z

.field private mBodyView:Landroid/widget/TextView;

.field private mChatInfo:Lcom/youku/vo/ChatDialogInfo;

.field public mContext:Landroid/content/Context;

.field private mLeftButOnClickListener:Lcom/youku/widget/InviteChatDialog$ButOnClickListener;

.field private mLeftView:Landroid/widget/TextView;

.field private mRightButOnClickListener:Lcom/youku/widget/InviteChatDialog$ButOnClickListener;

.field private mRightView:Landroid/widget/TextView;

.field private mShareBadgeView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;IZLcom/youku/vo/ChatDialogInfo;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "isShare"    # Z
    .param p4, "chatInfo"    # Lcom/youku/vo/ChatDialogInfo;
    .param p5, "isChangeChat"    # Z

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    const-string v0, "\u6536\u5230\u804a\u5929\u9080\u8bf7"

    iput-object v0, p0, Lcom/youku/widget/InviteChatDialog;->INVITE_TITLE:Ljava/lang/String;

    .line 23
    const-string v0, "\u53d6\u6d88"

    iput-object v0, p0, Lcom/youku/widget/InviteChatDialog;->INVITE_LEFT_BUT_TEXT:Ljava/lang/String;

    .line 24
    const-string v0, "\u52a0\u5165\u623f\u95f4"

    iput-object v0, p0, Lcom/youku/widget/InviteChatDialog;->INVITE_RIGHT_BUT_TEXT:Ljava/lang/String;

    .line 26
    const-string v0, "\u5206\u4eab\u6d88\u606f\u5df2\u751f\u6210"

    iput-object v0, p0, Lcom/youku/widget/InviteChatDialog;->SHARE_TITLE:Ljava/lang/String;

    .line 27
    const-string v0, "\u4e0d\u5206\u4eab\u4e86"

    iput-object v0, p0, Lcom/youku/widget/InviteChatDialog;->SHARE_LEFT_BUT_TEXT:Ljava/lang/String;

    .line 28
    const-string v0, "\u53bb\u7c98\u8d34"

    iput-object v0, p0, Lcom/youku/widget/InviteChatDialog;->SHARE_RIGHT_BUT_TEXT:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lcom/youku/widget/InviteChatDialog;->isShare:Z

    .line 40
    iput-boolean v1, p0, Lcom/youku/widget/InviteChatDialog;->isChangeChat:Z

    .line 52
    iput-object p1, p0, Lcom/youku/widget/InviteChatDialog;->mContext:Landroid/content/Context;

    .line 53
    iput-boolean p3, p0, Lcom/youku/widget/InviteChatDialog;->isShare:Z

    .line 54
    iput-object p4, p0, Lcom/youku/widget/InviteChatDialog;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    .line 55
    iput-boolean p5, p0, Lcom/youku/widget/InviteChatDialog;->isChangeChat:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/youku/vo/ChatDialogInfo;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chatInfo"    # Lcom/youku/vo/ChatDialogInfo;
    .param p3, "isChangeChat"    # Z

    .prologue
    .line 43
    const v2, 0x7f0e014a

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/youku/widget/InviteChatDialog;-><init>(Landroid/content/Context;IZLcom/youku/vo/ChatDialogInfo;Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/youku/vo/ChatDialogInfo;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isShare"    # Z
    .param p3, "chatInfo"    # Lcom/youku/vo/ChatDialogInfo;
    .param p4, "isChangeChat"    # Z

    .prologue
    .line 47
    const v2, 0x7f0e014a

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/youku/widget/InviteChatDialog;-><init>(Landroid/content/Context;IZLcom/youku/vo/ChatDialogInfo;Z)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/InviteChatDialog;)Lcom/youku/widget/InviteChatDialog$ButOnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/InviteChatDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/youku/widget/InviteChatDialog;->mLeftButOnClickListener:Lcom/youku/widget/InviteChatDialog$ButOnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/widget/InviteChatDialog;)Lcom/youku/widget/InviteChatDialog$ButOnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/InviteChatDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/youku/widget/InviteChatDialog;->mRightButOnClickListener:Lcom/youku/widget/InviteChatDialog$ButOnClickListener;

    return-object v0
.end method

.method private eventView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 75
    const-string v2, "\u6536\u5230\u804a\u5929\u9080\u8bf7"

    .line 76
    .local v2, "title":Ljava/lang/String;
    const-string v0, "\u53d6\u6d88"

    .line 77
    .local v0, "leftText":Ljava/lang/String;
    const-string v1, "\u52a0\u5165\u623f\u95f4"

    .line 78
    .local v1, "rightText":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/youku/widget/InviteChatDialog;->isShare:Z

    if-eqz v3, :cond_0

    .line 79
    const-string v2, "\u5206\u4eab\u6d88\u606f\u5df2\u751f\u6210"

    .line 80
    const-string v0, "\u4e0d\u5206\u4eab\u4e86"

    .line 81
    const-string v1, "\u53bb\u7c98\u8d34"

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/youku/widget/InviteChatDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v3, p0, Lcom/youku/widget/InviteChatDialog;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/youku/widget/InviteChatDialog;->mBodyView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/youku/widget/InviteChatDialog;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    iget-boolean v5, p0, Lcom/youku/widget/InviteChatDialog;->isChangeChat:Z

    invoke-virtual {v4, v5}, Lcom/youku/vo/ChatDialogInfo;->getInviteDialogTitle(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/youku/widget/InviteChatDialog;->mLeftView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, p0, Lcom/youku/widget/InviteChatDialog;->mRightView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-boolean v3, p0, Lcom/youku/widget/InviteChatDialog;->isShare:Z

    if-eqz v3, :cond_2

    .line 92
    iget-object v3, p0, Lcom/youku/widget/InviteChatDialog;->mShareBadgeView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :cond_2
    iget-object v3, p0, Lcom/youku/widget/InviteChatDialog;->mLeftView:Landroid/widget/TextView;

    new-instance v4, Lcom/youku/widget/InviteChatDialog$1;

    invoke-direct {v4, p0}, Lcom/youku/widget/InviteChatDialog$1;-><init>(Lcom/youku/widget/InviteChatDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v3, p0, Lcom/youku/widget/InviteChatDialog;->mRightView:Landroid/widget/TextView;

    new-instance v4, Lcom/youku/widget/InviteChatDialog$2;

    invoke-direct {v4, p0}, Lcom/youku/widget/InviteChatDialog$2;-><init>(Lcom/youku/widget/InviteChatDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {p0, v6}, Lcom/youku/widget/InviteChatDialog;->setCancelable(Z)V

    .line 112
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0c0758

    invoke-virtual {p0, v0}, Lcom/youku/widget/InviteChatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/InviteChatDialog;->mTitleView:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0c0759

    invoke-virtual {p0, v0}, Lcom/youku/widget/InviteChatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/InviteChatDialog;->mBodyView:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0c075a

    invoke-virtual {p0, v0}, Lcom/youku/widget/InviteChatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/widget/InviteChatDialog;->mShareBadgeView:Landroid/view/View;

    .line 70
    const v0, 0x7f0c075c

    invoke-virtual {p0, v0}, Lcom/youku/widget/InviteChatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/InviteChatDialog;->mLeftView:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0c075d

    invoke-virtual {p0, v0}, Lcom/youku/widget/InviteChatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/widget/InviteChatDialog;->mRightView:Landroid/widget/TextView;

    .line 72
    return-void
.end method

.method private unionOnEvent()V
    .locals 4

    .prologue
    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 174
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "actiontype"

    const-string v2, "homechatshow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "homechatshow"

    const-string v2, "homechatshow"

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 176
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/youku/widget/InviteChatDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 146
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f03019c

    invoke-virtual {p0, v0}, Lcom/youku/widget/InviteChatDialog;->setContentView(I)V

    .line 62
    invoke-direct {p0}, Lcom/youku/widget/InviteChatDialog;->initView()V

    .line 63
    invoke-direct {p0}, Lcom/youku/widget/InviteChatDialog;->eventView()V

    .line 64
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 117
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/youku/widget/InviteChatDialog;->dismiss()V

    .line 119
    iget-object v2, p0, Lcom/youku/widget/InviteChatDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/util/Util;->clearClipData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/4 v1, 0x1

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setBody(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "body"    # Ljava/lang/CharSequence;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/youku/widget/InviteChatDialog;->mBodyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/youku/widget/InviteChatDialog;->mBodyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    return-void
.end method

.method public setChatInfo(Lcom/youku/vo/ChatDialogInfo;)V
    .locals 0
    .param p1, "chatInfo"    # Lcom/youku/vo/ChatDialogInfo;

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/youku/widget/InviteChatDialog;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    .line 132
    invoke-direct {p0}, Lcom/youku/widget/InviteChatDialog;->eventView()V

    goto :goto_0
.end method

.method public setIsShate(Z)V
    .locals 0
    .param p1, "isShare"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/youku/widget/InviteChatDialog;->isShare:Z

    .line 150
    return-void
.end method

.method public setLeftButOnClickListener(Lcom/youku/widget/InviteChatDialog$ButOnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/widget/InviteChatDialog$ButOnClickListener;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/youku/widget/InviteChatDialog;->mLeftButOnClickListener:Lcom/youku/widget/InviteChatDialog$ButOnClickListener;

    .line 162
    return-void
.end method

.method public setRightButOnClickListener(Lcom/youku/widget/InviteChatDialog$ButOnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/widget/InviteChatDialog$ButOnClickListener;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/youku/widget/InviteChatDialog;->mRightButOnClickListener:Lcom/youku/widget/InviteChatDialog$ButOnClickListener;

    .line 166
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/youku/widget/InviteChatDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/youku/widget/InviteChatDialog;->dismiss()V

    .line 138
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 140
    invoke-direct {p0}, Lcom/youku/widget/InviteChatDialog;->unionOnEvent()V

    .line 141
    return-void
.end method
