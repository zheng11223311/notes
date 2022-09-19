.class public Lio/rong/imkit/fragment/MessageListFragment;
.super Lio/rong/imkit/fragment/UriFragment;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/fragment/MessageListFragment$Builder;,
        Lio/rong/imkit/fragment/MessageListFragment$ScrollRunnable;
    }
.end annotation


# static fields
.field static final DELETE_MESSAGE:I = 0xb

.field private static final LISTVIEW_SHOW_COUNT:I = 0x5

.field static final NOTIFY_LIST:I = 0x9

.field static final REFRESH_ITEM:I = 0x4

.field static final REFRESH_ITEM_READ_RECEIPT:I = 0x7

.field static final REFRESH_LIST:I = 0x3

.field static final RENDER_HISTORY:I = 0x6

.field static final RENDER_LIST:I = 0x2

.field static final REQ_HISTORY:I = 0x5

.field static final REQ_LIST:I = 0x1

.field private static final REQ_UNREAD:I = 0xc

.field static final RESET_LIST_STACK:I = 0xa


# instance fields
.field private isOnClickBtn:Z

.field isShowNewMessageState:Z

.field isShowUnreadMessageState:Z

.field private isShowWithoutConnected:Z

.field mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

.field mConversation:Lio/rong/imlib/model/Conversation;

.field mGestureDetector:Landroid/view/GestureDetector;

.field mHasMore:Z

.field mHeaderView:Landroid/view/View;

.field mIsLoading:Z

.field mLastVisiblePosition:I

.field mList:Landroid/widget/ListView;

.field mNewMessageBtn:Landroid/widget/ImageButton;

.field mNewMessageCount:I

.field mNewMessageTextView:Landroid/widget/TextView;

.field mUnreadBtn:Landroid/widget/Button;

.field mUnreadCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lio/rong/imkit/fragment/UriFragment;-><init>()V

    .line 101
    iput-boolean v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowWithoutConnected:Z

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mIsLoading:Z

    .line 288
    iput-boolean v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMore:Z

    .line 1138
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/fragment/MessageListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/fragment/MessageListFragment;

    .prologue
    .line 57
    iget-boolean v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->isOnClickBtn:Z

    return v0
.end method

