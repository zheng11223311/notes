.class public Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;
.super Landroid/widget/RelativeLayout;
.source "ViewTabChat.java"


# instance fields
.field isLastRow:Z

.field private mChatAdapter:Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListViewChatBox:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->isLastRow:Z

    .line 25
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mList:Ljava/util/List;

    .line 35
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mListViewChatBox:Landroid/widget/ListView;

    .line 36
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mChatAdapter:Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->isLastRow:Z

    .line 25
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mList:Ljava/util/List;

    .line 35
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mListViewChatBox:Landroid/widget/ListView;

    .line 36
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mChatAdapter:Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mListViewChatBox:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->addAllHistoryMsg()V

    return-void
.end method

.method private addAllHistoryMsg()V
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->isLastRow:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mChatAdapter:Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->addList(Ljava/util/List;)V

    .line 78
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public clearPreviousRoomMsg()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mChatAdapter:Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->clearList()V

    .line 85
    return-void
.end method

.method public expandChatList()V
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mListViewChatBox:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 130
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 131
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mListViewChatBox:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-void
.end method

.method public initView()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mList:Ljava/util/List;

    .line 40
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "list_chat_tab_box"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mListViewChatBox:Landroid/widget/ListView;

    .line 42
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mListViewChatBox:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 43
    new-instance v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mListViewChatBox:Landroid/widget/ListView;

    invoke-direct {v0, v1}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mChatAdapter:Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;

    .line 44
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mListViewChatBox:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mChatAdapter:Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mListViewChatBox:Landroid/widget/ListView;

    new-instance v1, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat$1;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat$1;-><init>(Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 72
    return-void
.end method

.method public setNewMsg(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;)V
    .locals 3
    .param p1, "msg"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;

    .prologue
    .line 88
    instance-of v1, p1, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 89
    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;

    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->hasGift()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-boolean v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->isLastRow:Z

    if-eqz v1, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->addAllHistoryMsg()V

    .line 95
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mChatAdapter:Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;

    invoke-virtual {v1, p1}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->addItem(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;)V

    goto :goto_0

    .line 97
    :cond_1
    instance-of v1, p1, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 98
    check-cast v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;

    .line 99
    .local v0, "chatMsg":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;
    const-string v1, "i"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getUserInfo()Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->addAllHistoryMsg()V

    .line 101
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mChatAdapter:Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;

    invoke-virtual {v1, p1}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->addItem(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;)V

    goto :goto_0

    .line 105
    .end local v0    # "chatMsg":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;
    :cond_2
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_3

    .line 106
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public smoothScrollToBottom()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mChatAdapter:Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mListViewChatBox:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mChatAdapter:Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;

    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 125
    :cond_0
    return-void
.end method

.method public upDataTieFenInfo(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "tiefenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mChatAdapter:Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->mChatAdapter:Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;

    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->upDataTieFenInfo(Ljava/util/ArrayList;)V

    .line 115
    :cond_0
    return-void
.end method
