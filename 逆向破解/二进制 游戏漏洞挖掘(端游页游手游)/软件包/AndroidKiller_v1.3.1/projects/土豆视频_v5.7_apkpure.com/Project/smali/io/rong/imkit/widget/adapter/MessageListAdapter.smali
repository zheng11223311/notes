.class public Lio/rong/imkit/widget/adapter/MessageListAdapter;
.super Lio/rong/imkit/widget/adapter/BaseAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/adapter/MessageListAdapter$OnItemHandlerListener;,
        Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/adapter/BaseAdapter",
        "<",
        "Lio/rong/imkit/model/UIMessage;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field mInflater:Landroid/view/LayoutInflater;

.field mOnItemHandlerListener:Lio/rong/imkit/widget/adapter/MessageListAdapter$OnItemHandlerListener;

.field subView:Landroid/view/View;

.field private timeGone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Lio/rong/imkit/widget/adapter/BaseAdapter;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->timeGone:Z

    .line 67
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_def_msg_portrait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    return-void
.end method

.method private final setGravity(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "gravity"    # I

    .prologue
    .line 509
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 510
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 511
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILio/rong/imkit/model/UIMessage;)V
    .locals 24
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "data"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;

    .line 126
    .local v6, "holder":Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;
    const/4 v12, 0x0

    .line 128
    .local v12, "provider":Lio/rong/imkit/widget/provider/IContainerItemProvider;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    if-eqz v19, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 129
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v12

    .line 130
    if-nez v12, :cond_0

    .line 131
    const-string v19, "MessageListAdapter"

    const-string v20, "bindView provider is null !"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    :goto_0
    const/16 v18, 0x0

    .line 139
    .local v18, "view":Landroid/view/View;
    if-eqz v12, :cond_3

    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 140
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lio/rong/imkit/widget/ProviderContainerView;->inflate(Lio/rong/imkit/widget/provider/IContainerItemProvider;)Landroid/view/View;

    move-result-object v18

    .line 141
    move-object/from16 v0, v18

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v12, v0, v1, v2}, Lio/rong/imkit/widget/provider/IContainerItemProvider;->bindView(Landroid/view/View;ILandroid/os/Parcelable;)V

    .line 146
    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/rong/imkit/widget/adapter/MessageListAdapter;->subView:Landroid/view/View;

    .line 147
    if-nez p3, :cond_4

    .line 506
    :cond_1
    :goto_2
    return-void

    .line 134
    .end local v18    # "view":Landroid/view/View;
    :cond_2
    const-string v19, "MessageListAdapter"

    const-string v20, "Message is null !"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    .restart local v18    # "view":Landroid/view/View;
    :cond_3
    const-string v19, "MessageListAdapter"

    const-string v20, "bindView provider is null !!"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 150
    :cond_4
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/RongContext;->getMessageProviderTag(Ljava/lang/Class;)Lio/rong/imkit/model/ProviderTag;

    move-result-object v16

    .line 152
    .local v16, "tag":Lio/rong/imkit/model/ProviderTag;
    invoke-interface/range {v16 .. v16}, Lio/rong/imkit/model/ProviderTag;->hide()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 153
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/ProviderContainerView;->setVisibility(I)V

    .line 154
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 157
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 162
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v19

    sget-object v20, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 164
    invoke-interface/range {v16 .. v16}, Lio/rong/imkit/model/ProviderTag;->showPortrait()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 165
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 166
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 172
    :goto_4
    invoke-interface/range {v16 .. v16}, Lio/rong/imkit/model/ProviderTag;->centerInHorizontal()Z

    move-result v19

    if-nez v19, :cond_d

    .line 173
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->setGravity(Landroid/view/View;I)V

    .line 174
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/widget/ProviderContainerView;->containerViewRight()V

    .line 175
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    .line 176
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 177
    .local v8, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v19, 0x2d

    move/from16 v0, v19

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 178
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .end local v8    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_5
    const/4 v14, 0x0

    .line 189
    .local v14, "readRec":Z
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lio/rong/imkit/R$bool;->rc_read_receipt:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 195
    :goto_6
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v19

    sget-object v20, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 196
    invoke-interface/range {v16 .. v16}, Lio/rong/imkit/model/ProviderTag;->showProgress()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 197
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 201
    :goto_7
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    :goto_8
    invoke-interface/range {v16 .. v16}, Lio/rong/imkit/model/ProviderTag;->showPortrait()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 222
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :goto_9
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v17

    .line 227
    .local v17, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_6

    .line 228
    :cond_5
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/RongContext;->getUserInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    check-cast v17, Lio/rong/imlib/model/UserInfo;

    .line 229
    .restart local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_6
    if-nez v17, :cond_14

    .line 230
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :goto_a
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    new-instance v20, Lio/rong/imkit/widget/adapter/MessageListAdapter$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter$1;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    new-instance v20, Lio/rong/imkit/widget/adapter/MessageListAdapter$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter$2;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 270
    invoke-interface/range {v16 .. v16}, Lio/rong/imkit/model/ProviderTag;->showWarning()Z

    move-result v19

    if-nez v19, :cond_7

    .line 271
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    .end local v14    # "readRec":Z
    .end local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_7
    :goto_b
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    new-instance v20, Lio/rong/imkit/widget/adapter/MessageListAdapter$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter$4;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 376
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->getVisibility()I

    move-result v19

    if-nez v19, :cond_29

    .line 378
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v19

    sget-object v20, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v19 .. v20}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v19

    sget-object v20, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v19 .. v20}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_24

    :cond_8
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_24

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v19

    sget-object v20, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual/range {v19 .. v20}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 382
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v7

    .line 383
    .local v7, "info":Lio/rong/imlib/model/UserInfo;
    const/4 v13, 0x0

    .line 384
    .local v13, "publicServiceProfile":Lio/rong/imlib/model/PublicServiceProfile;
    const/4 v10, 0x0

    .line 385
    .local v10, "portrait":Landroid/net/Uri;
    if-nez v7, :cond_22

    .line 386
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v9

    .line 387
    .local v9, "mKey":Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual {v9}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/RongContext;->getPublicServiceInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v13

    .line 388
    invoke-virtual {v13}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v10

    .line 393
    .end local v9    # "mKey":Lio/rong/imkit/model/ConversationKey;
    :goto_c
    if-eqz v10, :cond_23

    .line 394
    new-instance v15, Lcom/sea_monster/resource/Resource;

    invoke-direct {v15, v10}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    .line 395
    .local v15, "resource":Lcom/sea_monster/resource/Resource;
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    .line 450
    .end local v7    # "info":Lio/rong/imlib/model/UserInfo;
    .end local v10    # "portrait":Landroid/net/Uri;
    .end local v13    # "publicServiceProfile":Lio/rong/imlib/model/PublicServiceProfile;
    .end local v15    # "resource":Lcom/sea_monster/resource/Resource;
    :cond_9
    :goto_d
    if-eqz v18, :cond_a

    .line 451
    new-instance v19, Lio/rong/imkit/widget/adapter/MessageListAdapter$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter$5;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;I)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    new-instance v19, Lio/rong/imkit/widget/adapter/MessageListAdapter$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter$6;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;I)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 479
    :cond_a
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    new-instance v20, Lio/rong/imkit/widget/adapter/MessageListAdapter$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter$7;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;ILio/rong/imkit/model/UIMessage;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    invoke-interface/range {v16 .. v16}, Lio/rong/imkit/model/ProviderTag;->hide()Z

    move-result v19

    if-eqz v19, :cond_32

    .line 488
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 159
    :cond_b
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/ProviderContainerView;->setVisibility(I)V

    goto/16 :goto_3

    .line 168
    :cond_c
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 169
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 180
    :cond_d
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->setGravity(Landroid/view/View;I)V

    .line 181
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/widget/ProviderContainerView;->containerViewCenter()V

    .line 182
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    .line 183
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/ProviderContainerView;->setBackgroundColor(I)V

    goto/16 :goto_5

    .line 190
    .restart local v14    # "readRec":Z
    :catch_0
    move-exception v4

    .line 191
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v19, "bindView"

    const-string v20, "rc_read_receipt not configure in rc_config.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v4}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_6

    .line 199
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_e
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_7

    .line 203
    :cond_f
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v19

    sget-object v20, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 204
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 205
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 207
    :cond_10
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v19

    sget-object v20, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 208
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 209
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 211
    :cond_11
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_12

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v19

    sget-object v20, Lio/rong/imlib/model/Message$SentStatus;->READ:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 212
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 213
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 216
    :cond_12
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 217
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 224
    :cond_13
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 232
    .restart local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_14
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 276
    .end local v14    # "readRec":Z
    .end local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_15
    invoke-interface/range {v16 .. v16}, Lio/rong/imkit/model/ProviderTag;->showPortrait()Z

    move-result v19

    if-eqz v19, :cond_17

    .line 277
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 278
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 284
    :goto_e
    invoke-interface/range {v16 .. v16}, Lio/rong/imkit/model/ProviderTag;->centerInHorizontal()Z

    move-result v19

    if-nez v19, :cond_18

    .line 285
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->setGravity(Landroid/view/View;I)V

    .line 286
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/widget/ProviderContainerView;->containerViewLeft()V

    .line 287
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    .line 288
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 289
    .restart local v8    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v19, 0x2d

    move/from16 v0, v19

    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 298
    .end local v8    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_f
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 299
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v19

    sget-object v20, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_16

    invoke-interface/range {v16 .. v16}, Lio/rong/imkit/model/ProviderTag;->showPortrait()Z

    move-result v19

    if-eqz v19, :cond_16

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v19

    sget-object v20, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_16

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v19

    sget-object v20, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 309
    :cond_16
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    :goto_10
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    new-instance v20, Lio/rong/imkit/widget/adapter/MessageListAdapter$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter$3;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_b

    .line 280
    :cond_17
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    .line 281
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 292
    :cond_18
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->layout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->setGravity(Landroid/view/View;I)V

    .line 293
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/widget/ProviderContainerView;->containerViewCenter()V

    .line 294
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    .line 295
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/ProviderContainerView;->setBackgroundColor(I)V

    goto/16 :goto_f

    .line 312
    :cond_19
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v19

    sget-object v20, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1e

    .line 313
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lio/rong/imkit/RongContext;->getGroupUserInfoFromCache(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;

    move-result-object v5

    .line 314
    .local v5, "groupUserInfo":Lio/rong/imkit/model/GroupUserInfo;
    if-eqz v5, :cond_1a

    .line 315
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 317
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v17

    .line 318
    .restart local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v17, :cond_1b

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_1c

    .line 319
    :cond_1b
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/RongContext;->getUserInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    check-cast v17, Lio/rong/imlib/model/UserInfo;

    .line 320
    .restart local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_1c
    if-nez v17, :cond_1d

    .line 321
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 323
    :cond_1d
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 326
    .end local v5    # "groupUserInfo":Lio/rong/imkit/model/GroupUserInfo;
    .end local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_1e
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v17

    .line 327
    .restart local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v17, :cond_1f

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_20

    .line 328
    :cond_1f
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/RongContext;->getUserInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    check-cast v17, Lio/rong/imlib/model/UserInfo;

    .line 329
    .restart local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_20
    if-nez v17, :cond_21

    .line 330
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 332
    :cond_21
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 390
    .end local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    .restart local v7    # "info":Lio/rong/imlib/model/UserInfo;
    .restart local v10    # "portrait":Landroid/net/Uri;
    .restart local v13    # "publicServiceProfile":Lio/rong/imlib/model/PublicServiceProfile;
    :cond_22
    invoke-virtual {v7}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v10

    goto/16 :goto_c

    .line 397
    :cond_23
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    goto/16 :goto_d

    .line 399
    .end local v7    # "info":Lio/rong/imlib/model/UserInfo;
    .end local v10    # "portrait":Landroid/net/Uri;
    .end local v13    # "publicServiceProfile":Lio/rong/imlib/model/PublicServiceProfile;
    :cond_24
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_28

    .line 400
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v17

    .line 401
    .restart local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v17, :cond_25

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_26

    .line 402
    :cond_25
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v17

    .line 404
    :cond_26
    if-eqz v17, :cond_27

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v19

    if-eqz v19, :cond_27

    .line 405
    new-instance v15, Lcom/sea_monster/resource/Resource;

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    .line 406
    .restart local v15    # "resource":Lcom/sea_monster/resource/Resource;
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    goto/16 :goto_d

    .line 408
    .end local v15    # "resource":Lcom/sea_monster/resource/Resource;
    :cond_27
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    goto/16 :goto_d

    .line 411
    .end local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_28
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    goto/16 :goto_d

    .line 413
    :cond_29
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/widget/AsyncImageView;->getVisibility()I

    move-result v19

    if-nez v19, :cond_9

    .line 414
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v19

    sget-object v20, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v19 .. v20}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2a

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v19

    sget-object v20, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v19 .. v20}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d

    :cond_2a
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2d

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v19

    sget-object v20, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual/range {v19 .. v20}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d

    .line 418
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v7

    .line 419
    .restart local v7    # "info":Lio/rong/imlib/model/UserInfo;
    const/4 v13, 0x0

    .line 420
    .restart local v13    # "publicServiceProfile":Lio/rong/imlib/model/PublicServiceProfile;
    const/4 v10, 0x0

    .line 421
    .restart local v10    # "portrait":Landroid/net/Uri;
    if-nez v7, :cond_2b

    .line 422
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v9

    .line 423
    .restart local v9    # "mKey":Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual {v9}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/RongContext;->getPublicServiceInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v13

    .line 424
    invoke-virtual {v13}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v10

    .line 428
    .end local v9    # "mKey":Lio/rong/imkit/model/ConversationKey;
    :goto_11
    if-eqz v10, :cond_2c

    .line 429
    new-instance v15, Lcom/sea_monster/resource/Resource;

    invoke-direct {v15, v10}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    .line 430
    .restart local v15    # "resource":Lcom/sea_monster/resource/Resource;
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    goto/16 :goto_d

    .line 426
    .end local v15    # "resource":Lcom/sea_monster/resource/Resource;
    :cond_2b
    invoke-virtual {v7}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v10

    goto :goto_11

    .line 432
    :cond_2c
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    goto/16 :goto_d

    .line 434
    .end local v7    # "info":Lio/rong/imlib/model/UserInfo;
    .end local v10    # "portrait":Landroid/net/Uri;
    .end local v13    # "publicServiceProfile":Lio/rong/imlib/model/PublicServiceProfile;
    :cond_2d
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_31

    .line 435
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v17

    .line 436
    .restart local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    if-eqz v17, :cond_2e

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_2f

    .line 437
    :cond_2e
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v17

    .line 439
    :cond_2f
    if-eqz v17, :cond_30

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v19

    if-eqz v19, :cond_30

    .line 440
    new-instance v15, Lcom/sea_monster/resource/Resource;

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    .line 441
    .restart local v15    # "resource":Lcom/sea_monster/resource/Resource;
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    goto/16 :goto_d

    .line 443
    .end local v15    # "resource":Lcom/sea_monster/resource/Resource;
    :cond_30
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    goto/16 :goto_d

    .line 446
    .end local v17    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :cond_31
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    goto/16 :goto_d

    .line 492
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->timeGone:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 493
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lio/rong/imkit/util/TimeUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    if-nez p2, :cond_33

    .line 495
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 497
    :cond_33
    add-int/lit8 v19, p2, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/rong/imlib/model/Message;

    .line 499
    .local v11, "pre":Lio/rong/imlib/model/Message;
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v20

    invoke-virtual {v11}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v22

    sub-long v20, v20, v22

    const-wide/32 v22, 0xea60

    cmp-long v19, v20, v22

    if-lez v19, :cond_34

    .line 500
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 502
    :cond_34
    iget-object v0, v6, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method protected bridge synthetic bindView(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p3, Lio/rong/imkit/model/UIMessage;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->bindView(Landroid/view/View;ILio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Message;

    .line 83
    .local v0, "message":Lio/rong/imlib/model/Message;
    if-nez v0, :cond_0

    .line 84
    const-wide/16 v2, -0x1

    .line 85
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v1

    int-to-long v2, v1

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 90
    iget-object v2, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lio/rong/imkit/R$layout;->rc_item_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "result":Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;-><init>(Lio/rong/imkit/widget/adapter/MessageListAdapter;)V

    .line 93
    .local v0, "holder":Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_left:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->leftIconView:Lio/rong/imkit/widget/AsyncImageView;

    .line 94
    sget v2, Lio/rong/imkit/R$id;->rc_right:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->rightIconView:Lio/rong/imkit/widget/AsyncImageView;

    .line 95
    sget v2, Lio/rong/imkit/R$id;->rc_title:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 96
    sget v2, Lio/rong/imkit/R$id;->rc_content:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/ProviderContainerView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    .line 97
    sget v2, Lio/rong/imkit/R$id;->rc_layout:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->layout:Landroid/view/ViewGroup;

    .line 98
    sget v2, Lio/rong/imkit/R$id;->rc_progress:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 99
    sget v2, Lio/rong/imkit/R$id;->rc_warning:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->warning:Landroid/widget/ImageView;

    .line 100
    sget v2, Lio/rong/imkit/R$id;->rc_read_receipt:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->readReceipt:Landroid/widget/ImageView;

    .line 101
    sget v2, Lio/rong/imkit/R$id;->rc_time:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 102
    sget v2, Lio/rong/imkit/R$id;->rc_sent_status:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->sentStatus:Landroid/widget/TextView;

    .line 103
    iget-object v2, v0, Lio/rong/imkit/widget/adapter/MessageListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->timeGone:Z

    .line 109
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    return-object v1

    .line 106
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->timeGone:Z

    goto :goto_0
.end method

.method public playNextAudioIfNeed(Lio/rong/imkit/model/UIMessage;I)V
    .locals 3
    .param p1, "data"    # Lio/rong/imkit/model/UIMessage;
    .param p2, "position"    # I

    .prologue
    .line 116
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v0

    .line 117
    .local v0, "provider":Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->subView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->subView:Landroid/view/View;

    invoke-virtual {p1}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2, p1}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setOnItemHandlerListener(Lio/rong/imkit/widget/adapter/MessageListAdapter$OnItemHandlerListener;)V
    .locals 0
    .param p1, "onItemHandlerListener"    # Lio/rong/imkit/widget/adapter/MessageListAdapter$OnItemHandlerListener;

    .prologue
    .line 73
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/MessageListAdapter;->mOnItemHandlerListener:Lio/rong/imkit/widget/adapter/MessageListAdapter$OnItemHandlerListener;

    .line 74
    return-void
.end method