.method static synthetic access$002(Lio/rong/imkit/fragment/MessageListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/rong/imkit/fragment/MessageListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lio/rong/imkit/fragment/MessageListFragment;->isOnClickBtn:Z

    return p1
.end method

.method private filterMessage(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/UIMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/UIMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "srcList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    const/4 v0, 0x0

    .line 342
    .local v0, "destList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "destList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .restart local v0    # "destList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 345
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIMessage;

    .line 346
    .local v3, "msg":Lio/rong/imkit/model/UIMessage;
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 349
    invoke-virtual {v3}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v5

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v4}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v4

    if-eq v5, v4, :cond_0

    .line 350
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 344
    .end local v3    # "msg":Lio/rong/imkit/model/UIMessage;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object v0, p1

    .line 357
    :cond_3
    return-object v0
.end method

.method private getConversation()V
    .locals 4

    .prologue
    .line 914
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/fragment/MessageListFragment$12;

    invoke-direct {v3, p0}, Lio/rong/imkit/fragment/MessageListFragment$12;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imkit/RongIMClientWrapper;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 997
    return-void
.end method

.method private resetListViewStack()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 670
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 671
    .local v1, "count":I
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 672
    .local v2, "firstView":Landroid/view/View;
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 674
    .local v3, "lastView":Landroid/view/View;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 675
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v6

    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v8

    add-int v5, v6, v8

    .line 676
    .local v5, "listViewPadding":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_1

    move v6, v7

    :goto_0
    sub-int v0, v8, v6

    .line 677
    .local v0, "childViewsHeight":I
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getBottom()I

    move-result v6

    sub-int v4, v6, v5

    .line 679
    .local v4, "listViewHeight":I
    if-ge v0, v4, :cond_2

    .line 680
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 681
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 686
    .end local v0    # "childViewsHeight":I
    .end local v4    # "listViewHeight":I
    .end local v5    # "listViewPadding":I
    :cond_0
    :goto_1
    return-void

    .line 676
    .restart local v5    # "listViewPadding":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_0

    .line 683
    .restart local v0    # "childViewsHeight":I
    .restart local v4    # "listViewHeight":I
    :cond_2
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setTranscriptMode(I)V

    goto :goto_1
.end method


# virtual methods
.method public getAdapter()Lio/rong/imkit/widget/adapter/MessageListAdapter;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 362
    const-string v2, "byron"

    const-string v3, "handle message();"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 665
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    return v2

    .line 367
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 368
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    .line 369
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_1

    .line 370
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMore:Z

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 372
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    .line 377
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->clear()V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lio/rong/imkit/fragment/MessageListFragment;->filterMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->addCollection(Ljava/util/Collection;)V

    .line 380
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_2

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 388
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 392
    const-string v2, "RENDER_LIST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mIsLoading:Z

    .line 402
    move-object/from16 v0, p0

    iget v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadCount:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 403
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x43960000    # 300.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v8, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 404
    .local v8, "animation":Landroid/view/animation/TranslateAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 405
    .local v9, "animation1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 406
    const-wide/16 v2, 0x7d0

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 407
    new-instance v20, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 408
    .local v20, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 409
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadBtn:Landroid/widget/Button;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 412
    new-instance v2, Lio/rong/imkit/fragment/MessageListFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lio/rong/imkit/fragment/MessageListFragment$7;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 374
    .end local v8    # "animation":Landroid/view/animation/TranslateAnimation;
    .end local v9    # "animation1":Landroid/view/animation/AlphaAnimation;
    .end local v20    # "set":Landroid/view/animation/AnimationSet;
    .restart local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMore:Z

    goto/16 :goto_1

    .line 384
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    goto/16 :goto_2

    .line 395
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMore:Z

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 397
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    goto/16 :goto_3

    .line 446
    :pswitch_2
    const-string v2, "MessageListFragment"

    const-string v3, "RENDER_HISTORY"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_7

    .line 449
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    .line 450
    .restart local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_4

    .line 451
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMore:Z

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 453
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    .line 459
    :goto_4
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/rong/imkit/model/UIMessage;

    .line 460
    .local v13, "item":Lio/rong/imkit/model/UIMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->add(Ljava/lang/Object;I)V

    goto :goto_5

    .line 455
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "item":Lio/rong/imkit/model/UIMessage;
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMore:Z

    goto :goto_4

    .line 463
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v12

    .line 467
    .local v12, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 469
    if-nez v12, :cond_6

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 478
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "index":I
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    :cond_6
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mIsLoading:Z

    goto/16 :goto_0

    .line 474
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMore:Z

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 476
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    goto :goto_6

    .line 481
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->clear()V

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 484
    invoke-static {}, Lio/rong/imkit/model/EmojiMessageAdapter;->getInstance()Lio/rong/imkit/model/EmojiMessageAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1e

    new-instance v6, Lio/rong/imkit/fragment/MessageListFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lio/rong/imkit/fragment/MessageListFragment$8;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/rong/imkit/model/EmojiMessageAdapter;->getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILio/rong/imlib/RongIMClient$ResultCallback;)V

    goto/16 :goto_0

    .line 498
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lio/rong/imkit/model/UIMessage;

    .line 500
    .local v17, "model":Lio/rong/imkit/model/UIMessage;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->isShowNewMessageState:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_9

    sget-object v2, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v3

    if-eq v2, v3, :cond_9

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/SystemUtils;->isAppRunningOnTop(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 504
    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_9

    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_9

    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_9

    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_9

    .line 509
    move-object/from16 v0, p0

    iget v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageCount:I

    .line 510
    move-object/from16 v0, p0

    iget v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageCount:I

    if-lez v2, :cond_8

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageBtn:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageCount:I

    const/16 v3, 0x63

    if-le v2, v3, :cond_b

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageTextView:Landroid/widget/TextView;

    const-string v3, "99+"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v14

    .line 523
    .local v14, "last":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v10

    .line 524
    .local v10, "count":I
    add-int/lit8 v2, v10, -0x1

    if-ne v14, v2, :cond_c

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 530
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 531
    add-int/lit8 v2, v10, -0x1

    if-ne v14, v2, :cond_0

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageBtn:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 517
    .end local v10    # "count":I
    .end local v14    # "last":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 526
    .restart local v10    # "count":I
    .restart local v14    # "last":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v14, v2, :cond_a

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    goto :goto_8

    .line 537
    .end local v10    # "count":I
    .end local v14    # "last":I
    .end local v17    # "model":Lio/rong/imkit/model/UIMessage;
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lio/rong/imkit/fragment/MessageListFragment;->resetListViewStack()V

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 542
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 544
    .local v19, "position":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    move/from16 v0, v19

    if-lt v0, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    move/from16 v0, v19

    if-gt v0, v2, :cond_d

    .line 545
    const-string v2, "REFRESH_ITEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v19, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move/from16 v0, v19

    invoke-virtual {v2, v0, v3, v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 549
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 553
    .end local v19    # "position":I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 555
    .local v18, "pos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    move/from16 v0, v18

    if-gt v0, v2, :cond_0

    .line 556
    const-string v2, "REFRESH_ITEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v18, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 562
    .end local v18    # "pos":I
    :pswitch_8
    const-string v2, "MessageListFragment"

    const-string v3, "REQ_HISTORY"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lio/rong/imkit/model/UIMessage;

    .line 566
    .local v16, "message":Lio/rong/imkit/model/UIMessage;
    invoke-static {}, Lio/rong/imkit/model/EmojiMessageAdapter;->getInstance()Lio/rong/imkit/model/EmojiMessageAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v5

    const/16 v6, 0x1e

    new-instance v7, Lio/rong/imkit/fragment/MessageListFragment$9;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lio/rong/imkit/fragment/MessageListFragment$9;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual/range {v2 .. v7}, Lio/rong/imkit/model/EmojiMessageAdapter;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V

    goto/16 :goto_0

    .line 581
    .end local v16    # "message":Lio/rong/imkit/model/UIMessage;
    :pswitch_9
    const-string v2, "MessageListFragment"

    const-string v3, "REQ_HISTORY"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lio/rong/imkit/model/UIMessage;

    .line 585
    .restart local v16    # "message":Lio/rong/imkit/model/UIMessage;
    invoke-static {}, Lio/rong/imkit/model/EmojiMessageAdapter;->getInstance()Lio/rong/imkit/model/EmojiMessageAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadCount:I

    add-int/lit8 v6, v6, -0x1d

    new-instance v7, Lio/rong/imkit/fragment/MessageListFragment$10;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lio/rong/imkit/fragment/MessageListFragment$10;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual/range {v2 .. v7}, Lio/rong/imkit/model/EmojiMessageAdapter;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V

    goto/16 :goto_0

    .line 624
    .end local v16    # "message":Lio/rong/imkit/model/UIMessage;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    if-eqz v2, :cond_0

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 629
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 631
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/fragment/MessageListFragment$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lio/rong/imkit/fragment/MessageListFragment$11;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_5
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method protected initFragment(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 156
    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 158
    .local v2, "type":Lio/rong/imlib/model/Conversation$ConversationType;
    const-string/jumbo v3, "targetId"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "targetId":Ljava/lang/String;
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-static {v2, v0, v1}, Lio/rong/imlib/model/Conversation;->obtain(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    .line 166
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    if-eqz v3, :cond_2

    .line 167
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/fragment/MessageListFragment$2;

    invoke-direct {v4, p0}, Lio/rong/imkit/fragment/MessageListFragment$2;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    :cond_2
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageBtn:Landroid/widget/ImageButton;

    new-instance v4, Lio/rong/imkit/fragment/MessageListFragment$3;

    invoke-direct {v4, p0}, Lio/rong/imkit/fragment/MessageListFragment$3;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v3

    if-nez v3, :cond_4

    .line 195
    :cond_3
    const-string v3, "initFragment"

    const-string v4, "Not connected yet."

    invoke-static {p0, v3, v4}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowWithoutConnected:Z

    goto :goto_0

    .line 199
    :cond_4
    invoke-direct {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getConversation()V

    .line 200
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lio/rong/imkit/RongIMClientWrapper;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1184
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/UriFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1185
    const-string v0, "MessageListFragment"

    const-string v1, "---onConfigurationChanged--"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/UriFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getUnreadMessageState()Z

    move-result v0

    iput-boolean v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowUnreadMessageState:Z

    .line 109
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getNewMessageState()Z

    move-result v0

    iput-boolean v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowNewMessageState:Z

    .line 111
    invoke-static {}, Lio/rong/imkit/model/EmojiMessageAdapter;->getInstance()Lio/rong/imkit/model/EmojiMessageAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-static {v0}, Lio/rong/imkit/model/EmojiMessageAdapter;->init(Landroid/content/Context;)V

    .line 114
    :cond_0
    new-instance v0, Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    .line 115
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lio/rong/imkit/fragment/MessageListFragment$1;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/MessageListFragment$1;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mGestureDetector:Landroid/view/GestureDetector;

    .line 149
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 205
    sget v1, Lio/rong/imkit/R$layout;->rc_fr_messagelist:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, "view":Landroid/view/View;
    sget v1, Lio/rong/imkit/R$id;->rc_unread_message_count:I

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/fragment/MessageListFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadBtn:Landroid/widget/Button;

    .line 207
    sget v1, Lio/rong/imkit/R$id;->rc_new_message_count:I

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/fragment/MessageListFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageBtn:Landroid/widget/ImageButton;

    .line 208
    sget v1, Lio/rong/imkit/R$id;->rc_new_message_number:I

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/fragment/MessageListFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageTextView:Landroid/widget/TextView;

    .line 209
    sget v1, Lio/rong/imkit/R$id;->rc_list:I

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/fragment/MessageListFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    .line 210
    sget v1, Lio/rong/imkit/R$layout;->rc_item_progress:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    .line 211
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 212
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 213
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    .line 215
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    new-instance v2, Lio/rong/imkit/fragment/MessageListFragment$4;

    invoke-direct {v2, p0}, Lio/rong/imkit/fragment/MessageListFragment$4;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->setOnItemHandlerListener(Lio/rong/imkit/widget/adapter/MessageListAdapter$OnItemHandlerListener;)V

    .line 283
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 1163
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    if-eqz v0, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1166
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imkit/RongIMClientWrapper;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1168
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1169
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onDestroy()V

    .line 1170
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConnectEvent;)V
    .locals 4
    .param p1, "event"    # Lio/rong/imkit/model/Event$ConnectEvent;

    .prologue
    .line 1000
    const-string v0, "onEventMainThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event.ConnectEvent: isListRetrieved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowWithoutConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-boolean v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowWithoutConnected:Z

    if-eqz v0, :cond_0

    .line 1002
    invoke-direct {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getConversation()V

    .line 1003
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imkit/RongIMClientWrapper;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowWithoutConnected:Z

    .line 1008
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$GroupUserInfoEvent;)V
    .locals 9
    .param p1, "event"    # Lio/rong/imkit/model/Event$GroupUserInfoEvent;

    .prologue
    .line 754
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$GroupUserInfoEvent;->getUserInfo()Lio/rong/imkit/model/GroupUserInfo;

    move-result-object v4

    .line 755
    .local v4, "userInfo":Lio/rong/imkit/model/GroupUserInfo;
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 756
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    sub-int v0, v5, v6

    .line 757
    .local v0, "first":I
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    sub-int v2, v5, v6

    .line 758
    .local v2, "last":I
    add-int/lit8 v1, v0, -0x1

    .line 760
    .local v1, "index":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_2

    if-ltz v1, :cond_2

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 761
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/model/Message;

    .line 762
    .local v3, "message":Lio/rong/imlib/model/Message;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 763
    :cond_1
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v1, v7

    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5, v1, v6, v7}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 767
    .end local v0    # "first":I
    .end local v1    # "index":I
    .end local v2    # "last":I
    .end local v3    # "message":Lio/rong/imlib/model/Message;
    :cond_2
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$MessageDeleteEvent;)V
    .locals 7
    .param p1, "deleteEvent"    # Lio/rong/imkit/model/Event$MessageDeleteEvent;

    .prologue
    .line 1072
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageDeleteEvent;->getMessageIds()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1073
    const/4 v0, 0x0

    .line 1074
    .local v0, "hasChanged":Z
    const/4 v4, 0x0

    .line 1076
    .local v4, "position":I
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageDeleteEvent;->getMessageIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v2, v5

    .line 1077
    .local v2, "item":J
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5, v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findPosition(J)I

    move-result v4

    .line 1078
    if-ltz v4, :cond_0

    .line 1079
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5, v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->remove(I)V

    .line 1080
    const/4 v0, 0x1

    goto :goto_0

    .line 1084
    .end local v2    # "item":J
    :cond_1
    if-eqz v0, :cond_2

    .line 1088
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 1089
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1095
    .end local v0    # "hasChanged":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "position":I
    :cond_2
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$MessagesClearEvent;)V
    .locals 2
    .param p1, "clearEvent"    # Lio/rong/imkit/model/Event$MessagesClearEvent;

    .prologue
    .line 1104
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getTargetId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->removeAll()V

    .line 1106
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/fragment/MessageListFragment$14;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/MessageListFragment$14;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1114
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 1116
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;)V
    .locals 1
    .param p1, "event"    # Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;

    .prologue
    .line 770
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 771
    .local v0, "msg":Lio/rong/imlib/model/Message;
    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/MessageListFragment;->onEventMainThread(Lio/rong/imlib/model/Message;)V

    .line 772
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$OnReceiveMessageEvent;)V
    .locals 1
    .param p1, "event"    # Lio/rong/imkit/model/Event$OnReceiveMessageEvent;

    .prologue
    .line 775
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/MessageListFragment;->onEventMainThread(Lio/rong/imlib/model/Message;)V

    .line 776
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;)V
    .locals 8
    .param p1, "event"    # Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    .prologue
    .line 844
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 845
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v0, v4, v5

    .line 846
    .local v0, "first":I
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v2, v4, v5

    .line 848
    .local v2, "last":I
    add-int/lit8 v1, v0, -0x1

    .line 850
    .local v1, "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_1

    if-ltz v1, :cond_1

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 851
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIMessage;

    .line 852
    .local v3, "uiMessage":Lio/rong/imkit/model/UIMessage;
    invoke-virtual {v3}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v4

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 853
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/UIMessage;->setProgress(I)V

    .line 854
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v1, v5, v6}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 856
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->getProgress()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 857
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 863
    .end local v0    # "first":I
    .end local v1    # "index":I
    .end local v2    # "last":I
    .end local v3    # "uiMessage":Lio/rong/imkit/model/UIMessage;
    :cond_1
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$PlayAudioEvent;)V
    .locals 11
    .param p1, "event"    # Lio/rong/imkit/model/Event$PlayAudioEvent;

    .prologue
    .line 796
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$PlayAudioEvent;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    .line 797
    .local v5, "messageContent":Lio/rong/imlib/model/MessageContent;
    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->isResumed()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 798
    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v8

    iget-object v9, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    sub-int v2, v8, v9

    .line 799
    .local v2, "first":I
    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v8

    iget-object v9, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    sub-int v4, v8, v9

    .line 800
    .local v4, "last":I
    move v3, v2

    .line 801
    .local v3, "index":I
    const/4 v0, 0x0

    .line 804
    .local v0, "continuously":Z
    :cond_0
    if-gt v3, v4, :cond_3

    if-ltz v3, :cond_3

    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v8}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 805
    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v8, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/rong/imkit/model/UIMessage;

    .line 806
    .local v6, "uiMessage":Lio/rong/imkit/model/UIMessage;
    invoke-virtual {v6}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 807
    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v9, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    sub-int v10, v3, v2

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v8, v3, v9, v10}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 808
    invoke-virtual {v6}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v8

    sget-object v9, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual {v8, v9}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$PlayAudioEvent;->isListened()Z

    move-result v8

    if-nez v8, :cond_1

    .line 810
    const/4 v0, 0x1

    .line 814
    :cond_1
    if-eqz v0, :cond_2

    .line 816
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lio/rong/imkit/R$bool;->rc_play_audio_continuous:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 823
    :cond_2
    :goto_0
    add-int/lit8 v3, v3, 0x1

    .line 824
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$PlayAudioEvent;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_0

    if-gt v3, v4, :cond_0

    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v8}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 825
    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v8, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "uiMessage":Lio/rong/imkit/model/UIMessage;
    check-cast v6, Lio/rong/imkit/model/UIMessage;

    .line 826
    .restart local v6    # "uiMessage":Lio/rong/imkit/model/UIMessage;
    invoke-virtual {v6}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v8

    instance-of v8, v8, Lio/rong/message/VoiceMessage;

    if-eqz v8, :cond_0

    .line 827
    invoke-virtual {v6}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v8

    sget-object v9, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual {v8, v9}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Lio/rong/imkit/model/UIMessage;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v8

    if-nez v8, :cond_0

    .line 829
    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    sub-int v9, v3, v2

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 830
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 831
    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v9, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v8, v3, v7, v9}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 832
    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v8, v6, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->playNextAudioIfNeed(Lio/rong/imkit/model/UIMessage;I)V

    .line 840
    .end local v0    # "continuously":Z
    .end local v2    # "first":I
    .end local v3    # "index":I
    .end local v4    # "last":I
    .end local v6    # "uiMessage":Lio/rong/imkit/model/UIMessage;
    .end local v7    # "view":Landroid/view/View;
    :cond_3
    return-void

    .line 817
    .restart local v0    # "continuously":Z
    .restart local v2    # "first":I
    .restart local v3    # "index":I
    .restart local v4    # "last":I
    .restart local v6    # "uiMessage":Lio/rong/imkit/model/UIMessage;
    :catch_0
    move-exception v1

    .line 818
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v8, "PlayAudioEvent"

    const-string v9, "rc_play_audio_continuous not configure in rc_config.xml"

    invoke-static {p0, v8, v9}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;)V
    .locals 1
    .param p1, "event"    # Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;

    .prologue
    .line 1098
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;->isFollow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1099
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1101
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/widget/InputView$Event;)V
    .locals 2
    .param p1, "event"    # Lio/rong/imkit/widget/InputView$Event;

    .prologue
    .line 866
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    if-nez v0, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    sget-object v0, Lio/rong/imkit/widget/InputView$Event;->ACTION:Lio/rong/imkit/widget/InputView$Event;

    if-ne p1, v0, :cond_0

    .line 870
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V
    .locals 3
    .param p1, "status"    # Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    .prologue
    .line 1049
    const-string v0, "ConnectionStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const-string v0, "ConnectionStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isResume() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->isResumed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/fragment/MessageListFragment$13;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/fragment/MessageListFragment$13;-><init>(Lio/rong/imkit/fragment/MessageListFragment;Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1069
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/model/Message;)V
    .locals 19
    .param p1, "msg"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 689
    invoke-static/range {p1 .. p1}, Lio/rong/imkit/model/UIMessage;->obtain(Lio/rong/imlib/model/Message;)Lio/rong/imkit/model/UIMessage;

    move-result-object v13

    .line 690
    .local v13, "message":Lio/rong/imkit/model/UIMessage;
    const/16 v17, 0x0

    .line 692
    .local v17, "readRec":Z
    const-string v2, "onEventBackgroundThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$bool;->rc_read_receipt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 701
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 703
    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getObjectName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RC:ReadNtf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 704
    if-eqz v17, :cond_0

    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_1

    .line 751
    :cond_0
    :goto_1
    return-void

    .line 697
    :catch_0
    move-exception v11

    .line 698
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "onEventMainThread"

    const-string v3, "rc_read_receipt not configure in rc_config.xml"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {v11}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 707
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    check-cast v10, Lio/rong/message/ReadReceiptMessage;

    .line 708
    .local v10, "content":Lio/rong/message/ReadReceiptMessage;
    invoke-virtual {v10}, Lio/rong/message/ReadReceiptMessage;->getLastMessageSendTime()J

    move-result-wide v14

    .line 709
    .local v14, "ntfTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    .local v12, "i":I
    :goto_2
    if-ltz v12, :cond_0

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2, v12}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Message$SentStatus;->READ:Lio/rong/imlib/model/Message$SentStatus;

    if-eq v2, v3, :cond_0

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2, v12}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    if-ne v2, v3, :cond_2

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2, v12}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2, v12}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v2

    cmp-long v2, v14, v2

    if-ltz v2, :cond_2

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2, v12}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIMessage;

    sget-object v3, Lio/rong/imlib/model/Message$SentStatus;->READ:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIMessage;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 716
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 709
    :cond_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 724
    .end local v10    # "content":Lio/rong/message/ReadReceiptMessage;
    .end local v12    # "i":I
    .end local v14    # "ntfTime":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findPosition(J)I

    move-result v16

    .line 725
    .local v16, "position":I
    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v2

    if-lez v2, :cond_4

    .line 726
    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v18

    .line 727
    .local v18, "status":Lio/rong/imlib/model/Message$ReceivedStatus;
    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message$ReceivedStatus;->setRead()V

    .line 728
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lio/rong/imkit/model/UIMessage;->setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V

    .line 729
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0, v4}, Lio/rong/imlib/RongIMClient;->setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 731
    .end local v18    # "status":Lio/rong/imlib/model/Message$ReceivedStatus;
    :cond_4
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_6

    .line 733
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 735
    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v2, v3, :cond_5

    .line 736
    new-instance v5, Lio/rong/message/ReadReceiptMessage;

    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v2

    invoke-direct {v5, v2, v3}, Lio/rong/message/ReadReceiptMessage;-><init>(J)V

    .line 737
    .local v5, "readRecMsg":Lio/rong/message/ReadReceiptMessage;
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v2

    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 741
    .end local v5    # "readRecMsg":Lio/rong/message/ReadReceiptMessage;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2, v13}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->add(Ljava/lang/Object;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 743
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 745
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIMessage;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIMessage;->setExtra(Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v13}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lio/rong/imkit/model/UIMessage;->setSentTime(J)V

    .line 748
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method

