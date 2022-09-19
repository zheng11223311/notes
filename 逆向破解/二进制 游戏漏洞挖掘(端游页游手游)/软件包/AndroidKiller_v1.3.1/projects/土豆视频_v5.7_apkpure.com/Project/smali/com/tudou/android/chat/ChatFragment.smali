.class public Lcom/tudou/android/chat/ChatFragment;
.super Landroid/app/Fragment;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tudou/android/chat/ChatManager$CallBacks;


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field public static final INTENT_KEY_CHAT_ROOM_ID:Ljava/lang/String; = "intent_key_video_title"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isPause:Z

.field private mChatConversationView:Lcom/tudou/android/chat/ChatConversationView;

.field private mChatCountTextView:Landroid/widget/TextView;

.field private mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

.field private mChatCreatedView:Lcom/tudou/android/chat/ChatCreatedView;

.field private mChatInviteView:Lcom/tudou/android/chat/ChatInviteView;

.field private mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

.field private mConnectCreateErrorListener:Landroid/view/View$OnClickListener;

.field private mConnectJoinErrorListener:Landroid/view/View$OnClickListener;

.field private mCreateErrorListener:Landroid/view/View$OnClickListener;

.field private mExitDialog:Lcom/youku/widget/TudouDialog;

.field private mJoinErrorListener:Landroid/view/View$OnClickListener;

.field private mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

.field private mManager:Lcom/tudou/android/chat/ChatManager;

.field private mOnCloseListener:Ljava/lang/Runnable;

.field private mTitleBackImg:Landroid/widget/ImageView;

.field private mTitleExitImg:Landroid/view/View;

.field private mTitleJoinImg:Landroid/view/View;

.field private mVideoDialog:Lcom/youku/widget/TudouDialog;

.field private shareTextDialog:Lcom/tudou/videoshare/ShareTextDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/tudou/android/chat/ChatFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/android/chat/ChatFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 599
    new-instance v0, Lcom/tudou/android/chat/ChatFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/android/chat/ChatFragment$3;-><init>(Lcom/tudou/android/chat/ChatFragment;)V

    iput-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mConnectCreateErrorListener:Landroid/view/View$OnClickListener;

    .line 609
    new-instance v0, Lcom/tudou/android/chat/ChatFragment$4;

    invoke-direct {v0, p0}, Lcom/tudou/android/chat/ChatFragment$4;-><init>(Lcom/tudou/android/chat/ChatFragment;)V

    iput-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mConnectJoinErrorListener:Landroid/view/View$OnClickListener;

    .line 618
    new-instance v0, Lcom/tudou/android/chat/ChatFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/android/chat/ChatFragment$5;-><init>(Lcom/tudou/android/chat/ChatFragment;)V

    iput-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mCreateErrorListener:Landroid/view/View$OnClickListener;

    .line 629
    new-instance v0, Lcom/tudou/android/chat/ChatFragment$6;

    invoke-direct {v0, p0}, Lcom/tudou/android/chat/ChatFragment$6;-><init>(Lcom/tudou/android/chat/ChatFragment;)V

    iput-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mJoinErrorListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/android/chat/ChatFragment;)Lcom/youku/widget/TudouDialog;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mExitDialog:Lcom/youku/widget/TudouDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/android/chat/ChatFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showNetworkErrorToast()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/tudou/android/chat/ChatFragment;)Lcom/tudou/android/chat/ChatLoadingAndErrorView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/android/chat/ChatFragment;)Lcom/youku/widget/TudouDialog;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mVideoDialog:Lcom/youku/widget/TudouDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/android/chat/ChatFragment;)Lcom/tudou/android/chat/ChatCreatedResultView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

    return-object v0
.end method

