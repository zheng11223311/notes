.class public Lio/rong/imkit/fragment/SubConversationListFragment;
.super Lio/rong/imkit/fragment/UriFragment;
.source "SubConversationListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/fragment/SubConversationListFragment$getDraftRunnable;
    }
.end annotation


# static fields
.field static final REFRESH_ITEM:I = 0x4

.field static final REFRESH_LIST:I = 0x3

.field static final REFRESH_MSG:I = 0x5

.field static final REORDER_LIST:I = 0x2

.field static final REQ_LIST:I = 0x1


# instance fields
.field private currentType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lio/rong/imkit/fragment/UriFragment;-><init>()V

    .line 61
    new-instance v0, Lio/rong/imkit/fragment/SubConversationListFragment$1;

    invoke-direct {v0, p0}, Lio/rong/imkit/fragment/SubConversationListFragment$1;-><init>(Lio/rong/imkit/fragment/SubConversationListFragment;)V

    iput-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    .line 848
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/fragment/SubConversationListFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imkit/fragment/SubConversationListFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/fragment/SubConversationListFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private buildMultiDialog(Lio/rong/imkit/model/UIConversation;)V
    .locals 4
    .param p1, "uiConversation"    # Lio/rong/imkit/model/UIConversation;

    .prologue
    const/4 v3, 0x0

    .line 756
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 757
    .local v0, "items":[Ljava/lang/String;
    invoke-virtual {p1}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_conversation_list_dialog_cancel_top:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 761
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_conversation_list_dialog_remove:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 763
    invoke-virtual {p1}, Lio/rong/imkit/model/UIConversation;->getUIConversationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/fragment/SubConversationListFragment$4;

    invoke-direct {v2, p0, p1}, Lio/rong/imkit/fragment/SubConversationListFragment$4;-><init>(Lio/rong/imkit/fragment/SubConversationListFragment;Lio/rong/imkit/model/UIConversation;)V

    invoke-virtual {v1, v2}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 791
    return-void

    .line 760
    :cond_0
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_conversation_list_dialog_set_top:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static getInstance()Lio/rong/imkit/fragment/ConversationListFragment;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-direct {v0}, Lio/rong/imkit/fragment/ConversationListFragment;-><init>()V

    return-object v0
.end method

.method private makeUiConversation(Lio/rong/imlib/model/Message;I)Lio/rong/imkit/model/UIConversation;
    .locals 9
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "pos"    # I

    .prologue
    const/4 v8, 0x0

    .line 197
    const/4 v4, 0x0

    .line 200
    .local v4, "uiConversation":Lio/rong/imkit/model/UIConversation;
    if-ltz p2, :cond_4

    .line 201
    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v5, p2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "uiConversation":Lio/rong/imkit/model/UIConversation;
    check-cast v4, Lio/rong/imkit/model/UIConversation;

    .line 202
    .restart local v4    # "uiConversation":Lio/rong/imkit/model/UIConversation;
    if-eqz v4, :cond_4

    .line 203
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setMessageContent(Lio/rong/imlib/model/MessageContent;)V

    .line 204
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v5, v6, :cond_2

    .line 205
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lio/rong/imkit/model/UIConversation;->setUIConversationTime(J)V

    .line 206
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 207
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setConversationSenderId(Ljava/lang/String;)V

    .line 212
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setConversationTargetId(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v4, v4}, Lio/rong/imkit/model/UIConversation;->buildConversationContent(Lio/rong/imkit/model/UIConversation;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 214
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 215
    invoke-virtual {v4, v8}, Lio/rong/imkit/model/UIConversation;->setShowDraftFlag(Z)V

    .line 216
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setLatestMessageId(I)V

    .line 218
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lio/rong/imlib/MessageTag;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/MessageTag;

    .line 219
    .local v3, "tag":Lio/rong/imlib/MessageTag;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v5, v6, :cond_3

    invoke-interface {v3}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 220
    invoke-virtual {v4}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 221
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getCurrentConversationList()Ljava/util/List;

    move-result-object v2

    .line 222
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/ConversationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/ConversationInfo;

    .line 223
    .local v1, "info":Lio/rong/imkit/model/ConversationInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/rong/imkit/model/ConversationInfo;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lio/rong/imkit/model/ConversationInfo;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    invoke-virtual {v4, v8}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    goto :goto_1

    .line 209
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lio/rong/imkit/model/ConversationInfo;
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/ConversationInfo;>;"
    .end local v3    # "tag":Lio/rong/imlib/MessageTag;
    :cond_2
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lio/rong/imkit/model/UIConversation;->setUIConversationTime(J)V

    .line 210
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setConversationSenderId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    .restart local v3    # "tag":Lio/rong/imlib/MessageTag;
    :cond_3
    invoke-virtual {v4, v8}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 231
    .end local v3    # "tag":Lio/rong/imlib/MessageTag;
    :cond_4
    return-object v4
.end method


# virtual methods
.method public findPositionForCancleTop(I)I
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 811
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v0

    .line 812
    .local v0, "count":I
    const/4 v2, 0x0

    .line 814
    .local v2, "tap":I
    if-le p1, v0, :cond_0

    .line 815
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "the index for the position is error!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 818
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 819
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, p1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v4

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 821
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 826
    :cond_2
    add-int v3, p1, v2

    return v3
.end method

.method public findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;)I
    .locals 8
    .param p1, "uiConversation"    # Lio/rong/imkit/model/UIConversation;

    .prologue
    .line 176
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v0

    .line 177
    .local v0, "count":I
    const/4 v2, 0x0

    .line 179
    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 180
    invoke-virtual {p1}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 182
    add-int/lit8 v2, v2, 0x1

    .line 179
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_0
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 187
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 193
    :cond_2
    return v2
.end method

.method public findPositionForSetTop(Lio/rong/imkit/model/UIConversation;)I
    .locals 8
    .param p1, "uiconversation"    # Lio/rong/imkit/model/UIConversation;

    .prologue
    .line 794
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v0

    .line 795
    .local v0, "count":I
    const/4 v2, 0x0

    .line 797
    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 798
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 799
    add-int/lit8 v2, v2, 0x1

    .line 797
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 804
    :cond_0
    return v2
.end method

.method public getAdapter()Lio/rong/imkit/widget/adapter/SubConversationListAdapter;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 675
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 718
    :goto_0
    const/4 v9, 0x0

    return v9

    .line 677
    :pswitch_0
    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v9}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 680
    :pswitch_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 681
    .local v5, "position":I
    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v10, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v11, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v5, v11

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v9, v5, v10, v11}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 684
    .end local v5    # "position":I
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 685
    .local v1, "fromPos":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 687
    .local v6, "targetPos":I
    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v9, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/rong/imkit/model/UIConversation;

    .line 688
    .local v8, "tempUIConversationFrom":Lio/rong/imkit/model/UIConversation;
    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v9, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->remove(I)V

    .line 689
    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v9, v8, v6}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 690
    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v9}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 693
    .end local v1    # "fromPos":I
    .end local v6    # "targetPos":I
    .end local v8    # "tempUIConversationFrom":Lio/rong/imkit/model/UIConversation;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/rong/imlib/model/Conversation;

    .line 694
    .local v0, "conversation":Lio/rong/imlib/model/Conversation;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 695
    .local v3, "index":I
    const/4 v9, 0x0

    invoke-static {v0, v9}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v7

    .line 696
    .local v7, "temp":Lio/rong/imkit/model/UIConversation;
    const/4 v4, 0x0

    .line 698
    .local v4, "newPosition":I
    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v9, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->remove(I)V

    .line 700
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v9}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 701
    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 702
    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v9, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v9, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v10

    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-lez v9, :cond_2

    .line 703
    add-int/lit8 v4, v4, 0x1

    .line 700
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 707
    :cond_0
    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v9, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v9, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v10

    invoke-virtual {v7}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-lez v9, :cond_2

    .line 708
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 714
    :cond_2
    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v9, v7, v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 715
    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v9}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public initFragment(Landroid/net/Uri;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 117
    const-string/jumbo v7, "type"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "type":Ljava/lang/String;
    const/4 v6, 0x0

    .line 120
    .local v6, "value":Lio/rong/imlib/model/Conversation$ConversationType;
    const-string v7, "initFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v7, 0x0

    iput-object v7, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->currentType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 124
    const/16 v7, 0x8

    new-array v2, v7, [Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v7, v2, v10

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v7, v2, v11

    const/4 v7, 0x2

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v8, v2, v7

    const/4 v7, 0x3

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v8, v2, v7

    const/4 v7, 0x4

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v8, v2, v7

    const/4 v7, 0x5

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v8, v2, v7

    const/4 v7, 0x6

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v8, v2, v7

    const/4 v7, 0x7

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v8, v2, v7

    .line 127
    .local v2, "defaultTypes":[Lio/rong/imlib/model/Conversation$ConversationType;
    move-object v0, v2

    .local v0, "arr$":[Lio/rong/imlib/model/Conversation$ConversationType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 128
    .local v1, "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 129
    iput-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->currentType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 130
    move-object v6, v1

    .line 134
    .end local v1    # "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_0
    if-eqz v6, :cond_2

    .line 135
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v7

    iget-object v8, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    new-array v9, v11, [Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Lio/rong/imkit/RongIMClientWrapper;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 139
    return-void

    .line 127
    .restart local v1    # "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unknown conversation type!!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 831
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/UriFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 111
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    if-nez v0, :cond_2

    .line 112
    new-instance v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    .line 113
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    sget v1, Lio/rong/imkit/R$layout;->rc_fr_conversationlist:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "view":Landroid/view/View;
    sget v1, Lio/rong/imkit/R$id;->rc_list:I

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/fragment/SubConversationListFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    .line 145
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 836
    const-string v0, "SubConversationListFragment"

    const-string v1, "onDestroy"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 838
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 839
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onDestroy()V

    .line 840
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Draft;)V
    .locals 6
    .param p1, "draft"    # Lio/rong/imkit/model/Draft;

    .prologue
    .line 328
    invoke-virtual {p1}, Lio/rong/imkit/model/Draft;->getType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    .line 329
    .local v1, "curType":Lio/rong/imlib/model/Conversation$ConversationType;
    if-nez v1, :cond_0

    .line 330
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "the type of the draft is unknown!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 333
    :cond_0
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Draft;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v2

    .line 335
    .local v2, "position":I
    if-ltz v2, :cond_1

    .line 336
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/UIConversation;

    .line 337
    .local v0, "conversation":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {p1}, Lio/rong/imkit/model/Draft;->getContent()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 338
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lio/rong/imkit/model/UIConversation;->setShowDraftFlag(Z)V

    .line 343
    :goto_0
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v2, v4, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 346
    .end local v0    # "conversation":Lio/rong/imkit/model/UIConversation;
    :cond_1
    return-void

    .line 340
    .restart local v0    # "conversation":Lio/rong/imkit/model/UIConversation;
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lio/rong/imkit/model/UIConversation;->setShowDraftFlag(Z)V

    .line 341
    invoke-virtual {p1}, Lio/rong/imkit/model/Draft;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/rong/imkit/model/UIConversation;->setDraft(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConversationNotificationEvent;)V
    .locals 4
    .param p1, "notificationEvent"    # Lio/rong/imkit/model/Event$ConversationNotificationEvent;

    .prologue
    .line 585
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationNotificationEvent;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationNotificationEvent;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 587
    .local v0, "originalIndex":I
    if-ltz v0, :cond_0

    .line 588
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 590
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConversationRemoveEvent;)V
    .locals 4
    .param p1, "removeEvent"    # Lio/rong/imkit/model/Event$ConversationRemoveEvent;

    .prologue
    .line 577
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 578
    .local v0, "originalIndex":I
    if-ltz v0, :cond_0

    .line 579
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->remove(I)V

    .line 580
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    .line 582
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConversationTopEvent;)V
    .locals 8
    .param p1, "setTopEvent"    # Lio/rong/imkit/model/Event$ConversationTopEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 552
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationTopEvent;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationTopEvent;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v1

    .line 554
    .local v1, "originalIndex":I
    if-ltz v1, :cond_2

    .line 555
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    .line 556
    .local v3, "temp":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v2

    .line 559
    .local v2, "originalValue":Z
    if-ne v2, v7, :cond_0

    .line 560
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/UIConversation;->setTop(Z)V

    .line 561
    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/SubConversationListFragment;->findPositionForCancleTop(I)I

    move-result v0

    .line 566
    .local v0, "newIndex":I
    :goto_0
    if-ne v1, v0, :cond_1

    .line 567
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v0, v5, v6}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 574
    :goto_1
    return-void

    .line 563
    .end local v0    # "newIndex":I
    :cond_0
    invoke-virtual {v3, v7}, Lio/rong/imkit/model/UIConversation;->setTop(Z)V

    .line 564
    invoke-virtual {p0, v3}, Lio/rong/imkit/fragment/SubConversationListFragment;->findPositionForSetTop(Lio/rong/imkit/model/UIConversation;)I

    move-result v0

    .restart local v0    # "newIndex":I
    goto :goto_0

    .line 569
    :cond_1
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 572
    .end local v0    # "newIndex":I
    .end local v2    # "originalValue":Z
    .end local v3    # "temp":Lio/rong/imkit/model/UIConversation;
    :cond_2
    new-instance v4, Ljava/lang/IllegalAccessException;

    const-string/jumbo v5, "the item has already been deleted!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConversationUnreadEvent;)V
    .locals 5
    .param p1, "unreadEvent"    # Lio/rong/imkit/model/Event$ConversationUnreadEvent;

    .prologue
    .line 542
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationUnreadEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationUnreadEvent;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 544
    .local v0, "targetIndex":I
    if-ltz v0, :cond_0

    .line 545
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v2, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/UIConversation;

    .line 546
    .local v1, "temp":Lio/rong/imkit/model/UIConversation;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 547
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v3, v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 549
    .end local v1    # "temp":Lio/rong/imkit/model/UIConversation;
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$GroupUserInfoEvent;)V
    .locals 15
    .param p1, "event"    # Lio/rong/imkit/model/Event$GroupUserInfoEvent;

    .prologue
    .line 369
    const-string v11, "onEvent"

    const-string/jumbo v12, "update GroupUserInfoEvent"

    invoke-static {p0, v11, v12}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/Event$GroupUserInfoEvent;->getUserInfo()Lio/rong/imkit/model/GroupUserInfo;

    move-result-object v10

    .line 371
    .local v10, "userInfo":Lio/rong/imkit/model/GroupUserInfo;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    .line 417
    :cond_0
    return-void

    .line 375
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    .line 376
    .local v1, "context":Lio/rong/imkit/RongContext;
    if-eqz v1, :cond_0

    .line 380
    iget-object v11, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v11}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v2

    .line 381
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 382
    iget-object v11, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v11, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/rong/imkit/model/UIConversation;

    .line 383
    .local v9, "uiConversation":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, "type":Ljava/lang/String;
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    .line 385
    .local v5, "messageContent":Lio/rong/imlib/model/MessageContent;
    if-nez v5, :cond_3

    .line 381
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v1, v11}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v7

    .line 389
    .local v7, "provider":Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    if-eqz v7, :cond_2

    .line 392
    invoke-virtual {v7, v5}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v6

    .line 393
    .local v6, "messageData":Landroid/text/Spannable;
    if-eqz v6, :cond_2

    .line 398
    sget-object v11, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v11}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationSenderId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 400
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 402
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v11

    instance-of v11, v11, Lio/rong/message/VoiceMessage;

    if-eqz v11, :cond_4

    .line 403
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v11

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v12

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lio/rong/imkit/RongIMClientWrapper;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v4

    .line 405
    .local v4, "isListened":Z
    if-eqz v4, :cond_5

    .line 406
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v12

    invoke-virtual {v12}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lio/rong/imkit/R$color;->rc_text_color_secondary:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v12, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-interface {v6, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 411
    .end local v4    # "isListened":Z
    :cond_4
    :goto_2
    invoke-virtual {v10}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lio/rong/imkit/model/UIConversation;->addNickname(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v10}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 413
    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 414
    iget-object v11, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v12, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v13, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v13}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int v13, v3, v13

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v11, v3, v12, v13}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_1

    .line 408
    .restart local v4    # "isListened":Z
    :cond_5
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v12

    invoke-virtual {v12}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lio/rong/imkit/R$color;->rc_voice_color:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v12, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-interface {v6, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$MessageDeleteEvent;)V
    .locals 8
    .param p1, "event"    # Lio/rong/imkit/model/Event$MessageDeleteEvent;

    .prologue
    .line 606
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v0

    .line 607
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 608
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageDeleteEvent;->getMessageIds()Ljava/util/List;

    move-result-object v4

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getLatestMessageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    move v2, v1

    .line 610
    .local v2, "index":I
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/fragment/SubConversationListFragment$3;

    invoke-direct {v4, p0, v2}, Lio/rong/imkit/fragment/SubConversationListFragment$3;-><init>(Lio/rong/imkit/fragment/SubConversationListFragment;I)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 607
    .end local v2    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    :cond_1
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$MessageListenedEvent;)V
    .locals 9
    .param p1, "event"    # Lio/rong/imkit/model/Event$MessageListenedEvent;

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x0

    .line 655
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageListenedEvent;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageListenedEvent;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v2

    .line 657
    .local v2, "originalIndex":I
    if-ltz v2, :cond_1

    .line 658
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v4, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    .line 659
    .local v3, "temp":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getLatestMessageId()I

    move-result v4

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageListenedEvent;->getLatestMessageId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 660
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v4

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v0

    .line 661
    .local v0, "content":Landroid/text/Spannable;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageListenedEvent;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageListenedEvent;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lio/rong/imkit/RongIMClientWrapper;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v1

    .line 662
    .local v1, "isListened":Z
    if-eqz v1, :cond_2

    .line 663
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$color;->rc_text_color_secondary:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v0, v4, v7, v5, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 667
    :goto_0
    invoke-virtual {v3, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 669
    .end local v0    # "content":Landroid/text/Spannable;
    .end local v1    # "isListened":Z
    :cond_0
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v2, v5, v6}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 671
    .end local v3    # "temp":Lio/rong/imkit/model/UIConversation;
    :cond_1
    return-void

    .line 665
    .restart local v0    # "content":Landroid/text/Spannable;
    .restart local v1    # "isListened":Z
    .restart local v3    # "temp":Lio/rong/imkit/model/UIConversation;
    :cond_2
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$color;->rc_voice_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v0, v4, v7, v5, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$MessagesClearEvent;)V
    .locals 7
    .param p1, "clearMessagesEvent"    # Lio/rong/imkit/model/Event$MessagesClearEvent;

    .prologue
    const/4 v6, 0x0

    .line 593
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 595
    .local v0, "originalIndex":I
    if-eqz p1, :cond_0

    if-ltz v0, :cond_0

    .line 596
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/rong/imlib/RongIMClient;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v1

    .line 597
    .local v1, "temp":Lio/rong/imlib/model/Conversation;
    invoke-static {v1, v6}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v2

    .line 598
    .local v2, "uiConversation":Lio/rong/imkit/model/UIConversation;
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->remove(I)V

    .line 599
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-static {v1, v6}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v4

    invoke-virtual {p0, v2}, Lio/rong/imkit/fragment/SubConversationListFragment;->findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 600
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    .line 603
    .end local v1    # "temp":Lio/rong/imlib/model/Conversation;
    .end local v2    # "uiConversation":Lio/rong/imkit/model/UIConversation;
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;)V
    .locals 4
    .param p1, "sendErrorEvent"    # Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;

    .prologue
    .line 628
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 630
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 631
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/UIConversation;

    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v1, v2}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 632
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 634
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$OnReceiveMessageEvent;)V
    .locals 1
    .param p1, "onReceiveMessageEvent"    # Lio/rong/imkit/model/Event$OnReceiveMessageEvent;

    .prologue
    .line 293
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/SubConversationListFragment;->onEventMainThread(Lio/rong/imlib/model/Message;)V

    .line 294
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$QuitDiscussionEvent;)V
    .locals 4
    .param p1, "event"    # Lio/rong/imkit/model/Event$QuitDiscussionEvent;

    .prologue
    .line 637
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$QuitDiscussionEvent;->getDiscussionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 639
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 640
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->remove(I)V

    .line 641
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    .line 643
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$QuitGroupEvent;)V
    .locals 4
    .param p1, "event"    # Lio/rong/imkit/model/Event$QuitGroupEvent;

    .prologue
    .line 646
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$QuitGroupEvent;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 648
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 649
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->remove(I)V

    .line 650
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    .line 652
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V
    .locals 2
    .param p1, "status"    # Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    .prologue
    .line 492
    const-string v0, "ConnectionStatus"

    invoke-virtual {p1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/fragment/SubConversationListFragment$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/fragment/SubConversationListFragment$2;-><init>(Lio/rong/imkit/fragment/SubConversationListFragment;Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 512
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/model/Discussion;)V
    .locals 7
    .param p1, "discussion"    # Lio/rong/imlib/model/Discussion;

    .prologue
    .line 515
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v0

    .line 517
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 518
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v4, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    .line 519
    .local v3, "temp":Lio/rong/imkit/model/UIConversation;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 520
    .local v1, "gatherState":Z
    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 521
    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 522
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v2, v5, v6}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 526
    .end local v1    # "gatherState":Z
    .end local v3    # "temp":Lio/rong/imkit/model/UIConversation;
    :cond_0
    return-void

    .line 517
    .restart local v1    # "gatherState":Z
    .restart local v3    # "temp":Lio/rong/imkit/model/UIConversation;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/model/Group;)V
    .locals 6
    .param p1, "groupInfo"    # Lio/rong/imlib/model/Group;

    .prologue
    .line 351
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v0

    .line 353
    .local v0, "count":I
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 366
    :cond_0
    return-void

    .line 357
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 358
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    .line 359
    .local v2, "temp":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 360
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getPortraitUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 362
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getPortraitUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    .line 363
    :cond_2
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v4, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 357
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/model/Message;)V
    .locals 13
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    const/4 v12, 0x4

    .line 236
    const-string v8, "onEventMainThread"

    const-string v9, "Message"

    invoke-static {p0, v8, v9}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v8, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v9

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v5

    .line 240
    .local v5, "originalIndex":I
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v8

    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->currentType:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v8, v9}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const/4 v6, 0x0

    .line 246
    .local v6, "readRec":Z
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lio/rong/imkit/R$bool;->rc_read_receipt:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 251
    :goto_1
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "RC:ReadNtf"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 252
    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    .line 253
    if-ltz v5, :cond_0

    .line 254
    iget-object v8, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v8, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/UIConversation;

    .line 255
    .local v1, "conv":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    check-cast v0, Lio/rong/message/ReadReceiptMessage;

    .line 257
    .local v0, "content":Lio/rong/message/ReadReceiptMessage;
    invoke-virtual {v0}, Lio/rong/message/ReadReceiptMessage;->getLastMessageSendTime()J

    move-result-wide v8

    invoke-virtual {v1}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 258
    sget-object v8, Lio/rong/imlib/model/Message$SentStatus;->READ:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v1, v8}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 259
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v12, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 247
    .end local v0    # "content":Lio/rong/message/ReadReceiptMessage;
    .end local v1    # "conv":Lio/rong/imkit/model/UIConversation;
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v8, "onEventMainThread"

    const-string v9, "rc_read_receipt not configure in rc_config.xml"

    invoke-static {p0, v8, v9}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    .line 266
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    const/4 v7, 0x0

    .line 268
    .local v7, "uiConversation":Lio/rong/imkit/model/UIConversation;
    if-ltz v5, :cond_4

    .line 269
    invoke-direct {p0, p1, v5}, Lio/rong/imkit/fragment/SubConversationListFragment;->makeUiConversation(Lio/rong/imlib/model/Message;I)Lio/rong/imkit/model/UIConversation;

    move-result-object v7

    .line 271
    invoke-virtual {p0, v7}, Lio/rong/imkit/fragment/SubConversationListFragment;->findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;)I

    move-result v4

    .line 272
    .local v4, "newPosition":I
    if-ne v4, v5, :cond_3

    .line 273
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 274
    .local v3, "msg":Landroid/os/Message;
    iput v12, v3, Landroid/os/Message;->what:I

    .line 275
    iget-object v8, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 277
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v12, v9}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 278
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 280
    .end local v3    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v8, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v8, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->remove(I)V

    .line 281
    iget-object v8, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v8, v7, v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 282
    iget-object v8, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v8}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 286
    .end local v4    # "newPosition":I
    :cond_4
    const/4 v8, 0x0

    invoke-static {p1, v8}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Message;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v7

    .line 287
    iget-object v8, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p0, v7}, Lio/rong/imkit/fragment/SubConversationListFragment;->findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;)I

    move-result v9

    invoke-virtual {v8, v7, v9}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 288
    iget-object v8, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v8}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/model/MessageContent;)V
    .locals 10
    .param p1, "content"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    const/16 v9, 0x21

    const/4 v8, 0x0

    .line 298
    const-string v5, "onEventBackgroundThread::MessageContent"

    const-string v6, "MessageContent"

    invoke-static {p0, v5, v6}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .local v0, "index":I
    :goto_0
    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 301
    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v5, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/model/UIConversation;

    .line 302
    .local v4, "tempUIConversation":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v4}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 303
    invoke-virtual {v4, p1}, Lio/rong/imkit/model/UIConversation;->setMessageContent(Lio/rong/imlib/model/MessageContent;)V

    .line 305
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v5

    invoke-virtual {v5, p1}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v2

    .line 307
    .local v2, "messageData":Landroid/text/Spannable;
    invoke-virtual {v4}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    instance-of v5, v5, Lio/rong/message/VoiceMessage;

    if-eqz v5, :cond_0

    .line 308
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v5

    invoke-virtual {v4}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v4}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/rong/imkit/RongIMClientWrapper;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v1

    .line 310
    .local v1, "isListened":Z
    if-eqz v1, :cond_2

    .line 311
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$color;->rc_text_color_secondary:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v6

    invoke-interface {v2, v5, v8, v6, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 316
    .end local v1    # "isListened":Z
    :cond_0
    :goto_1
    invoke-virtual {v4, v2}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 317
    invoke-virtual {v4, v8}, Lio/rong/imkit/model/UIConversation;->setShowDraftFlag(Z)V

    .line 319
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 320
    .local v3, "msg":Landroid/os/Message;
    const/4 v5, 0x4

    iput v5, v3, Landroid/os/Message;->what:I

    .line 321
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 322
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    .end local v2    # "messageData":Landroid/text/Spannable;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 313
    .restart local v1    # "isListened":Z
    .restart local v2    # "messageData":Landroid/text/Spannable;
    :cond_2
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$color;->rc_voice_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v6

    invoke-interface {v2, v5, v8, v6, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 325
    .end local v1    # "isListened":Z
    .end local v2    # "messageData":Landroid/text/Spannable;
    .end local v4    # "tempUIConversation":Lio/rong/imkit/model/UIConversation;
    :cond_3
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 5
    .param p1, "accountInfo"    # Lio/rong/imlib/model/PublicServiceProfile;

    .prologue
    .line 529
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v0

    .line 531
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 532
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v2, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v2, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    .line 534
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v2, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 535
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v3, v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 539
    :cond_0
    return-void

    .line 531
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/model/UserInfo;)V
    .locals 14
    .param p1, "userInfo"    # Lio/rong/imlib/model/UserInfo;

    .prologue
    .line 421
    const-string v10, "onEvent"

    const-string/jumbo v11, "update userInfo"

    invoke-static {p0, v10, v11}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    .line 488
    :cond_0
    return-void

    .line 426
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    .line 427
    .local v1, "context":Lio/rong/imkit/RongContext;
    if-eqz v1, :cond_0

    .line 431
    iget-object v10, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v10}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v2

    .line 432
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 433
    iget-object v10, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v10, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/rong/imkit/model/UIConversation;

    .line 434
    .local v9, "uiConversation":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v8

    .line 435
    .local v8, "type":Ljava/lang/String;
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    .line 436
    .local v5, "messageContent":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/model/UIConversation;->hasNickname(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 432
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 439
    :cond_3
    if-eqz v5, :cond_2

    .line 442
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v1, v10}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v7

    .line 443
    .local v7, "provider":Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    if-eqz v7, :cond_2

    .line 446
    invoke-virtual {v7, v5}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v6

    .line 447
    .local v6, "messageData":Landroid/text/Spannable;
    if-eqz v6, :cond_2

    .line 452
    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_4
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationSenderId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 455
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 456
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    instance-of v10, v10, Lio/rong/message/VoiceMessage;

    if-eqz v10, :cond_5

    .line 457
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v10

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v11

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lio/rong/imkit/RongIMClientWrapper;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v4

    .line 459
    .local v4, "isListened":Z
    if-eqz v4, :cond_7

    .line 460
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

    .line 465
    .end local v4    # "isListened":Z
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 466
    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 486
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_6
    :goto_3
    iget-object v10, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v11, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v12, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v12}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v12

    sub-int v12, v3, v12

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    iget-object v12, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v10, v3, v11, v12}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_1

    .line 462
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v4    # "isListened":Z
    :cond_7
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

    .line 467
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v4    # "isListened":Z
    :cond_8
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 468
    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 469
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    goto :goto_3

    .line 471
    :cond_9
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 472
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    instance-of v10, v10, Lio/rong/message/VoiceMessage;

    if-eqz v10, :cond_a

    .line 473
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v10

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v11

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lio/rong/imkit/RongIMClientWrapper;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v4

    .line 475
    .restart local v4    # "isListened":Z
    if-eqz v4, :cond_b

    .line 476
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

    .line 481
    .end local v4    # "isListened":Z
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 482
    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 483
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    goto/16 :goto_3

    .line 478
    .restart local v4    # "isListened":Z
    :cond_b
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

    goto :goto_4
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
    .line 723
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, p3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    .line 725
    .local v2, "uiconversation":Lio/rong/imkit/model/UIConversation;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 726
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    move-result-object v3

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-interface {v3, v4, p2, v2}, Lio/rong/imkit/RongIM$ConversationListBehaviorListener;->onConversationClick(Landroid/content/Context;Landroid/view/View;Lio/rong/imkit/model/UIConversation;)Z

    move-result v0

    .line 727
    .local v0, "isDefault":Z
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 735
    .end local v0    # "isDefault":Z
    :goto_0
    return-void

    .line 731
    :cond_0
    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    .line 732
    .local v1, "type":Lio/rong/imlib/model/Conversation$ConversationType;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 733
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getUIConversationTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v1, v5, v6}, Lio/rong/imkit/RongIM;->startConversation(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 739
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v4, p3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    .line 740
    .local v3, "uiConversation":Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTitle()Ljava/lang/String;

    move-result-object v2

    .line 742
    .local v2, "title":Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 743
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    move-result-object v4

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-interface {v4, v5, p2, v3}, Lio/rong/imkit/RongIM$ConversationListBehaviorListener;->onConversationLongClick(Landroid/content/Context;Landroid/view/View;Lio/rong/imkit/model/UIConversation;)Z

    move-result v1

    .line 744
    .local v1, "isDealt":Z
    if-eqz v1, :cond_0

    .line 752
    .end local v1    # "isDealt":Z
    :goto_0
    return v6

    .line 748
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 749
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 751
    invoke-direct {p0, v3}, Lio/rong/imkit/fragment/SubConversationListFragment;->buildMultiDialog(Lio/rong/imkit/model/UIConversation;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 844
    const-string v0, "SubConversationListFragment"

    const-string v1, "onPause"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onPause()V

    .line 846
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 158
    const-string v1, "SubConversationListFragment"

    const-string v2, "onResume"

    invoke-static {p0, v1, v2}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onResume()V

    .line 160
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v0

    .line 161
    .local v0, "status":Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_network_unavailable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/SubConversationListFragment;->showNotification(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongIMClientWrapper;->reconnect(Lio/rong/imlib/RongIMClient$ConnectCallback;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->KICKED_OFFLINE_BY_OTHER_CLIENT:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_tick:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/SubConversationListFragment;->showNotification(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    :cond_2
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->hiddenNotification()V

    goto :goto_0

    .line 168
    :cond_3
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 169
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_disconnect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/SubConversationListFragment;->showNotification(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :cond_4
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTING:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_connecting:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/SubConversationListFragment;->showNotification(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 153
    invoke-super {p0, p1, p2}, Lio/rong/imkit/fragment/UriFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method public setAdapter(Lio/rong/imkit/widget/adapter/SubConversationListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    .prologue
    .line 883
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->clear()V

    .line 885
    :cond_0
    iput-object p1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    .line 886
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 887
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 888
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/SubConversationListFragment;->initFragment(Landroid/net/Uri;)V

    .line 890
    :cond_1
    return-void
.end method