.method public onEventMainThread(Lio/rong/imlib/model/MessageContent;)V
    .locals 7
    .param p1, "messageContent"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 780
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 781
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v0, v3, v4

    .line 782
    .local v0, "first":I
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v2, v3, v4

    .line 784
    .local v2, "last":I
    add-int/lit8 v1, v0, -0x1

    .line 786
    .local v1, "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_1

    if-ltz v1, :cond_1

    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 787
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 788
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v1, v5

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v4, v5}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 793
    .end local v0    # "first":I
    .end local v1    # "index":I
    .end local v2    # "last":I
    :cond_1
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 8
    .param p1, "publicServiceProfile"    # Lio/rong/imlib/model/PublicServiceProfile;

    .prologue
    .line 896
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    if-eqz v4, :cond_2

    .line 897
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v0, v4, v5

    .line 898
    .local v0, "first":I
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v2, v4, v5

    .line 900
    .local v2, "last":I
    add-int/lit8 v1, v0, -0x1

    .line 902
    .local v1, "index":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_2

    if-ltz v1, :cond_2

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 904
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/model/Message;

    .line 906
    .local v3, "message":Lio/rong/imlib/model/Message;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 907
    :cond_1
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v1, v5, v6}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 911
    .end local v0    # "first":I
    .end local v1    # "index":I
    .end local v2    # "last":I
    .end local v3    # "message":Lio/rong/imlib/model/Message;
    :cond_2
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/model/UserInfo;)V
    .locals 8
    .param p1, "userInfo"    # Lio/rong/imlib/model/UserInfo;

    .prologue
    .line 876
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    .line 877
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v0, v4, v5

    .line 878
    .local v0, "first":I
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v2, v4, v5

    .line 880
    .local v2, "last":I
    add-int/lit8 v1, v0, -0x1

    .line 882
    .local v1, "index":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_2

    if-ltz v1, :cond_2

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 884
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/model/Message;

    .line 886
    .local v3, "message":Lio/rong/imlib/model/Message;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 887
    :cond_1
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v1, v5, v6}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 892
    .end local v0    # "first":I
    .end local v1    # "index":I
    .end local v2    # "last":I
    .end local v3    # "message":Lio/rong/imlib/model/Message;
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1012
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onPause()V

    .line 1013
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    sget-object v1, Lio/rong/imkit/widget/InputView$Event;->DESTROY:Lio/rong/imkit/widget/InputView$Event;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1014
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1018
    const-string v1, "byron"

    const-string v2, "onResume()....."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onResume()V

    .line 1020
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1021
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowWithoutConnected:Z

    .line 1022
    const-string v1, "onResume"

    const-string v2, "Not connected yet."

    invoke-static {p0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_1
    :goto_0
    return-void

    .line 1026
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v0

    .line 1027
    .local v0, "status":Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1028
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_network_unavailable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/MessageListFragment;->showNotification(Ljava/lang/CharSequence;)V

    .line 1029
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongIMClientWrapper;->reconnect(Lio/rong/imlib/RongIMClient$ConnectCallback;)V

    .line 1040
    :cond_3
    :goto_1
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1041
    const/4 v1, 0x0

    iput v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageCount:I

    .line 1042
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1043
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1030
    :cond_4
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->KICKED_OFFLINE_BY_OTHER_CLIENT:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1031
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_tick:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/MessageListFragment;->showNotification(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1032
    :cond_5
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1033
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->hiddenNotification()V

    goto :goto_1

    .line 1034
    :cond_6
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1035
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_disconnect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/MessageListFragment;->showNotification(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1036
    :cond_7
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTING:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1037
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_connecting:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/rong/imkit/fragment/MessageListFragment;->showNotification(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 297
    if-nez p2, :cond_0

    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mIsLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMore:Z

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mIsLoading:Z

    .line 299
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 301
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 293
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 305
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getActionBarHandler()Lio/rong/imkit/fragment/UriFragment$IActionBarHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getActionBarHandler()Lio/rong/imkit/fragment/UriFragment$IActionBarHandler;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getConversationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/rong/imkit/fragment/UriFragment$IActionBarHandler;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    new-instance v1, Lio/rong/imkit/fragment/MessageListFragment$5;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/MessageListFragment$5;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 321
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    new-instance v1, Lio/rong/imkit/fragment/MessageListFragment$6;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/MessageListFragment$6;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 331
    invoke-super {p0, p1, p2}, Lio/rong/imkit/fragment/UriFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 332
    return-void
.end method

.method public scrollToEnd()V
    .locals 2

    .prologue
    .line 1119
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1122
    :cond_0
    return-void
.end method

.method public setAdapter(Lio/rong/imkit/widget/adapter/MessageListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lio/rong/imkit/widget/adapter/MessageListAdapter;

    .prologue
    .line 1173
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->clear()V

    .line 1175
    :cond_0
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    .line 1176
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1177
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1178
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/MessageListFragment;->initFragment(Landroid/net/Uri;)V

    .line 1180
    :cond_1
    return-void
.end method