.method private copyRoomId()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatCreatedResultView;->isShowInvitePage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string/jumbo v0, "t1.chat_roominformation.roomnumber"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 313
    :goto_0
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Util;->setClipData(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    const-string/jumbo v0, "\u5df2\u590d\u5236\u6210\u529f"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 315
    return-void

    .line 311
    :cond_0
    const-string/jumbo v0, "t1.chat_create.roomnumber"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private createChatRoom()V
    .locals 4

    .prologue
    .line 333
    const-string/jumbo v1, "t1.chat_create.createchat"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 334
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showNetworkErrorToast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->generateChatRoomNumber()Ljava/lang/String;

    .line 336
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    const-string/jumbo v2, "\u6b63\u5728\u521b\u5efa\u623f\u95f4"

    invoke-virtual {v1, v2}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->showLoadingView(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedView:Lcom/tudou/android/chat/ChatCreatedView;

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatCreatedView;->hide()V

    .line 338
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->getConnectStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v0

    .line 339
    .local v0, "connectStatus":Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->generateNameAndIcon()V

    .line 341
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tudou/android/chat/ChatManager;->refreshUserNameAndIcon(Landroid/content/Context;)V

    .line 342
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tudou/android/chat/ChatManager;->createChatRoom(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_1
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tudou/android/chat/ChatManager;->getTokenAndConnect(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private enterChatRoom(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V
    .locals 3
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "status"    # Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    .prologue
    .line 191
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatManager;->isAlreadyJoinedChatRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "byron"

    const-string v1, "equals room id and already joined chat room."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showChatConversationFragment()V

    .line 194
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->setChatRoomForground()V

    .line 195
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    sget-object v1, Lcom/tudou/android/chat/ChatManager$State;->STATE_CONVERSATION:Lcom/tudou/android/chat/ChatManager$State;

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->setState(Lcom/tudou/android/chat/ChatManager$State;)V

    .line 210
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v0, "byron"

    const-string/jumbo v1, "rejoin chat room."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->shareTextDialog:Lcom/tudou/videoshare/ShareTextDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->shareTextDialog:Lcom/tudou/videoshare/ShareTextDialog;

    invoke-virtual {v0}, Lcom/tudou/videoshare/ShareTextDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->shareTextDialog:Lcom/tudou/videoshare/ShareTextDialog;

    invoke-virtual {v0}, Lcom/tudou/videoshare/ShareTextDialog;->dismiss()V

    .line 199
    :cond_1
    sget-object v0, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    const-string/jumbo v1, "\u6b63\u5728\u8fdb\u5165\u623f\u95f4"

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->showLoadingView(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatManager;->generateNameAndIcon()V

    .line 202
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->refreshUserNameAndIcon(Landroid/content/Context;)V

    .line 203
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/android/chat/ChatManager;->joinChatRoom(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_2
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->setIsRealConnect(Z)V

    .line 206
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tudou/android/chat/ChatManager;->setRoomId(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tudou/android/chat/ChatManager;->getTokenAndConnect(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private getIntent()V
    .locals 8

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 152
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v5, "intent_key_video_title"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "roomId":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tudou/android/chat/ChatManager;->getConnectStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v4

    .line 154
    .local v4, "status":Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 155
    const-string v5, "byron"

    const-string v6, "arguments != null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tudou/android/chat/ChatManager;->getState()Lcom/tudou/android/chat/ChatManager$State;

    move-result-object v3

    .line 157
    .local v3, "state":Lcom/tudou/android/chat/ChatManager$State;
    const-string v5, "byron"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v5, Lcom/tudou/android/chat/ChatManager$State;->STATE_CONVERSATION:Lcom/tudou/android/chat/ChatManager$State;

    if-ne v3, v5, :cond_0

    .line 159
    invoke-direct {p0, v2, v4}, Lcom/tudou/android/chat/ChatFragment;->enterChatRoom(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 188
    .end local v3    # "state":Lcom/tudou/android/chat/ChatManager$State;
    :goto_0
    return-void

    .line 160
    .restart local v3    # "state":Lcom/tudou/android/chat/ChatManager$State;
    :cond_0
    sget-object v5, Lcom/tudou/android/chat/ChatManager$State;->STATE_INVITE:Lcom/tudou/android/chat/ChatManager$State;

    if-ne v3, v5, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showInviteView()V

    goto :goto_0

    .line 162
    :cond_1
    sget-object v5, Lcom/tudou/android/chat/ChatManager$State;->STATE_CREATE_RESULT:Lcom/tudou/android/chat/ChatManager$State;

    if-ne v3, v5, :cond_2

    .line 163
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/tudou/android/chat/ChatFragment;->showCreateSuccessPage(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-direct {p0, v2, v4}, Lcom/tudou/android/chat/ChatFragment;->enterChatRoom(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    goto :goto_0

    .line 167
    .end local v3    # "state":Lcom/tudou/android/chat/ChatManager$State;
    :cond_3
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tudou/android/chat/ChatManager;->isAlreadyJoinedChatRoom()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 168
    const-string v5, "byron"

    const-string v6, "isAlreadyJoinedChatRoom"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tudou/android/chat/ChatManager;->getState()Lcom/tudou/android/chat/ChatManager$State;

    move-result-object v3

    .line 170
    .restart local v3    # "state":Lcom/tudou/android/chat/ChatManager$State;
    sget-object v5, Lcom/tudou/android/chat/ChatManager$State;->STATE_CONVERSATION:Lcom/tudou/android/chat/ChatManager$State;

    if-ne v3, v5, :cond_4

    .line 171
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v5

    sget-object v6, Lcom/tudou/android/chat/ChatManager$State;->STATE_CONVERSATION:Lcom/tudou/android/chat/ChatManager$State;

    invoke-virtual {v5, v6}, Lcom/tudou/android/chat/ChatManager;->setState(Lcom/tudou/android/chat/ChatManager$State;)V

    .line 172
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showChatConversationFragment()V

    .line 173
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->setChatRoomForground()V

    goto :goto_0

    .line 174
    :cond_4
    sget-object v5, Lcom/tudou/android/chat/ChatManager$State;->STATE_INVITE:Lcom/tudou/android/chat/ChatManager$State;

    if-ne v3, v5, :cond_5

    .line 175
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showInviteView()V

    goto :goto_0

    .line 176
    :cond_5
    sget-object v5, Lcom/tudou/android/chat/ChatManager$State;->STATE_CREATE_RESULT:Lcom/tudou/android/chat/ChatManager$State;

    if-ne v3, v5, :cond_6

    .line 177
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/tudou/android/chat/ChatFragment;->showCreateSuccessPage(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_6
    invoke-direct {p0, v2, v4}, Lcom/tudou/android/chat/ChatFragment;->enterChatRoom(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    goto :goto_0

    .line 182
    .end local v3    # "state":Lcom/tudou/android/chat/ChatManager$State;
    :cond_7
    const-string v5, "byron"

    const-string/jumbo v6, "show created view."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "actiontype"

    const-string v6, "homechatshow"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v5, "\u4e3b\u9875\u9762\u5c55\u793a"

    const-string/jumbo v6, "\u8fb9\u770b\u8fb9\u804a"

    const-string v7, ""

    invoke-static {v5, v6, v7, v1}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 186
    iget-object v5, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedView:Lcom/tudou/android/chat/ChatCreatedView;

    invoke-virtual {v5}, Lcom/tudou/android/chat/ChatCreatedView;->show()V

    goto/16 :goto_0
.end method

.method private goSharedDialog()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 458
    iget-object v5, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

    invoke-virtual {v5}, Lcom/tudou/android/chat/ChatCreatedResultView;->isShowInvitePage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 459
    const-string/jumbo v5, "t1.chat_roominformation.Invitefriend"

    invoke-static {v5, v6}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 463
    :goto_0
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "roomId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v3

    .line 465
    .local v3, "videoInfo":Lcom/youku/player/module/VideoUrlInfo;
    if-nez v3, :cond_1

    .line 466
    const-string/jumbo v5, "\u89c6\u9891\u4fe1\u606f\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 477
    :goto_1
    return-void

    .line 461
    .end local v0    # "roomId":Ljava/lang/String;
    .end local v3    # "videoInfo":Lcom/youku/player/module/VideoUrlInfo;
    :cond_0
    const-string/jumbo v5, "t1.chat_create.Invitefriend"

    invoke-static {v5, v6}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 469
    .restart local v0    # "roomId":Ljava/lang/String;
    .restart local v3    # "videoInfo":Lcom/youku/player/module/VideoUrlInfo;
    :cond_1
    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, "videoName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "videoId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "\u89c6\u9891\u4fe1\u606f\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 472
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u590d\u5236\u8be5\u6761\u4fe1\u606f\uff0c\u6253\u5f00\u3010\u571f\u8c46\u89c6\u9891\u3011\u5373\u53ef\u8fdb\u5165\u623f\u95f4\uff0c\u548c\u6211\u4e00\u8d77\u8fb9\u770b\u8fb9\u804a\u3002"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u300c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u300d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u623f\u95f4\u53f7\u300c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u300d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/tudou/videoshare/ShareUtil;->getCMSChatContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "sharedMessage":Ljava/lang/String;
    const-string v5, "byron"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sharedMessage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/tudou/service/chat/ChatManager;->savePreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1, v0, v4, v2}, Lcom/tudou/android/TudouApi;->shareWord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tudou/videoshare/ShareTextDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/tudou/android/chat/ChatFragment;->shareTextDialog:Lcom/tudou/videoshare/ShareTextDialog;

    goto/16 :goto_1
.end method

.method private hideAllChatView()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedView:Lcom/tudou/android/chat/ChatCreatedView;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatCreatedView;->hide()V

    .line 487
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatCreatedResultView;->hide()V

    .line 488
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatJoinedView;->hide()V

    .line 489
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatConversationView:Lcom/tudou/android/chat/ChatConversationView;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatConversationView;->hide()V

    .line 490
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 117
    const v3, 0x7f0c02ae

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tudou/android/chat/ChatCreatedView;

    iput-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedView:Lcom/tudou/android/chat/ChatCreatedView;

    .line 118
    const v3, 0x7f0c02af

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tudou/android/chat/ChatCreatedResultView;

    iput-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

    .line 119
    const v3, 0x7f0c02b1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tudou/android/chat/ChatJoinedView;

    iput-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

    .line 120
    const v3, 0x7f0c02b2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tudou/android/chat/ChatConversationView;

    iput-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mChatConversationView:Lcom/tudou/android/chat/ChatConversationView;

    .line 121
    const v3, 0x7f0c02b0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tudou/android/chat/ChatInviteView;

    iput-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mChatInviteView:Lcom/tudou/android/chat/ChatInviteView;

    .line 123
    iget-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedView:Lcom/tudou/android/chat/ChatCreatedView;

    invoke-virtual {v3, p0}, Lcom/tudou/android/chat/ChatCreatedView;->setChildrenClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

    invoke-virtual {v3, p0}, Lcom/tudou/android/chat/ChatCreatedResultView;->setChildrenClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-virtual {v3, p0}, Lcom/tudou/android/chat/ChatJoinedView;->setChildrenClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mChatInviteView:Lcom/tudou/android/chat/ChatInviteView;

    invoke-virtual {v3, p0}, Lcom/tudou/android/chat/ChatInviteView;->setChildrenClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v3, 0x7f0c02ab

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleJoinImg:Landroid/view/View;

    .line 129
    const v3, 0x7f0c02ac

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleExitImg:Landroid/view/View;

    .line 130
    const v3, 0x7f0c02ad

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleBackImg:Landroid/widget/ImageView;

    .line 131
    const v3, 0x7f0c02a9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCountTextView:Landroid/widget/TextView;

    .line 133
    iget-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleJoinImg:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleExitImg:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleBackImg:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v3, 0x7f0c02b3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    iput-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    .line 139
    const v3, 0x7f0c02aa

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "blankView":Landroid/view/View;
    const v3, 0x7f0c02a7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 141
    .local v1, "titleImg":Landroid/view/View;
    const v3, 0x7f0c02a8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 142
    .local v2, "titleText":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->getIntent()V

    .line 147
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tudou/service/chat/ChatManager;->dismissChatIcon(Z)V

    .line 148
    return-void
.end method

.method private joinChatRoom()V
    .locals 4

    .prologue
    .line 349
    const-string v1, "onclick"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showNetworkErrorToast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatJoinedView;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    const-string/jumbo v1, "\u623f\u95f4\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_2
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->generateNameAndIcon()V

    .line 356
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tudou/android/chat/ChatManager;->refreshUserNameAndIcon(Landroid/content/Context;)V

    .line 357
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    const-string/jumbo v2, "\u6b63\u5728\u8fdb\u5165\u623f\u95f4"

    invoke-virtual {v1, v2}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->showLoadingView(Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->getConnectStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v0

    .line 359
    .local v0, "status":Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 360
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/android/chat/ChatFragment;->mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-virtual {v2}, Lcom/tudou/android/chat/ChatJoinedView;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tudou/android/chat/ChatManager;->setRoomId(Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tudou/android/chat/ChatManager;->joinChatRoom(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_3
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tudou/android/chat/ChatManager;->getTokenAndConnect(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private sendInformationMessage()V
    .locals 6

    .prologue
    .line 698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tudou/android/chat/ChatManager;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u5df2\u52a0\u5165\u623f\u95f4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v0

    .line 700
    .local v0, "informationNotificationMessage":Lio/rong/message/InformationNotificationMessage;
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {v3, v4, v0}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v1

    .line 702
    .local v1, "message":Lio/rong/imlib/model/Message;
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/android/chat/ChatManager;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, "userId":Ljava/lang/String;
    const-string v3, "byron"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendInformationMessage(): userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 705
    const-string v3, "byron"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendInformationMessage(): username = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tudou/android/chat/ChatManager;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tudou/android/chat/ChatManager;->sendMessage(Lio/rong/imlib/model/Message;)V

    .line 707
    return-void
.end method

.method private setChatRoomForground()V
    .locals 2

    .prologue
    .line 425
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->setChatRoomForground(Z)V

    .line 426
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatCreatedResultView;->setRedIconToogle(Z)V

    .line 429
    :cond_0
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/chat/ChatManager;->goneChatIconRedDot()V

    .line 430
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatManager;->resetUnreadMessage()V

    .line 431
    return-void
.end method

.method private showChatConversationFragment()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->getChatRoomInfo(Z)V

    .line 214
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleJoinImg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleExitImg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleBackImg:Landroid/widget/ImageView;

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatConversationView:Lcom/tudou/android/chat/ChatConversationView;

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatConversationView;->showConversationFragmentByRoomId(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method private showChatRoom()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatCreatedResultView;->isShowInvitePage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const-string/jumbo v0, "t1.chat_roominformation.enterchat"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 323
    :goto_0
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showNetworkErrorToast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    :goto_1
    return-void

    .line 321
    :cond_0
    const-string/jumbo v0, "t1.chat_create.enterchat"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->hideAllChatView()V

    .line 325
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->refreshUserNameAndIcon(Landroid/content/Context;)V

    .line 326
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatConversationView:Lcom/tudou/android/chat/ChatConversationView;

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatConversationView;->showConversationFragmentByRoomId(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleJoinImg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    sget-object v1, Lcom/tudou/android/chat/ChatManager$State;->STATE_CONVERSATION:Lcom/tudou/android/chat/ChatManager$State;

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->setState(Lcom/tudou/android/chat/ChatManager$State;)V

    .line 329
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->setChatRoomForground()V

    goto :goto_1
.end method

.method private showCreateResultView(Z)V
    .locals 5
    .param p1, "b"    # Z

    .prologue
    const/4 v4, 0x1

    .line 290
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->hideAllChatView()V

    .line 291
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatJoinedView;->hideInputMethod()V

    .line 292
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleJoinImg:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleBackImg:Landroid/widget/ImageView;

    const v2, 0x7f02010a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u5f53\u524d\u623f\u95f4\u53f7"

    invoke-virtual {v1, v2, v3}, Lcom/tudou/android/chat/ChatCreatedResultView;->showInviteText(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    sget-object v2, Lcom/tudou/android/chat/ChatManager$State;->STATE_CREATE_RESULT:Lcom/tudou/android/chat/ChatManager$State;

    invoke-virtual {v1, v2}, Lcom/tudou/android/chat/ChatManager;->setState(Lcom/tudou/android/chat/ChatManager$State;)V

    .line 296
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/tudou/android/chat/ChatManager;->getChatRoomInfo(Z)V

    .line 297
    :cond_0
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->isAlreadyJoinedChatRoom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleExitImg:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :cond_1
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->hasUnreadMessage()Z

    move-result v0

    .line 300
    .local v0, "b1":Z
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->setChatRoomBackground()V

    .line 301
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 302
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

    invoke-virtual {v1, v4}, Lcom/tudou/android/chat/ChatCreatedResultView;->setRedIconToogle(Z)V

    .line 303
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/tudou/android/chat/ChatManager;->setUnreadMessage(Z)V

    .line 305
    :cond_2
    return-void
.end method

.method private showCreateSuccessPage(Ljava/lang/String;)V
    .locals 4
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 532
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->hideAllChatView()V

    .line 533
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleBackImg:Landroid/widget/ImageView;

    const v2, 0x7f02010a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 534
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatJoinedView;->hideInputMethod()V

    .line 535
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleJoinImg:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

    const-string/jumbo v2, "\u623f\u95f4\u521b\u5efa\u5b8c\u6210"

    invoke-virtual {v1, p1, v2}, Lcom/tudou/android/chat/ChatCreatedResultView;->showInviteText(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    sget-object v2, Lcom/tudou/android/chat/ChatManager$State;->STATE_CREATE_RESULT:Lcom/tudou/android/chat/ChatManager$State;

    invoke-virtual {v1, v2}, Lcom/tudou/android/chat/ChatManager;->setState(Lcom/tudou/android/chat/ChatManager$State;)V

    .line 538
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tudou/android/chat/ChatManager;->getChatRoomInfo(Z)V

    .line 539
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->isAlreadyJoinedChatRoom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleExitImg:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 541
    :cond_0
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->hasUnreadMessage()Z

    move-result v0

    .line 542
    .local v0, "b":Z
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->setChatRoomBackground()V

    .line 543
    if-eqz v0, :cond_1

    .line 544
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

    invoke-virtual {v1, v3}, Lcom/tudou/android/chat/ChatCreatedResultView;->setRedIconToogle(Z)V

    .line 545
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tudou/android/chat/ChatManager;->setUnreadMessage(Z)V

    .line 547
    :cond_1
    return-void
.end method

.method private showExitDialog()V
    .locals 3

    .prologue
    .line 434
    const-string/jumbo v0, "t1.chat_create.outchat"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 435
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mExitDialog:Lcom/youku/widget/TudouDialog;

    .line 436
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mExitDialog:Lcom/youku/widget/TudouDialog;

    const-string/jumbo v1, "\u786e\u5b9a\u9000\u51fa\u8fb9\u770b\u8fb9\u804a\u4e48\uff1f"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mExitDialog:Lcom/youku/widget/TudouDialog;

    const-string/jumbo v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tudou/android/chat/ChatFragment$1;

    invoke-direct {v2, p0}, Lcom/tudou/android/chat/ChatFragment$1;-><init>(Lcom/tudou/android/chat/ChatFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mExitDialog:Lcom/youku/widget/TudouDialog;

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/tudou/android/chat/ChatFragment$2;

    invoke-direct {v2, p0}, Lcom/tudou/android/chat/ChatFragment$2;-><init>(Lcom/tudou/android/chat/ChatFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mExitDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 455
    return-void
.end method

.method private showFloatDialog()V
    .locals 0

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->showFloatIcon()V

    .line 377
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->hideSelf()V

    .line 378
    return-void
.end method

.method private showInviteView()V
    .locals 2

    .prologue
    .line 278
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->getChatRoomInfo(Z)V

    .line 279
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatJoinedView;->hideInputMethod()V

    .line 280
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleJoinImg:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleBackImg:Landroid/widget/ImageView;

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->hideAllChatView()V

    .line 283
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatInviteView:Lcom/tudou/android/chat/ChatInviteView;

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatInviteView;->show(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    sget-object v1, Lcom/tudou/android/chat/ChatManager$State;->STATE_INVITE:Lcom/tudou/android/chat/ChatManager$State;

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->setState(Lcom/tudou/android/chat/ChatManager$State;)V

    .line 285
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatManager;->isAlreadyJoinedChatRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleExitImg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    :cond_0
    return-void
.end method

.method private showNetworkErrorToast()Z
    .locals 1

    .prologue
    .line 368
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    const-string/jumbo v0, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 370
    const/4 v0, 0x1

    .line 372
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getVideoInfo()Lcom/youku/player/module/VideoUrlInfo;
    .locals 2

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/DetailActivity;

    .line 481
    .local v1, "detailActivity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v0

    .line 482
    .local v0, "currentVideoInfo":Lcom/youku/player/module/VideoUrlInfo;
    return-object v0
.end method

.method public hideAllDialog()V
    .locals 3

    .prologue
    .line 785
    :try_start_0
    const-string v1, "byron"

    const-string v2, "hideAllDialog();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mExitDialog:Lcom/youku/widget/TudouDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mExitDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v1}, Lcom/youku/widget/TudouDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mExitDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v1}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 787
    :cond_0
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mVideoDialog:Lcom/youku/widget/TudouDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mVideoDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v1}, Lcom/youku/widget/TudouDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mVideoDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v1}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 788
    :cond_1
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mChatConversationView:Lcom/tudou/android/chat/ChatConversationView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mChatConversationView:Lcom/tudou/android/chat/ChatConversationView;

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatConversationView;->hideSendVideoDialog()V

    .line 789
    :cond_2
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->shareTextDialog:Lcom/tudou/videoshare/ShareTextDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->shareTextDialog:Lcom/tudou/videoshare/ShareTextDialog;

    invoke-virtual {v1}, Lcom/tudou/videoshare/ShareTextDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->shareTextDialog:Lcom/tudou/videoshare/ShareTextDialog;

    invoke-virtual {v1}, Lcom/tudou/videoshare/ShareTextDialog;->dismiss()V

    .line 790
    :cond_3
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    const-class v2, Lio/rong/message/TextMessage;

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider;

    .line 792
    .local v0, "textMessageItemProvider":Lio/rong/imkit/widget/provider/TextMessageItemProvider;
    invoke-virtual {v0}, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->getArraysDialogFragment()Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/widget/ArraysDialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    .end local v0    # "textMessageItemProvider":Lio/rong/imkit/widget/provider/TextMessageItemProvider;
    :goto_0
    return-void

    .line 793
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public hideSelf()V
    .locals 6

    .prologue
    .line 752
    :try_start_0
    iget-object v4, p0, Lcom/tudou/android/chat/ChatFragment;->mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-virtual {v4}, Lcom/tudou/android/chat/ChatJoinedView;->hideInputMethod()V

    .line 753
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 754
    .local v0, "detailActivity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 755
    .local v2, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 756
    .local v3, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 757
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 758
    invoke-virtual {v3, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 759
    iget-object v4, p0, Lcom/tudou/android/chat/ChatFragment;->mOnCloseListener:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 760
    iget-object v4, p0, Lcom/tudou/android/chat/ChatFragment;->mOnCloseListener:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    .end local v0    # "detailActivity":Lcom/tudou/ui/activity/DetailActivity;
    .end local v2    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v3    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    return-void

    .line 763
    :catch_0
    move-exception v1

    .line 764
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onChatFragmentClose()V
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->hideAllDialog()V

    .line 803
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatManager;->isAlreadyJoinedChatRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->setChatRoomBackground()V

    .line 806
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 275
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 224
    :pswitch_1
    const-string/jumbo v0, "t1.chat_function.roominformation"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 225
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showInviteView()V

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showExitDialog()V

    goto :goto_0

    .line 231
    :pswitch_3
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showFloatDialog()V

    goto :goto_0

    .line 235
    :pswitch_4
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showNetworkErrorToast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->createChatRoom()V

    goto :goto_0

    .line 240
    :pswitch_5
    const-string/jumbo v0, "t1.chat_create.joinchat"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 241
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showNetworkErrorToast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->hideAllChatView()V

    .line 243
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatJoinedView;->show()V

    goto :goto_0

    .line 247
    :pswitch_6
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->copyRoomId()V

    goto :goto_0

    .line 251
    :pswitch_7
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showChatRoom()V

    goto :goto_0

    .line 255
    :pswitch_8
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->goSharedDialog()V

    goto :goto_0

    .line 259
    :pswitch_9
    const-string/jumbo v0, "t1.chat_join.rommnumber"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 260
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->joinChatRoom()V

    goto :goto_0

    .line 265
    :pswitch_a
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->showFloatIcon()V

    .line 266
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->hideSelf()V

    goto :goto_0

    .line 269
    :pswitch_b
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->goSharedDialog()V

    goto :goto_0

    .line 272
    :pswitch_c
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showChatRoom()V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0297
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public onConnectFailed(Z)V
    .locals 2
    .param p1, "isCreate"    # Z

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/tudou/android/chat/ChatFragment;->isPause:Z

    if-eqz v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 509
    :cond_0
    if-eqz p1, :cond_1

    .line 510
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    const-string/jumbo v1, "\u521b\u5efa\u5931\u8d25\uff0c\u70b9\u51fb\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->showErrorView(Ljava/lang/String;)V

    .line 514
    :goto_1
    if-eqz p1, :cond_2

    .line 515
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mConnectCreateErrorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    const-string/jumbo v1, "\u8fdb\u5165\u5931\u8d25\uff0c\u70b9\u51fb\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->showErrorView(Ljava/lang/String;)V

    goto :goto_1

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mConnectJoinErrorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onConnectSuccess(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "isCreate"    # Z

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/tudou/android/chat/ChatFragment;->isPause:Z

    if-eqz v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 495
    :cond_0
    if-eqz p2, :cond_1

    .line 496
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatManager;->generateNameAndIcon()V

    .line 497
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->refreshUserNameAndIcon(Landroid/content/Context;)V

    .line 498
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->createChatRoom(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_1
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatManager;->generateNameAndIcon()V

    .line 501
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->refreshUserNameAndIcon(Landroid/content/Context;)V

    .line 502
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->joinChatRoom(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 7
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 735
    sget-object v2, Lcom/tudou/android/chat/ChatFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateAnimator enter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const/4 v0, 0x0

    .line 737
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-object v0

    .line 739
    :cond_1
    if-ne p3, v6, :cond_0

    .line 740
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 741
    .local v1, "values":[F
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v4

    .line 742
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v6

    .line 743
    const-string/jumbo v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 744
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 745
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 741
    goto :goto_1

    .line 742
    :cond_3
    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v3, v2

    goto :goto_2
.end method

.method public onCreateChatRoomFailed(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    const/16 v3, 0x8

    .line 551
    iget-boolean v1, p0, Lcom/tudou/android/chat/ChatFragment;->isPause:Z

    if-eqz v1, :cond_0

    .line 560
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    const-string/jumbo v2, "\u521b\u5efa\u5931\u8d25\uff0c\u70b9\u51fb\u5c4f\u5e55\u91cd\u8bd5"

    invoke-virtual {v1, v2}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->showErrorView(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    iget-object v2, p0, Lcom/tudou/android/chat/ChatFragment;->mCreateErrorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleJoinImg:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleExitImg:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 556
    const-string/jumbo v1, "\u623f\u95f4\u521b\u5efa\u5931\u8d25"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 557
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 558
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "actiontype"

    const-string v2, "createfail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string/jumbo v1, "\u521b\u5efa\u5931\u8d25"

    const-string/jumbo v2, "\u8fb9\u770b\u8fb9\u804a"

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public onCreateChatRoomSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/tudou/android/chat/ChatFragment;->isPause:Z

    if-eqz v0, :cond_0

    .line 529
    :goto_0
    return-void

    .line 524
    :cond_0
    const-string v0, "byron"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateChatRoomSuccess(): roomId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->sendInformationMessage()V

    .line 526
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->hide()V

    .line 527
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    invoke-direct {p0, p1}, Lcom/tudou/android/chat/ChatFragment;->showCreateSuccessPage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tudou/android/chat/ChatManager;->setCallBacks(Lcom/tudou/android/chat/ChatManager$CallBacks;)V

    .line 111
    const v1, 0x7f030082

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "root":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tudou/android/chat/ChatFragment;->initViews(Landroid/view/View;)V

    .line 113
    return-object v0
.end method

.method public onJoinChatRoomFailed(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 580
    iget-boolean v0, p0, Lcom/tudou/android/chat/ChatFragment;->isPause:Z

    if-eqz v0, :cond_0

    .line 597
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleJoinImg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleExitImg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 583
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

    const-string/jumbo v1, "\u8bf7\u91cd\u65b0\u8f93\u5165\u623f\u95f4\u53f7"

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatJoinedView;->setTitle(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-virtual {v0, v2}, Lcom/tudou/android/chat/ChatJoinedView;->setVisibility(I)V

    .line 586
    const-string/jumbo v0, "\u623f\u95f4\u4e0d\u5b58\u5728"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->hide()V

    goto :goto_0

    .line 588
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

    const-string/jumbo v1, "\u8bf7\u91cd\u65b0\u8f93\u5165\u623f\u95f4\u53f7"

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatJoinedView;->setTitle(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-virtual {v0, v2}, Lcom/tudou/android/chat/ChatJoinedView;->setVisibility(I)V

    .line 591
    const-string/jumbo v0, "\u623f\u95f4\u4eba\u6570\u5df2\u6ee1"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->hide()V

    goto :goto_0

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    const-string/jumbo v1, "\u8fdb\u5165\u5931\u8d25\uff0c\u70b9\u51fb\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->showErrorView(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    iget-object v1, p0, Lcom/tudou/android/chat/ChatFragment;->mJoinErrorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onJoinChatRoomSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 564
    iget-boolean v0, p0, Lcom/tudou/android/chat/ChatFragment;->isPause:Z

    if-eqz v0, :cond_0

    .line 576
    :goto_0
    return-void

    .line 565
    :cond_0
    const-string v0, "byron"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJoinChatRoomSuccess(): roomId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->sendInformationMessage()V

    .line 567
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatConversationView:Lcom/tudou/android/chat/ChatConversationView;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatConversationView;->show()V

    .line 568
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleBackImg:Landroid/widget/ImageView;

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 569
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatConversationView:Lcom/tudou/android/chat/ChatConversationView;

    invoke-virtual {v0, p1}, Lcom/tudou/android/chat/ChatConversationView;->showConversationFragmentByRoomId(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleJoinImg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleExitImg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 572
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    sget-object v1, Lcom/tudou/android/chat/ChatManager$State;->STATE_CONVERSATION:Lcom/tudou/android/chat/ChatManager$State;

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->setState(Lcom/tudou/android/chat/ChatManager$State;)V

    .line 573
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->hide()V

    .line 574
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mLoaingAndErrorView:Lcom/tudou/android/chat/ChatLoadingAndErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatLoadingAndErrorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->setChatRoomForground()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 770
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->setReceiveMessage(Z)V

    .line 771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/android/chat/ChatFragment;->isPause:Z

    .line 772
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 773
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatJoinedView:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatJoinedView;->hideInputMethod()V

    .line 774
    return-void
.end method

.method public onPeopleCountChanged(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/tudou/android/chat/ChatFragment;->isPause:Z

    if-eqz v0, :cond_0

    .line 695
    :goto_0
    return-void

    .line 692
    :cond_0
    const-string v0, "byron"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeopleCountChanged():count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCountTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/30)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCountTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onQuitChatRoom()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mTitleBackImg:Landroid/widget/ImageView;

    const v1, 0x7f020179

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 687
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 778
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->setReceiveMessage(Z)V

    .line 779
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/android/chat/ChatFragment;->isPause:Z

    .line 780
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 781
    return-void
.end method

.method public onSendBlankMessage()V
    .locals 2

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/tudou/android/chat/ChatFragment;->isPause:Z

    if-eqz v0, :cond_0

    .line 719
    :goto_0
    return-void

    .line 712
    :cond_0
    const-string v0, "byron"

    const-string v1, "onSendBlankMessage();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tudou/android/chat/ChatFragment$9;

    invoke-direct {v1, p0}, Lcom/tudou/android/chat/ChatFragment$9;-><init>(Lcom/tudou/android/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onUnReadMessage()V
    .locals 2

    .prologue
    .line 723
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tudou/android/chat/ChatFragment$10;

    invoke-direct {v1, p0}, Lcom/tudou/android/chat/ChatFragment$10;-><init>(Lcom/tudou/android/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 731
    return-void
.end method

.method public onVideoMessageClick(Lio/rong/imlib/model/MessageContent;)V
    .locals 8
    .param p1, "content"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 640
    const-string/jumbo v3, "t1.chat_function.clicksynchronous"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 641
    iget-boolean v3, p0, Lcom/tudou/android/chat/ChatFragment;->isPause:Z

    if-eqz v3, :cond_1

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatFragment;->showNetworkErrorToast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 643
    new-instance v3, Lcom/youku/widget/TudouDialog;

    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mVideoDialog:Lcom/youku/widget/TudouDialog;

    move-object v2, p1

    .line 644
    check-cast v2, Lio/rong/imkit/tudou/YTContentMessage;

    .line 645
    .local v2, "ytContentMessage":Lio/rong/imkit/tudou/YTContentMessage;
    invoke-virtual {v2}, Lio/rong/imkit/tudou/YTContentMessage;->getVideoId()Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, "videoId":Ljava/lang/String;
    invoke-virtual {v2}, Lio/rong/imkit/tudou/YTContentMessage;->getDuration()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "duration":Ljava/lang/String;
    const-string v3, "byron"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "videoId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; duration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mVideoDialog:Lcom/youku/widget/TudouDialog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u786e\u5b9a\u8df3\u8f6c\u5230\u3010"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lio/rong/imkit/tudou/YTContentMessage;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u3011"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lio/rong/imkit/tudou/YTContentMessage;->getDuration()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v6, v5

    invoke-static {v6, v7}, Lcom/youku/util/Util;->formatTime2(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u4e48\uff1f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 650
    iget-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mVideoDialog:Lcom/youku/widget/TudouDialog;

    const-string/jumbo v4, "\u786e\u5b9a"

    new-instance v5, Lcom/tudou/android/chat/ChatFragment$7;

    invoke-direct {v5, p0, v1, v0}, Lcom/tudou/android/chat/ChatFragment$7;-><init>(Lcom/tudou/android/chat/ChatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 675
    iget-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mVideoDialog:Lcom/youku/widget/TudouDialog;

    const-string/jumbo v4, "\u53d6\u6d88"

    new-instance v5, Lcom/tudou/android/chat/ChatFragment$8;

    invoke-direct {v5, p0}, Lcom/tudou/android/chat/ChatFragment$8;-><init>(Lcom/tudou/android/chat/ChatFragment;)V

    invoke-virtual {v3, v4, v5}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 681
    iget-object v3, p0, Lcom/tudou/android/chat/ChatFragment;->mVideoDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v3}, Lcom/youku/widget/TudouDialog;->show()V

    goto/16 :goto_0
.end method

.method public resetConversationFragment()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatConversationView:Lcom/tudou/android/chat/ChatConversationView;

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatConversationView;->resetConversationFragment()V

    .line 799
    return-void
.end method

.method public setChatRoomBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 416
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatManager;->setChatRoomForground(Z)V

    .line 417
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment;->mChatCreatedResultView:Lcom/tudou/android/chat/ChatCreatedResultView;

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatCreatedResultView;->setRedIconToogle(Z)V

    .line 420
    :cond_0
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/chat/ChatManager;->goneChatIconRedDot()V

    .line 421
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatManager;->resetUnreadMessage()V

    .line 422
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/tudou/android/chat/ChatFragment;->mOnCloseListener:Ljava/lang/Runnable;

    .line 105
    return-void
.end method

.method public showFloatIcon()V
    .locals 9

    .prologue
    .line 382
    :try_start_0
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tudou/android/chat/ChatManager;->hasUnreadMessage()Z

    move-result v0

    .line 383
    .local v0, "b":Z
    const-string v6, "byron"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showFloatIcon(): b = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->setChatRoomBackground()V

    .line 385
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v2

    .line 386
    .local v2, "chatManager":Lcom/tudou/android/chat/ChatManager;
    invoke-virtual {v2}, Lcom/tudou/android/chat/ChatManager;->isAlreadyJoinedChatRoom()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 387
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/tudou/ui/activity/DetailActivity;

    .line 388
    .local v4, "detailActivity":Lcom/tudou/ui/activity/DetailActivity;
    if-nez v4, :cond_1

    .line 413
    .end local v0    # "b":Z
    .end local v2    # "chatManager":Lcom/tudou/android/chat/ChatManager;
    .end local v4    # "detailActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_0
    :goto_0
    return-void

    .line 391
    .restart local v0    # "b":Z
    .restart local v2    # "chatManager":Lcom/tudou/android/chat/ChatManager;
    .restart local v4    # "detailActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_1
    invoke-virtual {v4}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v3

    .line 392
    .local v3, "currentVideoInfo":Lcom/youku/player/module/VideoUrlInfo;
    new-instance v1, Lcom/youku/vo/ChatDialogInfo;

    invoke-direct {v1}, Lcom/youku/vo/ChatDialogInfo;-><init>()V

    .line 393
    .local v1, "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    if-eqz v3, :cond_0

    .line 394
    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/youku/vo/ChatDialogInfo;->title:Ljava/lang/String;

    .line 395
    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    .line 396
    invoke-virtual {v2}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/youku/vo/ChatDialogInfo;->roomId:Ljava/lang/String;

    .line 397
    const-string v6, "byron"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set currentvideo info. title = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/youku/vo/ChatDialogInfo;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; videoid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";roomid= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/youku/vo/ChatDialogInfo;->roomId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/tudou/service/chat/ChatManager;->showChatIcon(Lcom/youku/vo/ChatDialogInfo;)V

    .line 400
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/tudou/service/chat/ChatManager;->setDetailActivity(Lcom/tudou/ui/activity/DetailActivity;)V

    .line 401
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tudou/android/chat/ChatManager;->getState()Lcom/tudou/android/chat/ChatManager$State;

    move-result-object v5

    .line 402
    .local v5, "state":Lcom/tudou/android/chat/ChatManager$State;
    sget-object v6, Lcom/tudou/android/chat/ChatManager$State;->STATE_CREATE_RESULT:Lcom/tudou/android/chat/ChatManager$State;

    if-ne v5, v6, :cond_2

    if-eqz v0, :cond_2

    .line 403
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tudou/service/chat/ChatManager;->showChatIconRedDot()V

    .line 404
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/tudou/android/chat/ChatManager;->setUnreadMessage(Z)V

    .line 406
    :cond_2
    const-string/jumbo v6, "t1.chat_create.packup"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 411
    .end local v0    # "b":Z
    .end local v1    # "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    .end local v2    # "chatManager":Lcom/tudou/android/chat/ChatManager;
    .end local v3    # "currentVideoInfo":Lcom/youku/player/module/VideoUrlInfo;
    .end local v4    # "detailActivity":Lcom/tudou/ui/activity/DetailActivity;
    .end local v5    # "state":Lcom/tudou/android/chat/ChatManager$State;
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 409
    .restart local v0    # "b":Z
    .restart local v2    # "chatManager":Lcom/tudou/android/chat/ChatManager;
    :cond_3
    const-string/jumbo v6, "t1.chat_create.close"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
