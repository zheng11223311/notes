.class public Lcom/tudou/android/chat/ChatConversationView;
.super Lcom/tudou/android/chat/ChatBasedView;
.source "ChatConversationView.java"


# instance fields
.field private dialog:Lcom/youku/widget/TudouDialog;

.field private fragment:Lio/rong/imkit/fragment/ConversationFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tudou/android/chat/ChatConversationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tudou/android/chat/ChatConversationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/android/chat/ChatBasedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatConversationView;->initView()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/android/chat/ChatConversationView;)Lcom/youku/widget/TudouDialog;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatConversationView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tudou/android/chat/ChatConversationView;->dialog:Lcom/youku/widget/TudouDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tudou/android/chat/ChatConversationView;Lcom/youku/widget/TudouDialog;)Lcom/youku/widget/TudouDialog;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatConversationView;
    .param p1, "x1"    # Lcom/youku/widget/TudouDialog;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tudou/android/chat/ChatConversationView;->dialog:Lcom/youku/widget/TudouDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/android/chat/ChatConversationView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatConversationView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/tudou/android/chat/ChatConversationView;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/android/chat/ChatConversationView;)Lio/rong/imkit/fragment/ConversationFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatConversationView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tudou/android/chat/ChatConversationView;->fragment:Lio/rong/imkit/fragment/ConversationFragment;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatConversationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03007e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    return-void
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 15
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 105
    :try_start_0
    const-string v0, "t1.chat_function.videosynchronous"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 106
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatConversationView;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/tudou/ui/activity/DetailActivity;

    .line 107
    .local v9, "detailActivity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v9}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v8

    .line 108
    .local v8, "currentVideoInfo":Lcom/youku/player/module/VideoUrlInfo;
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatManager;->isNoRightVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    const-string v0, "\u56e0\u7248\u6743\u539f\u56e0\uff0c\u65e0\u6cd5\u53d1\u9001\u89c6\u9891\u8fdb\u5ea6"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 147
    .end local v8    # "currentVideoInfo":Lcom/youku/player/module/VideoUrlInfo;
    .end local v9    # "detailActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_0
    :goto_0
    return-void

    .line 112
    .restart local v8    # "currentVideoInfo":Lcom/youku/player/module/VideoUrlInfo;
    .restart local v9    # "detailActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    :cond_2
    const-string v0, "\u89c6\u9891\u4fe1\u606f\u83b7\u53d6\u9519\u8bef"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v8    # "currentVideoInfo":Lcom/youku/player/module/VideoUrlInfo;
    .end local v9    # "detailActivity":Lcom/tudou/ui/activity/DetailActivity;
    :catch_0
    move-exception v10

    .line 145
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "currentVideoInfo":Lcom/youku/player/module/VideoUrlInfo;
    .restart local v9    # "detailActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_3
    :try_start_1
    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->getItem_img_16_9()Ljava/lang/String;

    move-result-object v11

    .line 118
    .local v11, "item_img_16_9":Ljava/lang/String;
    if-nez v11, :cond_4

    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->getimgUrl()Ljava/lang/String;

    move-result-object v11

    .line 119
    :cond_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v11, "null"

    .line 120
    :cond_5
    const-string v0, "byron"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item_img_16_9 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v14

    .line 122
    .local v14, "videoTitle":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v12

    .line 123
    .local v12, "progress":I
    move-object v13, v14

    .line 124
    .local v13, "title":Ljava/lang/String;
    const-string v7, "\u70b9\u51fb\u548c\u6211\u4e00\u8d77\u770b"

    .line 125
    .local v7, "content":Ljava/lang/String;
    const-string v0, "byron"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoTitle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {v13, v7, v11}, Lio/rong/imkit/tudou/YTContentMessage;->obtain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/tudou/YTContentMessage;

    move-result-object v3

    .line 127
    .local v3, "ytContentMessage":Lio/rong/imkit/tudou/YTContentMessage;
    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/rong/imkit/tudou/YTContentMessage;->setVideoId(Ljava/lang/String;)V

    .line 128
    div-int/lit16 v0, v12, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/rong/imkit/tudou/YTContentMessage;->setDuration(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->getPlaylistchannelid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/rong/imkit/tudou/YTContentMessage;->setVideoItemIndex(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/tudou/android/chat/ChatConversationView$2;

    invoke-direct {v6, p0}, Lcom/tudou/android/chat/ChatConversationView$2;-><init>(Lcom/tudou/android/chat/ChatConversationView;)V

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v6}, Lio/rong/imkit/RongIMClientWrapper;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private setOnInfoButtonClickListener(Lio/rong/imkit/fragment/ConversationFragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Lio/rong/imkit/fragment/ConversationFragment;
    .param p2, "roomId"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Lcom/tudou/android/chat/ChatConversationView$1;

    invoke-direct {v0, p0, p2}, Lcom/tudou/android/chat/ChatConversationView$1;-><init>(Lcom/tudou/android/chat/ChatConversationView;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/rong/imkit/fragment/ConversationFragment;->setOnInfoButtonClick(Lio/rong/imkit/widget/InputView$OnInfoButtonClick;)V

    .line 101
    return-void
.end method


# virtual methods
.method public hideSendVideoDialog()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tudou/android/chat/ChatConversationView;->dialog:Lcom/youku/widget/TudouDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/android/chat/ChatConversationView;->dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/tudou/android/chat/ChatConversationView;->dialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->hide()V

    .line 153
    :cond_0
    return-void
.end method

.method public resetConversationFragment()V
    .locals 6

    .prologue
    .line 157
    :try_start_0
    const-string v1, "byron"

    const-string v2, "resetConversationFragment();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/tudou/android/chat/ChatConversationView$3;

    invoke-direct {v2, p0}, Lcom/tudou/android/chat/ChatConversationView$3;-><init>(Lcom/tudou/android/chat/ChatConversationView;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setChildrenClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "lis"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 52
    return-void
.end method

.method public showConversationFragmentByRoomId(Ljava/lang/String;)V
    .locals 7
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 61
    :try_start_0
    const-string v4, "byron"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "roomId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/tudou/android/chat/ChatConversationView;->setVisibility(I)V

    .line 63
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatConversationView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 64
    .local v0, "activity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 65
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 66
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v4, Lio/rong/imkit/fragment/ConversationFragment;

    invoke-direct {v4}, Lio/rong/imkit/fragment/ConversationFragment;-><init>()V

    iput-object v4, p0, Lcom/tudou/android/chat/ChatConversationView;->fragment:Lio/rong/imkit/fragment/ConversationFragment;

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rong://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "conversation"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "targetId"

    invoke-virtual {v4, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 70
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/tudou/android/chat/ChatConversationView;->fragment:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v4, v3}, Lio/rong/imkit/fragment/ConversationFragment;->setUri(Landroid/net/Uri;)V

    .line 71
    iget-object v4, p0, Lcom/tudou/android/chat/ChatConversationView;->fragment:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-direct {p0, v4, p1}, Lcom/tudou/android/chat/ChatConversationView;->setOnInfoButtonClickListener(Lio/rong/imkit/fragment/ConversationFragment;Ljava/lang/String;)V

    .line 72
    const v4, 0x7f0c02b2

    iget-object v5, p0, Lcom/tudou/android/chat/ChatConversationView;->fragment:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 73
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tudou/service/chat/ChatManager;->goneChatIconRedDot()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "activity":Lcom/tudou/ui/activity/DetailActivity;
    .end local v1    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v2    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v4

    goto :goto_0
.end method
