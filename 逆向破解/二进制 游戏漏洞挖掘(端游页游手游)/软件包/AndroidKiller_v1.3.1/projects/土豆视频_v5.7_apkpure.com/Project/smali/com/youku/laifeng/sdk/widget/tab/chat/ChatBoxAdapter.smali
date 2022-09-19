.class public Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatBoxAdapter.java"


# static fields
.field private static final MAX_SIZE:I = 0x32


# instance fields
.field private mClickListener:Landroid/view/View$OnLongClickListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListMsg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private userIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "mListView"    # Landroid/widget/ListView;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mClickListener:Landroid/view/View$OnLongClickListener;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->userIds:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListView:Landroid/widget/ListView;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    .line 31
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p2, "l"    # Landroid/view/View$OnLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;",
            ">;",
            "Landroid/view/View$OnLongClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "orginal":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;>;"
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mClickListener:Landroid/view/View$OnLongClickListener;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->userIds:Ljava/util/ArrayList;

    .line 35
    iput-object p2, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mClickListener:Landroid/view/View$OnLongClickListener;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    .line 37
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public addItem(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;)V
    .locals 2
    .param p1, "msg"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;

    .prologue
    .line 43
    :goto_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->notifyDataSetChanged()V

    .line 48
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 51
    return-void
.end method

.method public addList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;>;"
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->notifyDataSetChanged()V

    .line 59
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 61
    return-void
.end method

.method public clearList()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->notifyDataSetChanged()V

    .line 68
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 87
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mListMsg:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;

    .line 88
    .local v1, "msg":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "lf_chat_item"

    invoke-static {v3, v4, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 89
    new-instance v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->userIds:Ljava/util/ArrayList;

    invoke-direct {v0, p2, v1, v2}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;-><init>(Landroid/view/View;Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;Ljava/util/ArrayList;)V

    .line 90
    .local v0, "holder":Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxItemViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->mClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 92
    return-object p2
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
    .line 96
    .local p1, "tiefenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->userIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->userIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ChatBoxAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method
