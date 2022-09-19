.class public Lio/rong/imkit/fragment/ConversationListFragment;
.super Lio/rong/imkit/fragment/UriFragment;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/fragment/ConversationListFragment$getDraftRunnable;
    }
.end annotation


# static fields
.field static final REFRESH_GROUP:I = 0x4

.field static final REFRESH_ITEM:I = 0x3

.field static final REFRESH_LIST:I = 0x2

.field static final REFRESH_MSG:I = 0x5

.field static final REORDER_LIST:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private isShowWithoutConnected:Z

.field private mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

.field mCallback:Lio/rong/imlib/RongIMClient$ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;>;"
        }
    .end annotation
.end field

.field private mList:Landroid/widget/ListView;

.field private mMessageCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportConversationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "ConvListFrag"

    sput-object v0, Lio/rong/imkit/fragment/ConversationListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lio/rong/imkit/fragment/UriFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->isShowWithoutConnected:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mSupportConversationList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mMessageCache:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lio/rong/imkit/fragment/ConversationListFragment$1;

    invoke-direct {v0, p0}, Lio/rong/imkit/fragment/ConversationListFragment$1;-><init>(Lio/rong/imkit/fragment/ConversationListFragment;)V

    iput-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    .line 1254
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/fragment/ConversationListFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/fragment/ConversationListFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$202(Lio/rong/imkit/fragment/ConversationListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/rong/imkit/fragment/ConversationListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->isShowWithoutConnected:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lio/rong/imkit/fragment/ConversationListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildMultiDialog(Lio/rong/imkit/model/UIConversation;)V
    .locals 4
    .param p1, "uiConversation"    # Lio/rong/imkit/model/UIConversation;

    .prologue
    const/4 v3, 0x0

    .line 1058
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 1060
    .local v0, "items":[Ljava/lang/String;
    invoke-virtual {p1}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_conversation_list_dialog_cancel_top:I

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1065
    :goto_0
    const/4 v1, 0x1

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_conversation_list_dialog_remove:I

    invoke-virtual {v2, v3}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1067
    invoke-virtual {p1}, Lio/rong/imkit/model/UIConversation;->getUIConversationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/fragment/ConversationListFragment$12;

    invoke-direct {v2, p0, p1}, Lio/rong/imkit/fragment/ConversationListFragment$12;-><init>(Lio/rong/imkit/fragment/ConversationListFragment;Lio/rong/imkit/model/UIConversation;)V

    invoke-virtual {v1, v2}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 1096
    return-void

    .line 1063
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_conversation_list_dialog_set_top:I

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method private buildSingleDialog(Lio/rong/imkit/model/UIConversation;)V
    .locals 4
    .param p1, "uiConversation"    # Lio/rong/imkit/model/UIConversation;

    .prologue
    .line 1100
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 1101
    .local v0, "items":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_conversation_list_dialog_remove:I

    invoke-virtual {v2, v3}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1103
    invoke-virtual {p1}, Lio/rong/imkit/model/UIConversation;->getUIConversationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/fragment/ConversationListFragment$13;

    invoke-direct {v2, p0, p1}, Lio/rong/imkit/fragment/ConversationListFragment$13;-><init>(Lio/rong/imkit/fragment/ConversationListFragment;Lio/rong/imkit/model/UIConversation;)V

    invoke-virtual {v1, v2}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 1126
    return-void
.end method

.method public static getInstance()Lio/rong/imkit/fragment/ConversationListFragment;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-direct {v0}, Lio/rong/imkit/fragment/ConversationListFragment;-><init>()V

    return-object v0
.end method

.method private makeUiConversation(Lio/rong/imlib/model/Message;I)Lio/rong/imkit/model/UIConversation;
    .locals 6
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "pos"    # I

    .prologue
    .line 1129
    const/4 v2, 0x0

    .line 1132
    .local v2, "uiConversation":Lio/rong/imkit/model/UIConversation;
    if-ltz p2, :cond_3

    .line 1133
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v3, p2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "uiConversation":Lio/rong/imkit/model/UIConversation;
    check-cast v2, Lio/rong/imkit/model/UIConversation;

    .line 1134
    .restart local v2    # "uiConversation":Lio/rong/imkit/model/UIConversation;
    if-eqz v2, :cond_1

    .line 1135
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setMessageContent(Lio/rong/imlib/model/MessageContent;)V

    .line 1136
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v3, v4, :cond_2

    .line 1137
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/rong/imkit/model/UIConversation;->setUIConversationTime(J)V

    .line 1138
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1139
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setConversationSenderId(Ljava/lang/String;)V

    .line 1144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setConversationTargetId(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {v2, v2}, Lio/rong/imkit/model/UIConversation;->buildConversationContent(Lio/rong/imkit/model/UIConversation;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 1146
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1147
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setShowDraftFlag(Z)V

    .line 1148
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setLatestMessageId(I)V

    .line 1168
    :cond_1
    :goto_1
    return-object v2

    .line 1141
    :cond_2
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/rong/imkit/model/UIConversation;->setUIConversationTime(J)V

    .line 1142
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setConversationSenderId(Ljava/lang/String;)V

    goto :goto_0

    .line 1156
    :cond_3
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1159
    .local v0, "isGather":Z
    invoke-static {p1, v0}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Message;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v2

    .line 1162
    invoke-virtual {v2, v0}, Lio/rong/imkit/model/UIConversation;->setConversationGatherState(Z)V

    .line 1163
    if-eqz v0, :cond_1

    .line 1164
    invoke-static {}, Lio/rong/imkit/util/ConversationListUtils;->getInstance()Lio/rong/imkit/util/ConversationListUtils;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/rong/imkit/util/ConversationListUtils;->setGatheredConversationTitle(Lio/rong/imlib/model/Conversation$ConversationType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1165
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getAdapter()Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 954
    const-string v9, "ConversationListFragment"

    const-string v10, "onEvent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleMessage\uff0cthread is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 1017
    :cond_0
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 957
    :pswitch_0
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 960
    :pswitch_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    if-eqz v9, :cond_0

    .line 961
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 962
    .local v6, "position":I
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v9

    if-lt v6, v9, :cond_0

    .line 963
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iget-object v10, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v11, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v6, v11

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v9, v6, v10, v11}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 967
    .end local v6    # "position":I
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 968
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 969
    .restart local v6    # "position":I
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 970
    :cond_1
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9, v6}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->remove(I)V

    .line 971
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 973
    :cond_2
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9, v6}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/rong/imkit/model/UIConversation;

    .line 974
    .local v7, "temp":Lio/rong/imkit/model/UIConversation;
    const/4 v8, 0x0

    .line 975
    .local v8, "unreadCount":I
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/model/Conversation;

    .line 976
    .local v5, "newest":Lio/rong/imlib/model/Conversation;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lio/rong/imkit/model/UIConversation;->setTop(Z)V

    .line 978
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Conversation;

    .line 979
    .local v0, "conversation":Lio/rong/imlib/model/Conversation;
    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->isTop()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 980
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lio/rong/imkit/model/UIConversation;->setTop(Z)V

    .line 981
    :cond_4
    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getUnreadMessageCount()I

    move-result v9

    add-int/2addr v8, v9

    .line 982
    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getReceivedTime()J

    move-result-wide v10

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getReceivedTime()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-lez v9, :cond_3

    .line 983
    move-object v5, v0

    goto :goto_1

    .line 986
    .end local v0    # "conversation":Lio/rong/imlib/model/Conversation;
    :cond_5
    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getLatestMessage()Lio/rong/imlib/model/MessageContent;

    move-result-object v9

    invoke-virtual {v7, v9}, Lio/rong/imkit/model/UIConversation;->setMessageContent(Lio/rong/imlib/model/MessageContent;)V

    .line 987
    invoke-virtual {v7, v8}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 989
    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lio/rong/imkit/model/UIConversation;->setConversationSenderId(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lio/rong/imkit/model/UIConversation;->setConversationTargetId(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getLatestMessageId()I

    move-result v9

    invoke-virtual {v7, v9}, Lio/rong/imkit/model/UIConversation;->setLatestMessageId(I)V

    .line 993
    invoke-virtual {v7, v7}, Lio/rong/imkit/model/UIConversation;->buildConversationContent(Lio/rong/imkit/model/UIConversation;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v7, v9}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 995
    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getSentTime()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Lio/rong/imkit/model/UIConversation;->setUIConversationTime(J)V

    .line 996
    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v9

    invoke-virtual {v7, v9}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 997
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lio/rong/imkit/model/UIConversation;->setShowDraftFlag(Z)V

    .line 999
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1003
    .end local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "newest":Lio/rong/imlib/model/Conversation;
    .end local v6    # "position":I
    .end local v7    # "temp":Lio/rong/imkit/model/UIConversation;
    .end local v8    # "unreadCount":I
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/rong/imlib/model/Conversation;

    .line 1004
    .restart local v0    # "conversation":Lio/rong/imlib/model/Conversation;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1005
    .local v3, "index":I
    const/4 v9, 0x0

    invoke-static {v0, v9}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v7

    .line 1007
    .restart local v7    # "temp":Lio/rong/imkit/model/UIConversation;
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->remove(I)V

    .line 1009
    invoke-static {}, Lio/rong/imkit/util/ConversationListUtils;->getInstance()Lio/rong/imkit/util/ConversationListUtils;

    move-result-object v9

    iget-object v10, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9, v7, v10}, Lio/rong/imkit/util/ConversationListUtils;->findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/ConversationListAdapter;)I

    move-result v4

    .line 1011
    .local v4, "newPosition":I
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9, v7, v4}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 1012
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 955
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected initFragment(Landroid/net/Uri;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 125
    const/16 v5, 0x8

    new-array v1, v5, [Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v5, v1, v9

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v5, v1, v8

    const/4 v5, 0x2

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v6, v1, v5

    const/4 v5, 0x3

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v6, v1, v5

    const/4 v5, 0x4

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v6, v1, v5

    const/4 v5, 0x5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v6, v1, v5

    const/4 v5, 0x6

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v6, v1, v5

    const/4 v5, 0x7

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v6, v1, v5

    .line 130
    .local v1, "conversationType":[Lio/rong/imlib/model/Conversation$ConversationType;
    const-string v5, "ConversationListFragment"

    const-string v6, "initFragment"

    invoke-static {p0, v5, v6}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-nez p1, :cond_0

    .line 133
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongIMClientWrapper;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 161
    :goto_0
    return-void

    .line 138
    :cond_0
    move-object v0, v1

    .local v0, "arr$":[Lio/rong/imlib/model/Conversation$ConversationType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 139
    .local v4, "type":Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 140
    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mSupportConversationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const-string/jumbo v5, "true"

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 138
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    :cond_2
    const-string v5, "false"

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/rong/imkit/RongContext;->setConversationGatherState(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 150
    .end local v4    # "type":Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_3
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v5

    if-nez v5, :cond_5

    .line 151
    :cond_4
    const-string v5, "ConversationListFr"

    const-string v6, "RongCloud haven\'t been connected yet, so the conversation list display blank !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-boolean v8, p0, Lio/rong/imkit/fragment/ConversationListFragment;->isShowWithoutConnected:Z

    goto :goto_0

    .line 156
    :cond_5
    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mSupportConversationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 157
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mSupportConversationList:Ljava/util/ArrayList;

    iget-object v8, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mSupportConversationList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6, v7, v5}, Lio/rong/imkit/RongIMClientWrapper;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    goto/16 :goto_0

    .line 159
    :cond_6
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongIMClientWrapper;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto/16 :goto_0
.end method

.method public makeUiConversationList(Ljava/util/List;Landroid/content/Context;)V
    .locals 20
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1173
    .local p1, "conversationList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    const/4 v13, 0x0

    .line 1175
    .local v13, "uiCon":Lio/rong/imkit/model/UIConversation;
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/fragment/ConversationListFragment;->mMessageCache:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eqz v15, :cond_2

    .line 1176
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/fragment/ConversationListFragment;->mMessageCache:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v5, v15, :cond_1

    .line 1177
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/fragment/ConversationListFragment;->mMessageCache:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/rong/imlib/model/Message;

    .line 1178
    .local v7, "message":Lio/rong/imlib/model/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v7}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v16

    invoke-virtual {v7}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v11

    .line 1180
    .local v11, "originalIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lio/rong/imkit/fragment/ConversationListFragment;->makeUiConversation(Lio/rong/imlib/model/Message;I)Lio/rong/imkit/model/UIConversation;

    move-result-object v14

    .line 1182
    .local v14, "uiConversation":Lio/rong/imkit/model/UIConversation;
    invoke-static {}, Lio/rong/imkit/util/ConversationListUtils;->getInstance()Lio/rong/imkit/util/ConversationListUtils;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Lio/rong/imkit/util/ConversationListUtils;->findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/ConversationListAdapter;)I

    move-result v8

    .line 1184
    .local v8, "newPosition":I
    if-ltz v11, :cond_0

    .line 1185
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v15, v11}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->remove(I)V

    .line 1187
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v15, v14, v8}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 1176
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1189
    .end local v7    # "message":Lio/rong/imlib/model/Message;
    .end local v8    # "newPosition":I
    .end local v11    # "originalIndex":I
    .end local v14    # "uiConversation":Lio/rong/imkit/model/UIConversation;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/fragment/ConversationListFragment;->mMessageCache:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1190
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v15}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    .line 1193
    .end local v5    # "i":I
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/Conversation;

    .line 1194
    .local v2, "conversation":Lio/rong/imlib/model/Conversation;
    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    .line 1195
    .local v3, "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v15

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1196
    .local v4, "gatherState":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v11

    .line 1199
    .restart local v11    # "originalIndex":I
    if-eqz v4, :cond_5

    .line 1200
    if-gez v11, :cond_4

    .line 1202
    const/4 v15, 0x1

    invoke-static {v2, v15}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v13

    .line 1203
    invoke-static {}, Lio/rong/imkit/util/ConversationListUtils;->getInstance()Lio/rong/imkit/util/ConversationListUtils;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v3, v0}, Lio/rong/imkit/util/ConversationListUtils;->setGatheredConversationTitle(Lio/rong/imlib/model/Conversation$ConversationType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 1204
    .local v12, "title":Ljava/lang/String;
    invoke-virtual {v13, v12}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 1205
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v15, v13}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->add(Ljava/lang/Object;)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v15}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1210
    .end local v12    # "title":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v15, v11}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "uiCon":Lio/rong/imkit/model/UIConversation;
    check-cast v13, Lio/rong/imkit/model/UIConversation;

    .line 1211
    .restart local v13    # "uiCon":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getUnreadMessageCount()I

    move-result v9

    .line 1212
    .local v9, "newUnReadMsgCount":I
    invoke-virtual {v13}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v10

    .line 1213
    .local v10, "oldUnReadMsgCount":I
    add-int v15, v9, v10

    invoke-virtual {v13, v15}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 1215
    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getReceivedTime()J

    move-result-wide v16

    invoke-virtual {v13}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-lez v15, :cond_3

    .line 1216
    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getLatestMessage()Lio/rong/imlib/model/MessageContent;

    move-result-object v15

    invoke-virtual {v13, v15}, Lio/rong/imkit/model/UIConversation;->setMessageContent(Lio/rong/imlib/model/MessageContent;)V

    .line 1217
    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lio/rong/imkit/model/UIConversation;->setConversationTargetId(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lio/rong/imkit/model/UIConversation;->setConversationSenderId(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getSentTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lio/rong/imkit/model/UIConversation;->setUIConversationTime(J)V

    .line 1220
    invoke-virtual {v13, v13}, Lio/rong/imkit/model/UIConversation;->buildConversationContent(Lio/rong/imkit/model/UIConversation;)Landroid/text/SpannableStringBuilder;

    move-result-object v15

    invoke-virtual {v13, v15}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    goto/16 :goto_1

    .line 1224
    .end local v9    # "newUnReadMsgCount":I
    .end local v10    # "oldUnReadMsgCount":I
    :cond_5
    if-gez v11, :cond_3

    .line 1226
    const/4 v15, 0x0

    invoke-static {v2, v15}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v13

    .line 1227
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v15, v13}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->add(Ljava/lang/Object;)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v15}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 1232
    .end local v2    # "conversation":Lio/rong/imlib/model/Conversation;
    .end local v3    # "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    .end local v4    # "gatherState":Z
    .end local v11    # "originalIndex":I
    :cond_6
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 116
    const-string v0, "ConversationListFragment"

    const-string v1, "onAttach"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/UriFragment;->onAttach(Landroid/app/Activity;)V

    .line 118
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1251
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    const-string v0, "ConversationListFragment"

    const-string v1, "onCreate"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/UriFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mSupportConversationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    const-string v2, "ConversationListFragment"

    const-string v3, "onCreateView"

    invoke-static {p0, v2, v3}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget v2, Lio/rong/imkit/R$layout;->rc_fr_conversationlist:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, "view":Landroid/view/View;
    sget v2, Lio/rong/imkit/R$id;->rc_list:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/fragment/ConversationListFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    .line 170
    const v2, 0x1020004

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/fragment/ConversationListFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    .local v0, "mEmptyView":Landroid/widget/TextView;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v2

    if-nez v2, :cond_1

    .line 172
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_conversation_list_not_connected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_0
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 179
    return-object v1

    .line 174
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_conversation_list_empty_prompt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1236
    const-string v0, "ConversationListFragment"

    const-string v1, "onDestroy"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1238
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1239
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onDestroy()V

    .line 1240
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Draft;)V
    .locals 6
    .param p1, "draft"    # Lio/rong/imkit/model/Draft;

    .prologue
    .line 447
    invoke-virtual {p1}, Lio/rong/imkit/model/Draft;->getType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    .line 448
    .local v1, "curType":Lio/rong/imlib/model/Conversation$ConversationType;
    if-nez v1, :cond_0

    .line 449
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "the type of the draft is unknown!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 451
    :cond_0
    const-string v3, "onEventMainThread(draft)"

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Draft;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v2

    .line 454
    .local v2, "position":I
    if-ltz v2, :cond_1

    .line 455
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v3, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/UIConversation;

    .line 456
    .local v0, "conversation":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {p1}, Lio/rong/imkit/model/Draft;->getContent()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 457
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lio/rong/imkit/model/UIConversation;->setShowDraftFlag(Z)V

    .line 462
    :goto_0
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v2, v4, v5}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 465
    .end local v0    # "conversation":Lio/rong/imkit/model/UIConversation;
    :cond_1
    return-void

    .line 459
    .restart local v0    # "conversation":Lio/rong/imkit/model/UIConversation;
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lio/rong/imkit/model/UIConversation;->setShowDraftFlag(Z)V

    .line 460
    invoke-virtual {p1}, Lio/rong/imkit/model/Draft;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/rong/imkit/model/UIConversation;->setDraft(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConnectEvent;)V
    .locals 4
    .param p1, "event"    # Lio/rong/imkit/model/Event$ConnectEvent;

    .prologue
    .line 221
    const-string v0, "onEventMainThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event.ConnectEvent: isListRetrieved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->isShowWithoutConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-boolean v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->isShowWithoutConnected:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mSupportConversationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 225
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mSupportConversationList:Ljava/util/ArrayList;

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mSupportConversationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1, v2, v0}, Lio/rong/imkit/RongIMClientWrapper;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 232
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->isShowWithoutConnected:Z

    .line 233
    :cond_0
    return-void

    .line 227
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongIMClientWrapper;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConversationNotificationEvent;)V
    .locals 4
    .param p1, "notificationEvent"    # Lio/rong/imkit/model/Event$ConversationNotificationEvent;

    .prologue
    .line 845
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationNotificationEvent;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationNotificationEvent;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 847
    .local v0, "originalIndex":I
    if-ltz v0, :cond_0

    .line 848
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 850
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConversationRemoveEvent;)V
    .locals 7
    .param p1, "removeEvent"    # Lio/rong/imkit/model/Event$ConversationRemoveEvent;

    .prologue
    .line 758
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v1

    .line 760
    .local v1, "removedIndex":I
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 762
    .local v0, "gatherState":Z
    if-nez v0, :cond_1

    .line 763
    if-ltz v1, :cond_0

    .line 764
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v2, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->remove(I)V

    .line 765
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    if-ltz v1, :cond_0

    .line 769
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/fragment/ConversationListFragment$6;

    invoke-direct {v3, p0, v1}, Lio/rong/imkit/fragment/ConversationListFragment$6;-><init>(Lio/rong/imkit/fragment/ConversationListFragment;I)V

    const/4 v4, 0x1

    new-array v4, v4, [Lio/rong/imlib/model/Conversation$ConversationType;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lio/rong/imkit/RongIMClientWrapper;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConversationTopEvent;)V
    .locals 13
    .param p1, "setTopEvent"    # Lio/rong/imkit/model/Event$ConversationTopEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 714
    iget-object v8, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationTopEvent;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v9

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationTopEvent;->getTargetId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v5

    .line 715
    .local v5, "originalIndex":I
    if-ltz v5, :cond_7

    .line 716
    iget-object v8, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v8, v5}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/rong/imkit/model/UIConversation;

    .line 717
    .local v7, "temp":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v6

    .line 718
    .local v6, "originalValue":Z
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationTopEvent;->isTop()Z

    move-result v8

    if-ne v6, v8, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    const/4 v4, 0x0

    .line 724
    .local v4, "newTopStatus":Z
    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getConversationGatherState()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 725
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v8

    new-array v9, v11, [Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v8, v9}, Lio/rong/imkit/RongIMClientWrapper;->getConversationList([Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;

    move-result-object v1

    .line 726
    .local v1, "conversations":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Conversation;

    .line 727
    .local v0, "conv":Lio/rong/imlib/model/Conversation;
    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->isTop()Z

    move-result v8

    if-ne v8, v11, :cond_2

    .line 728
    const/4 v4, 0x1

    .line 732
    .end local v0    # "conv":Lio/rong/imlib/model/Conversation;
    :cond_3
    if-eq v6, v4, :cond_0

    .line 736
    .end local v1    # "conversations":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    if-ne v6, v11, :cond_5

    .line 737
    invoke-virtual {v7, v12}, Lio/rong/imkit/model/UIConversation;->setTop(Z)V

    .line 738
    invoke-static {}, Lio/rong/imkit/util/ConversationListUtils;->getInstance()Lio/rong/imkit/util/ConversationListUtils;

    move-result-object v8

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v8, v5, v9}, Lio/rong/imkit/util/ConversationListUtils;->findPositionForCancleTop(ILio/rong/imkit/widget/adapter/ConversationListAdapter;)I

    move-result v3

    .line 744
    .local v3, "newIndex":I
    :goto_1
    if-ne v5, v3, :cond_6

    .line 745
    iget-object v8, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v10, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v3, v10

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v8, v3, v9, v10}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 740
    .end local v3    # "newIndex":I
    :cond_5
    invoke-virtual {v7, v11}, Lio/rong/imkit/model/UIConversation;->setTop(Z)V

    .line 741
    invoke-static {}, Lio/rong/imkit/util/ConversationListUtils;->getInstance()Lio/rong/imkit/util/ConversationListUtils;

    move-result-object v8

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v8, v7, v9}, Lio/rong/imkit/util/ConversationListUtils;->findPositionForSetTop(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/ConversationListAdapter;)I

    move-result v3

    .restart local v3    # "newIndex":I
    goto :goto_1

    .line 747
    :cond_6
    iget-object v8, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v8, v5}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->remove(I)V

    .line 748
    iget-object v8, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v8, v7, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 749
    iget-object v8, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v8}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 752
    .end local v3    # "newIndex":I
    .end local v4    # "newTopStatus":Z
    .end local v6    # "originalValue":Z
    .end local v7    # "temp":Lio/rong/imkit/model/UIConversation;
    :cond_7
    new-instance v8, Ljava/lang/IllegalAccessException;

    const-string/jumbo v9, "the item has already been deleted!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConversationUnreadEvent;)V
    .locals 8
    .param p1, "unreadEvent"    # Lio/rong/imkit/model/Event$ConversationUnreadEvent;

    .prologue
    const/4 v7, 0x0

    .line 686
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationUnreadEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationUnreadEvent;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v1

    .line 687
    .local v1, "targetIndex":I
    const-string v3, "onEventMainThread"

    const-string v4, "ConversationUnreadEvent: name="

    invoke-static {p0, v3, v4}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    if-ltz v1, :cond_0

    .line 689
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    .line 690
    .local v2, "temp":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationGatherState()Z

    move-result v0

    .line 691
    .local v0, "gatherState":Z
    if-eqz v0, :cond_1

    .line 692
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/fragment/ConversationListFragment$5;

    invoke-direct {v4, p0, v2, v1}, Lio/rong/imkit/fragment/ConversationListFragment$5;-><init>(Lio/rong/imkit/fragment/ConversationListFragment;Lio/rong/imkit/model/UIConversation;I)V

    const/4 v5, 0x1

    new-array v5, v5, [Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationUnreadEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lio/rong/imkit/RongIMClientWrapper;->getUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 711
    .end local v0    # "gatherState":Z
    .end local v2    # "temp":Lio/rong/imkit/model/UIConversation;
    :cond_0
    :goto_0
    return-void

    .line 705
    .restart local v0    # "gatherState":Z
    .restart local v2    # "temp":Lio/rong/imkit/model/UIConversation;
    :cond_1
    invoke-virtual {v2, v7}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 706
    const-string v3, "onEventMainThread"

    const-string v4, "ConversationUnreadEvent: set unRead count to be 0"

    invoke-static {p0, v3, v4}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v4, v5}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$CreateDiscussionEvent;)V
    .locals 7
    .param p1, "createDiscussionEvent"    # Lio/rong/imkit/model/Event$CreateDiscussionEvent;

    .prologue
    .line 418
    const-string v4, "onEventBackgroundThread:"

    const-string v5, "createDiscussionEvent"

    invoke-static {p0, v4, v5}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v0, Lio/rong/imkit/model/UIConversation;

    invoke-direct {v0}, Lio/rong/imkit/model/UIConversation;-><init>()V

    .line 420
    .local v0, "conversation":Lio/rong/imkit/model/UIConversation;
    sget-object v4, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0, v4}, Lio/rong/imkit/model/UIConversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 421
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$CreateDiscussionEvent;->getDiscussionName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 422
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$CreateDiscussionEvent;->getDiscussionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 426
    :goto_0
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$CreateDiscussionEvent;->getDiscussionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/rong/imkit/model/UIConversation;->setConversationTargetId(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lio/rong/imkit/model/UIConversation;->setUIConversationTime(J)V

    .line 429
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 430
    .local v2, "isGather":Z
    invoke-virtual {v0, v2}, Lio/rong/imkit/model/UIConversation;->setConversationGatherState(Z)V

    .line 433
    if-eqz v2, :cond_0

    .line 434
    invoke-static {}, Lio/rong/imkit/util/ConversationListUtils;->getInstance()Lio/rong/imkit/util/ConversationListUtils;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lio/rong/imkit/util/ConversationListUtils;->setGatheredConversationTitle(Lio/rong/imlib/model/Conversation$ConversationType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 438
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findGatherPosition(Lio/rong/imlib/model/Conversation$ConversationType;)I

    move-result v1

    .line 440
    .local v1, "gatherPosition":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 441
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-static {}, Lio/rong/imkit/util/ConversationListUtils;->getInstance()Lio/rong/imkit/util/ConversationListUtils;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v5, v0, v6}, Lio/rong/imkit/util/ConversationListUtils;->findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/ConversationListAdapter;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 442
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    .line 444
    :cond_1
    return-void

    .line 424
    .end local v1    # "gatherPosition":I
    .end local v2    # "isGather":Z
    :cond_2
    const-string v4, ""

    invoke-virtual {v0, v4}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$GroupUserInfoEvent;)V
    .locals 14
    .param p1, "event"    # Lio/rong/imkit/model/Event$GroupUserInfoEvent;

    .prologue
    .line 548
    iget-object v10, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v10}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getCount()I

    move-result v1

    .line 550
    .local v1, "count":I
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$GroupUserInfoEvent;->getUserInfo()Lio/rong/imkit/model/GroupUserInfo;

    move-result-object v9

    .line 551
    .local v9, "userInfo":Lio/rong/imkit/model/GroupUserInfo;
    const-string v10, "qinxiao"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GroupUserInfoEvent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {v9}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    .line 586
    :cond_0
    return-void

    .line 556
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 557
    iget-object v10, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v10, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/rong/imkit/model/UIConversation;

    .line 558
    .local v8, "uiConversation":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v8}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    .line 559
    .local v7, "type":Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v10

    invoke-virtual {v8}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 561
    .local v2, "gatherState":Z
    invoke-virtual {v8}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    if-nez v10, :cond_4

    .line 562
    const/4 v5, 0x0

    .line 567
    .local v5, "isShowName":Z
    :goto_1
    if-nez v2, :cond_3

    if-eqz v5, :cond_3

    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v7, v10}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v8}, Lio/rong/imkit/model/UIConversation;->getConversationSenderId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 569
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v10

    invoke-virtual {v8}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v10

    invoke-virtual {v8}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v6

    .line 570
    .local v6, "messageData":Landroid/text/Spannable;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 571
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v8}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    instance-of v10, v10, Lio/rong/message/VoiceMessage;

    if-eqz v10, :cond_2

    .line 572
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v10

    invoke-virtual {v8}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v11

    invoke-virtual {v8}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lio/rong/imkit/RongIMClientWrapper;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v4

    .line 574
    .local v4, "isListened":Z
    if-eqz v4, :cond_5

    .line 575
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lio/rong/imkit/R$color;->rc_text_color_secondary:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-interface {v6, v10, v11, v12, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 580
    .end local v4    # "isListened":Z
    :cond_2
    :goto_2
    invoke-virtual {v9}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lio/rong/imkit/model/UIConversation;->addNickname(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v9}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 582
    invoke-virtual {v8, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 583
    iget-object v10, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iget-object v11, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v12, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v12}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v12

    sub-int v12, v3, v12

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    iget-object v12, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v10, v3, v11, v12}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 556
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v6    # "messageData":Landroid/text/Spannable;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 564
    .end local v5    # "isShowName":Z
    :cond_4
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v10

    invoke-virtual {v8}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Lio/rong/imkit/RongContext;->getMessageProviderTag(Ljava/lang/Class;)Lio/rong/imkit/model/ProviderTag;

    move-result-object v10

    invoke-interface {v10}, Lio/rong/imkit/model/ProviderTag;->showSummaryWithName()Z

    move-result v5

    .restart local v5    # "isShowName":Z
    goto/16 :goto_1

    .line 577
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v4    # "isListened":Z
    .restart local v6    # "messageData":Landroid/text/Spannable;
    :cond_5
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lio/rong/imkit/R$color;->rc_voice_color:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-interface {v6, v10, v11, v12, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$MessageDeleteEvent;)V
    .locals 9
    .param p1, "event"    # Lio/rong/imkit/model/Event$MessageDeleteEvent;

    .prologue
    .line 790
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getCount()I

    move-result v0

    .line 791
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 792
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageDeleteEvent;->getMessageIds()Ljava/util/List;

    move-result-object v5

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v4, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v4}, Lio/rong/imkit/model/UIConversation;->getLatestMessageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 793
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v4, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v4}, Lio/rong/imkit/model/UIConversation;->getConversationGatherState()Z

    move-result v1

    .line 794
    .local v1, "gatherState":Z
    move v3, v2

    .line 796
    .local v3, "index":I
    if-eqz v1, :cond_1

    .line 797
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v5

    new-instance v6, Lio/rong/imkit/fragment/ConversationListFragment$7;

    invoke-direct {v6, p0, v3}, Lio/rong/imkit/fragment/ConversationListFragment$7;-><init>(Lio/rong/imkit/fragment/ConversationListFragment;I)V

    const/4 v4, 0x1

    new-array v7, v4, [Lio/rong/imlib/model/Conversation$ConversationType;

    const/4 v8, 0x0

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v4, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v4}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Lio/rong/imkit/RongIMClientWrapper;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 842
    .end local v1    # "gatherState":Z
    .end local v3    # "index":I
    :cond_0
    :goto_1
    return-void

    .line 814
    .restart local v1    # "gatherState":Z
    .restart local v3    # "index":I
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v5

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v4, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v4}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v4, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v4}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lio/rong/imkit/fragment/ConversationListFragment$8;

    invoke-direct {v7, p0, v3}, Lio/rong/imkit/fragment/ConversationListFragment$8;-><init>(Lio/rong/imkit/fragment/ConversationListFragment;I)V

    invoke-virtual {v5, v6, v4, v7}, Lio/rong/imkit/RongIMClientWrapper;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_1

    .line 791
    .end local v1    # "gatherState":Z
    .end local v3    # "index":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$MessageListenedEvent;)V
    .locals 5
    .param p1, "event"    # Lio/rong/imkit/model/Event$MessageListenedEvent;

    .prologue
    .line 941
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageListenedEvent;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageListenedEvent;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 943
    .local v0, "originalIndex":I
    if-ltz v0, :cond_1

    .line 944
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v2, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/UIConversation;

    .line 945
    .local v1, "temp":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v1}, Lio/rong/imkit/model/UIConversation;->getLatestMessageId()I

    move-result v2

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageListenedEvent;->getLatestMessageId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 946
    invoke-virtual {v1, v1}, Lio/rong/imkit/model/UIConversation;->buildConversationContent(Lio/rong/imkit/model/UIConversation;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 948
    :cond_0
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v3, v4}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 950
    .end local v1    # "temp":Lio/rong/imkit/model/UIConversation;
    :cond_1
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$MessagesClearEvent;)V
    .locals 7
    .param p1, "clearMessagesEvent"    # Lio/rong/imkit/model/Event$MessagesClearEvent;

    .prologue
    .line 854
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v1

    .line 856
    .local v1, "originalIndex":I
    if-ltz v1, :cond_0

    .line 857
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 858
    .local v0, "gatherState":Z
    if-eqz v0, :cond_1

    .line 859
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/fragment/ConversationListFragment$9;

    invoke-direct {v3, p0, v1}, Lio/rong/imkit/fragment/ConversationListFragment$9;-><init>(Lio/rong/imkit/fragment/ConversationListFragment;I)V

    const/4 v4, 0x1

    new-array v4, v4, [Lio/rong/imlib/model/Conversation$ConversationType;

    const/4 v5, 0x0

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lio/rong/imkit/RongIMClientWrapper;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 892
    .end local v0    # "gatherState":Z
    :cond_0
    :goto_0
    return-void

    .line 875
    .restart local v0    # "gatherState":Z
    :cond_1
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getTargetId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lio/rong/imkit/fragment/ConversationListFragment$10;

    invoke-direct {v5, p0, v1}, Lio/rong/imkit/fragment/ConversationListFragment$10;-><init>(Lio/rong/imkit/fragment/ConversationListFragment;I)V

    invoke-virtual {v2, v3, v4, v5}, Lio/rong/imlib/RongIMClient;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;)V
    .locals 4
    .param p1, "sendErrorEvent"    # Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;

    .prologue
    .line 895
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 897
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 898
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/UIConversation;

    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v1, v2}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 899
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 901
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$OnReceiveMessageEvent;)V
    .locals 14
    .param p1, "event"    # Lio/rong/imkit/model/Event$OnReceiveMessageEvent;

    .prologue
    const/4 v12, 0x1

    .line 236
    sget-object v9, Lio/rong/imkit/fragment/ConversationListFragment;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Receive Message: id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mSupportConversationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mSupportConversationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mSupportConversationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v9

    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v9, v10, :cond_1

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v9

    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v9, v10, :cond_3

    .line 242
    :cond_1
    sget-object v9, Lio/rong/imkit/fragment/ConversationListFragment;->TAG:Ljava/lang/String;

    const-string v10, "Not included in conversation list. Return directly!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_2
    :goto_0
    return-void

    .line 246
    :cond_3
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    if-nez v9, :cond_4

    .line 247
    sget-object v9, Lio/rong/imkit/fragment/ConversationListFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "the conversation list adapter is null. Cache the received message firstly!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mMessageCache:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    :cond_4
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v10

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v6

    .line 253
    .local v6, "originalIndex":I
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v9

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 255
    .local v3, "gatherState":Z
    const/4 v7, 0x0

    .line 257
    .local v7, "readRec":Z
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lio/rong/imkit/R$bool;->rc_read_receipt:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 262
    :goto_1
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "RC:ReadNtf"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 263
    if-ne v7, v12, :cond_2

    if-nez v3, :cond_2

    .line 264
    if-ltz v6, :cond_2

    .line 265
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9, v6}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/UIConversation;

    .line 266
    .local v1, "conv":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    check-cast v0, Lio/rong/message/ReadReceiptMessage;

    .line 268
    .local v0, "content":Lio/rong/message/ReadReceiptMessage;
    invoke-virtual {v0}, Lio/rong/message/ReadReceiptMessage;->getLastMessageSendTime()J

    move-result-wide v10

    invoke-virtual {v1}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-ltz v9, :cond_2

    .line 269
    sget-object v9, Lio/rong/imlib/model/Message$SentStatus;->READ:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v1, v9}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 270
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 258
    .end local v0    # "content":Lio/rong/message/ReadReceiptMessage;
    .end local v1    # "conv":Lio/rong/imkit/model/UIConversation;
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v9, "onEventMainThread"

    const-string v10, "rc_read_receipt not configure in rc_config.xml"

    invoke-static {p0, v9, v10}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    .line 277
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v9

    invoke-direct {p0, v9, v6}, Lio/rong/imkit/fragment/ConversationListFragment;->makeUiConversation(Lio/rong/imlib/model/Message;I)Lio/rong/imkit/model/UIConversation;

    move-result-object v8

    .line 278
    .local v8, "uiConversation":Lio/rong/imkit/model/UIConversation;
    invoke-static {}, Lio/rong/imkit/util/ConversationListUtils;->getInstance()Lio/rong/imkit/util/ConversationListUtils;

    move-result-object v9

    iget-object v10, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9, v8, v10}, Lio/rong/imkit/util/ConversationListUtils;->findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/ConversationListAdapter;)I

    move-result v5

    .line 279
    .local v5, "newPosition":I
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lio/rong/imlib/MessageTag;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lio/rong/imlib/MessageTag;

    .line 281
    .local v4, "msgTag":Lio/rong/imlib/MessageTag;
    sget-object v9, Lio/rong/imkit/fragment/ConversationListFragment;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Event.Message, originalIndex is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",newPosition ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",left = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getLeft()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    if-gez v6, :cond_7

    .line 283
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9, v8, v5}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 288
    :cond_6
    :goto_2
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    .line 290
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 291
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 292
    if-eqz v3, :cond_8

    .line 293
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v9

    new-instance v10, Lio/rong/imkit/fragment/ConversationListFragment$2;

    invoke-direct {v10, p0, p1}, Lio/rong/imkit/fragment/ConversationListFragment$2;-><init>(Lio/rong/imkit/fragment/ConversationListFragment;Lio/rong/imkit/model/Event$OnReceiveMessageEvent;)V

    new-array v11, v12, [Lio/rong/imlib/model/Conversation$ConversationType;

    const/4 v12, 0x0

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lio/rong/imkit/RongIMClientWrapper;->getUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    goto/16 :goto_0

    .line 284
    :cond_7
    if-eq v6, v5, :cond_6

    .line 285
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9, v6}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->remove(I)V

    .line 286
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9, v8, v5}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->add(Ljava/lang/Object;I)V

    goto :goto_2

    .line 307
    :cond_8
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v9

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v10

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lio/rong/imkit/fragment/ConversationListFragment$3;

    invoke-direct {v12, p0, p1, v5}, Lio/rong/imkit/fragment/ConversationListFragment$3;-><init>(Lio/rong/imkit/fragment/ConversationListFragment;Lio/rong/imkit/model/Event$OnReceiveMessageEvent;I)V

    invoke-virtual {v9, v10, v11, v12}, Lio/rong/imkit/RongIMClientWrapper;->getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto/16 :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;)V
    .locals 4
    .param p1, "event"    # Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;

    .prologue
    .line 674
    if-eqz p1, :cond_0

    .line 675
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;->isFollow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 676
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 677
    .local v0, "originalIndex":I
    if-ltz v0, :cond_0

    .line 678
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->remove(I)V

    .line 679
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    .line 683
    .end local v0    # "originalIndex":I
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$QuitDiscussionEvent;)V
    .locals 4
    .param p1, "event"    # Lio/rong/imkit/model/Event$QuitDiscussionEvent;

    .prologue
    .line 904
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$QuitDiscussionEvent;->getDiscussionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 906
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 907
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->remove(I)V

    .line 908
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    .line 910
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$QuitGroupEvent;)V
    .locals 7
    .param p1, "event"    # Lio/rong/imkit/model/Event$QuitGroupEvent;

    .prologue
    .line 913
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$QuitGroupEvent;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v1

    .line 914
    .local v1, "index":I
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 916
    .local v0, "gatherState":Z
    if-ltz v1, :cond_1

    if-eqz v0, :cond_1

    .line 917
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/fragment/ConversationListFragment$11;

    invoke-direct {v3, p0, v1}, Lio/rong/imkit/fragment/ConversationListFragment$11;-><init>(Lio/rong/imkit/fragment/ConversationListFragment;I)V

    const/4 v4, 0x1

    new-array v4, v4, [Lio/rong/imlib/model/Conversation$ConversationType;

    const/4 v5, 0x0

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lio/rong/imkit/RongIMClientWrapper;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    if-lez v1, :cond_0

    .line 934
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v2, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->remove(I)V

    .line 935
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V
    .locals 2
    .param p1, "status"    # Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    .prologue
    .line 395
    const-string v0, "ConnectionStatus"

    invoke-virtual {p1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/fragment/ConversationListFragment$4;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/fragment/ConversationListFragment$4;-><init>(Lio/rong/imkit/fragment/ConversationListFragment;Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 415
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/model/Discussion;)V
    .locals 12
    .param p1, "discussion"    # Lio/rong/imlib/model/Discussion;

    .prologue
    const/16 v11, 0x21

    const/4 v10, 0x0

    .line 509
    iget-object v7, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v7}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getCount()I

    move-result v1

    .line 510
    .local v1, "count":I
    const-string v7, "onEventMainThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Discussion: name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 513
    iget-object v7, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v7, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imkit/model/UIConversation;

    .line 514
    .local v5, "item":Lio/rong/imkit/model/UIConversation;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v7, v8}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 516
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 517
    .local v2, "gatherState":Z
    if-eqz v2, :cond_4

    .line 518
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 519
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v7

    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v6

    .line 523
    .local v6, "messageData":Landroid/text/Spannable;
    if-eqz v6, :cond_3

    .line 524
    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    instance-of v7, v7, Lio/rong/message/VoiceMessage;

    if-eqz v7, :cond_0

    .line 525
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v7

    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v8

    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lio/rong/imkit/RongIMClientWrapper;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v4

    .line 527
    .local v4, "isListened":Z
    if-eqz v4, :cond_2

    .line 528
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lio/rong/imkit/R$color;->rc_text_color_secondary:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v8

    invoke-interface {v6, v7, v10, v8, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 533
    .end local v4    # "isListened":Z
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 538
    :goto_2
    invoke-virtual {v5, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 542
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v6    # "messageData":Landroid/text/Spannable;
    :goto_3
    iget-object v7, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iget-object v8, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7, v3, v8, v9}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 512
    .end local v2    # "gatherState":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 530
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v2    # "gatherState":Z
    .restart local v4    # "isListened":Z
    .restart local v6    # "messageData":Landroid/text/Spannable;
    :cond_2
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lio/rong/imkit/R$color;->rc_voice_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v8

    invoke-interface {v6, v7, v10, v8, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 535
    .end local v4    # "isListened":Z
    :cond_3
    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 540
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v6    # "messageData":Landroid/text/Spannable;
    :cond_4
    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    goto :goto_3

    .line 545
    .end local v2    # "gatherState":Z
    .end local v5    # "item":Lio/rong/imkit/model/UIConversation;
    :cond_5
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/model/Group;)V
    .locals 12
    .param p1, "groupInfo"    # Lio/rong/imlib/model/Group;

    .prologue
    const/16 v11, 0x21

    const/4 v10, 0x0

    .line 469
    iget-object v7, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v7}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getCount()I

    move-result v1

    .line 470
    .local v1, "count":I
    const-string v7, "onEventMainThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Group: name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 506
    :cond_0
    return-void

    .line 475
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 476
    iget-object v7, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v7, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imkit/model/UIConversation;

    .line 477
    .local v5, "item":Lio/rong/imkit/model/UIConversation;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v7, v8}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 479
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 480
    .local v2, "gatherState":Z
    if-eqz v2, :cond_6

    .line 481
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 482
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v7

    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v6

    .line 485
    .local v6, "messageData":Landroid/text/Spannable;
    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    instance-of v7, v7, Lio/rong/message/VoiceMessage;

    if-eqz v7, :cond_2

    .line 486
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v7

    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v8

    invoke-virtual {v5}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lio/rong/imkit/RongIMClientWrapper;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v4

    .line 488
    .local v4, "isListened":Z
    if-eqz v4, :cond_5

    .line 489
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lio/rong/imkit/R$color;->rc_text_color_secondary:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v8

    invoke-interface {v6, v7, v10, v8, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 494
    .end local v4    # "isListened":Z
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 495
    invoke-virtual {v5, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 496
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getPortraitUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 497
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getPortraitUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    .line 503
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v6    # "messageData":Landroid/text/Spannable;
    :cond_3
    :goto_2
    iget-object v7, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iget-object v8, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7, v3, v8, v9}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 475
    .end local v2    # "gatherState":Z
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 491
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v2    # "gatherState":Z
    .restart local v4    # "isListened":Z
    .restart local v6    # "messageData":Landroid/text/Spannable;
    :cond_5
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lio/rong/imkit/R$color;->rc_voice_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v8

    invoke-interface {v6, v7, v10, v8, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 499
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v4    # "isListened":Z
    .end local v6    # "messageData":Landroid/text/Spannable;
    :cond_6
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getPortraitUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 501
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getPortraitUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    goto :goto_2
.end method

.method public onEventMainThread(Lio/rong/imlib/model/Message;)V
    .locals 7
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 331
    const-string v4, "onEventMainThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive Message: name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mSupportConversationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mSupportConversationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mSupportConversationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v4, v5, :cond_2

    .line 337
    :cond_1
    const-string v4, "onEventBackgroundThread"

    const-string v5, "Not included in conversation list. Return directly!"

    invoke-static {p0, v4, v5}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    return-void

    .line 341
    :cond_2
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    if-nez v4, :cond_3

    .line 342
    const-string v4, "onEventMainThread(Message)"

    const-string/jumbo v5, "the conversation list adapter is null. Cache the received message firstly!!!"

    invoke-static {p0, v4, v5}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mMessageCache:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 347
    :cond_3
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v2

    .line 348
    .local v2, "originalIndex":I
    const-string v4, "onEventBackgroundThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event.Message, originalIndex is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0, p1, v2}, Lio/rong/imkit/fragment/ConversationListFragment;->makeUiConversation(Lio/rong/imlib/model/Message;I)Lio/rong/imkit/model/UIConversation;

    move-result-object v3

    .line 352
    .local v3, "uiConversation":Lio/rong/imkit/model/UIConversation;
    invoke-static {}, Lio/rong/imkit/util/ConversationListUtils;->getInstance()Lio/rong/imkit/util/ConversationListUtils;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v4, v3, v5}, Lio/rong/imkit/util/ConversationListUtils;->findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/ConversationListAdapter;)I

    move-result v1

    .line 354
    .local v1, "newPosition":I
    if-ltz v2, :cond_5

    .line 355
    if-ne v1, v2, :cond_4

    .line 356
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 357
    .local v0, "msg":Landroid/os/Message;
    const/4 v4, 0x3

    iput v4, v0, Landroid/os/Message;->what:I

    .line 358
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 359
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 361
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v4, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->remove(I)V

    .line 362
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v4, v3, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 363
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 366
    :cond_5
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v4, v3, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 367
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/model/MessageContent;)V
    .locals 5
    .param p1, "content"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 372
    const-string v3, "onEventMainThread:"

    const-string v4, "MessageContent"

    invoke-static {p0, v3, v4}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 375
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v3, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    .line 377
    .local v2, "tempUIConversation":Lio/rong/imkit/model/UIConversation;
    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 379
    invoke-virtual {v2, p1}, Lio/rong/imkit/model/UIConversation;->setMessageContent(Lio/rong/imlib/model/MessageContent;)V

    .line 380
    invoke-virtual {v2, v2}, Lio/rong/imkit/model/UIConversation;->buildConversationContent(Lio/rong/imkit/model/UIConversation;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 381
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setShowDraftFlag(Z)V

    .line 383
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 384
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 385
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 386
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 374
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    const-string v3, "onEventMainThread"

    const-string v4, "MessageContent is null"

    invoke-static {p0, v3, v4}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 391
    .end local v2    # "tempUIConversation":Lio/rong/imkit/model/UIConversation;
    :cond_1
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 6
    .param p1, "accountInfo"    # Lio/rong/imlib/model/PublicServiceProfile;

    .prologue
    .line 658
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getCount()I

    move-result v0

    .line 659
    .local v0, "count":I
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 660
    .local v1, "gatherState":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 661
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v3, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v3, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 664
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v3, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 665
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v3, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    .line 666
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v2, v4, v5}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 671
    :cond_0
    return-void

    .line 660
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/model/UserInfo;)V
    .locals 14
    .param p1, "userInfo"    # Lio/rong/imlib/model/UserInfo;

    .prologue
    const/16 v13, 0x21

    const/4 v12, 0x0

    .line 590
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getCount()I

    move-result v1

    .line 593
    .local v1, "count":I
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 655
    :cond_0
    return-void

    .line 597
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 598
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v9, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/rong/imkit/model/UIConversation;

    .line 599
    .local v7, "temp":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v8

    .line 600
    .local v8, "type":Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v9

    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 602
    .local v2, "gatherState":Z
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lio/rong/imkit/model/UIConversation;->hasNickname(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 597
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 605
    :cond_3
    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v9

    if-nez v9, :cond_6

    .line 606
    const/4 v5, 0x0

    .line 611
    .local v5, "isShowName":Z
    :goto_2
    if-nez v2, :cond_8

    if-eqz v5, :cond_8

    const-string v9, "group"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "discussion"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_4
    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getConversationSenderId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 613
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v9

    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v9

    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v6

    .line 614
    .local v6, "messageData":Landroid/text/Spannable;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 615
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v9

    instance-of v9, v9, Lio/rong/message/VoiceMessage;

    if-eqz v9, :cond_5

    .line 616
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v9

    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v10

    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lio/rong/imkit/RongIMClientWrapper;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v4

    .line 618
    .local v4, "isListened":Z
    if-eqz v4, :cond_7

    .line 619
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lio/rong/imkit/R$color;->rc_text_color_secondary:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v10

    invoke-interface {v6, v9, v12, v10, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 624
    .end local v4    # "isListened":Z
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 625
    invoke-virtual {v7, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 626
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iget-object v10, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v11, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v3, v11

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v9, v3, v10, v11}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_1

    .line 608
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v5    # "isShowName":Z
    .end local v6    # "messageData":Landroid/text/Spannable;
    :cond_6
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v9

    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/RongContext;->getMessageProviderTag(Ljava/lang/Class;)Lio/rong/imkit/model/ProviderTag;

    move-result-object v9

    invoke-interface {v9}, Lio/rong/imkit/model/ProviderTag;->showSummaryWithName()Z

    move-result v5

    .restart local v5    # "isShowName":Z
    goto/16 :goto_2

    .line 621
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v4    # "isListened":Z
    .restart local v6    # "messageData":Landroid/text/Spannable;
    :cond_7
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lio/rong/imkit/R$color;->rc_voice_color:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v10

    invoke-interface {v6, v9, v12, v10, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 627
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v4    # "isListened":Z
    .end local v6    # "messageData":Landroid/text/Spannable;
    :cond_8
    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 628
    if-nez v2, :cond_b

    const-string v9, "private"

    if-eq v8, v9, :cond_9

    const-string/jumbo v9, "system"

    if-ne v8, v9, :cond_b

    .line 629
    :cond_9
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v9}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    .line 652
    :cond_a
    :goto_4
    iget-object v9, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    iget-object v10, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v11, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v3, v11

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v9, v3, v10, v11}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_1

    .line 631
    :cond_b
    if-eqz v5, :cond_a

    .line 632
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v9

    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v9

    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v6

    .line 633
    .restart local v6    # "messageData":Landroid/text/Spannable;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 634
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    if-eqz v6, :cond_e

    .line 635
    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v9

    instance-of v9, v9, Lio/rong/message/VoiceMessage;

    if-eqz v9, :cond_c

    .line 636
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v9

    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v10

    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lio/rong/imkit/RongIMClientWrapper;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v9

    invoke-virtual {v9}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v4

    .line 638
    .restart local v4    # "isListened":Z
    if-eqz v4, :cond_d

    .line 639
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lio/rong/imkit/R$color;->rc_text_color_secondary:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v10

    invoke-interface {v6, v9, v12, v10, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 645
    .end local v4    # "isListened":Z
    :cond_c
    :goto_5
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 649
    :goto_6
    invoke-virtual {v7, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 650
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v9}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    goto/16 :goto_4

    .line 641
    .restart local v4    # "isListened":Z
    :cond_d
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lio/rong/imkit/R$color;->rc_voice_color:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v10

    invoke-interface {v6, v9, v12, v10, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    .line 647
    .end local v4    # "isListened":Z
    :cond_e
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_6
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1022
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v3, p3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    .line 1023
    .local v2, "uiconversation":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    .line 1024
    .local v1, "type":Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1025
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lio/rong/imkit/RongIM;->startSubConversationList(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1028
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    move-result-object v3

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-interface {v3, v4, p2, v2}, Lio/rong/imkit/RongIM$ConversationListBehaviorListener;->onConversationClick(Landroid/content/Context;Landroid/view/View;Lio/rong/imkit/model/UIConversation;)Z

    move-result v0

    .line 1029
    .local v0, "isDefault":Z
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 1032
    .end local v0    # "isDefault":Z
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 1033
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getUIConversationTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v1, v5, v6}, Lio/rong/imkit/RongIM;->startConversation(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 1039
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v3, p3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    .line 1040
    .local v2, "uiConversation":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1042
    .local v1, "type":Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1043
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    move-result-object v3

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-interface {v3, v4, p2, v2}, Lio/rong/imkit/RongIM$ConversationListBehaviorListener;->onConversationLongClick(Landroid/content/Context;Landroid/view/View;Lio/rong/imkit/model/UIConversation;)Z

    move-result v0

    .line 1044
    .local v0, "isDealt":Z
    if-eqz v0, :cond_0

    .line 1052
    .end local v0    # "isDealt":Z
    :goto_0
    return v5

    .line 1047
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1048
    invoke-direct {p0, v2}, Lio/rong/imkit/fragment/ConversationListFragment;->buildMultiDialog(Lio/rong/imkit/model/UIConversation;)V

    goto :goto_0

    .line 1051
    :cond_1
    invoke-direct {p0, v2}, Lio/rong/imkit/fragment/ConversationListFragment;->buildSingleDialog(Lio/rong/imkit/model/UIConversation;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1244
    const-string v0, "ConversationListFragment"

    const-string v1, "onPause"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onPause()V

    .line 1246
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 194
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onResume()V

    .line 196
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    if-nez v1, :cond_2

    .line 197
    :cond_0
    const-string v1, "ConversationListFr"

    const-string v2, "RongCloud haven\'t been connected yet, so the conversation list display blank !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->isShowWithoutConnected:Z

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    const-string v1, "onResume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current connect status is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Lio/rong/imkit/RongNotificationManager;->getInstance()Lio/rong/imkit/RongNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongNotificationManager;->onRemoveNotification()V

    .line 204
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v0

    .line 205
    .local v0, "status":Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_network_unavailable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/ConversationListFragment;->showNotification(Ljava/lang/CharSequence;)V

    .line 207
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongIMClientWrapper;->reconnect(Lio/rong/imlib/RongIMClient$ConnectCallback;)V

    goto :goto_0

    .line 208
    :cond_3
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->KICKED_OFFLINE_BY_OTHER_CLIENT:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 209
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_tick:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/ConversationListFragment;->showNotification(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 210
    :cond_4
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 211
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->hiddenNotification()V

    goto :goto_0

    .line 212
    :cond_5
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 213
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_network_unavailable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/ConversationListFragment;->showNotification(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 214
    :cond_6
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTING:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_connecting:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/ConversationListFragment;->showNotification(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    .line 186
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 189
    invoke-super {p0, p1, p2}, Lio/rong/imkit/fragment/UriFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 190
    return-void
.end method

.method public setAdapter(Lio/rong/imkit/widget/adapter/ConversationListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    .prologue
    .line 1289
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-virtual {v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->clear()V

    .line 1291
    :cond_0
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    .line 1292
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1293
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1294
    invoke-virtual {p0}, Lio/rong/imkit/fragment/ConversationListFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/ConversationListFragment;->initFragment(Landroid/net/Uri;)V

    .line 1296
    :cond_1
    return-void
.end method
