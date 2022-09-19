.class public Lcom/tudou/android/chat/ChatInviteView;
.super Lcom/tudou/android/chat/ChatBasedView;
.source "ChatInviteView.java"


# instance fields
.field private chatInviteBackView:Landroid/view/View;

.field private chatInviteView:Landroid/view/View;

.field private mChatRoomId:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tudou/android/chat/ChatInviteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tudou/android/chat/ChatInviteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/android/chat/ChatBasedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatInviteView;->initView()V

    .line 31
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatInviteView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 35
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030083

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    const v1, 0x7f0c02b4

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/android/chat/ChatInviteView;->mChatRoomId:Landroid/widget/TextView;

    .line 37
    const v1, 0x7f0c02b5

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/android/chat/ChatInviteView;->chatInviteView:Landroid/view/View;

    .line 38
    const v1, 0x7f0c02b6

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/android/chat/ChatInviteView;->chatInviteBackView:Landroid/view/View;

    .line 39
    return-void
.end method


# virtual methods
.method public setChildrenClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "lis"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/android/chat/ChatInviteView;->chatInviteView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/tudou/android/chat/ChatInviteView;->chatInviteBackView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 2
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, "byron"

    const-string v1, "chatinviteview show."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/tudou/android/chat/ChatInviteView;->mChatRoomId:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatInviteView;->show()V

    .line 51
    return-void
.end method
