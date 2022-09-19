.class public Lio/rong/imlib/NativeObject;
.super Ljava/lang/Object;
.source "NativeObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/NativeObject$PingCallback;,
        Lio/rong/imlib/NativeObject$ReceiptInfo;,
        Lio/rong/imlib/NativeObject$AccountInfo;,
        Lio/rong/imlib/NativeObject$DiscussionInfo;,
        Lio/rong/imlib/NativeObject$Conversation;,
        Lio/rong/imlib/NativeObject$UserInfo;,
        Lio/rong/imlib/NativeObject$Message;,
        Lio/rong/imlib/NativeObject$ChatroomInfoListener;,
        Lio/rong/imlib/NativeObject$HistoryMessageListener;,
        Lio/rong/imlib/NativeObject$GetUserDataListener;,
        Lio/rong/imlib/NativeObject$AccountInfoListener;,
        Lio/rong/imlib/NativeObject$TokenListener;,
        Lio/rong/imlib/NativeObject$SetBlacklistListener;,
        Lio/rong/imlib/NativeObject$BizAckListener;,
        Lio/rong/imlib/NativeObject$NaviDataListener;,
        Lio/rong/imlib/NativeObject$ExceptionListener;,
        Lio/rong/imlib/NativeObject$DiscussionInfoListener;,
        Lio/rong/imlib/NativeObject$PushSettingListener;,
        Lio/rong/imlib/NativeObject$ReceiveMessageListener;,
        Lio/rong/imlib/NativeObject$EnvironmentChangeNotifyListener;,
        Lio/rong/imlib/NativeObject$UserInfoOutputListener;,
        Lio/rong/imlib/NativeObject$CreateDiscussionCallback;,
        Lio/rong/imlib/NativeObject$PublishAckListener;,
        Lio/rong/imlib/NativeObject$ProgressCallback;,
        Lio/rong/imlib/NativeObject$ConnectAckCallback;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "RongIMLib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0, p0}, Lio/rong/imlib/NativeObject;->setJNIEnv(Lio/rong/imlib/NativeObject;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected native AddPushSetting(Ljava/lang/String;ILio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native AddToBlacklist(Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native ClearConversations([I)Z
.end method

.method protected native ClearMessages(ILjava/lang/String;)Z
.end method

.method protected native ClearUnread(ILjava/lang/String;)Z
.end method

.method protected native Connect(Ljava/lang/String;Lio/rong/imlib/NativeObject$ConnectAckCallback;)V
.end method

.method protected native CreateInviteDiscussion(Ljava/lang/String;[Ljava/lang/String;Lio/rong/imlib/NativeObject$CreateDiscussionCallback;)V
.end method

.method protected native DeleteMessages([I)Z
.end method

.method protected native Disconnect(I)V
.end method

.method protected native DownFileWithUrl(Ljava/lang/String;IILjava/lang/String;Lio/rong/imlib/NativeObject$ProgressCallback;)V
.end method

.method protected native EnvironmentChangeNotify(I[BILio/rong/imlib/NativeObject$EnvironmentChangeNotifyListener;)V
.end method

.method protected native GetBlacklist(Lio/rong/imlib/NativeObject$SetBlacklistListener;)V
.end method

.method protected native GetBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/NativeObject$BizAckListener;)V
.end method

.method protected native GetBlockPush(Ljava/lang/String;ILio/rong/imlib/NativeObject$BizAckListener;)V
.end method

.method protected native GetCateUnreadCount([I)I
.end method

.method protected native GetConversationEx(Ljava/lang/String;I)Lio/rong/imlib/NativeObject$Conversation;
.end method

.method protected native GetConversationListEx([I)[Lio/rong/imlib/NativeObject$Conversation;
.end method

.method protected native GetDeltaTime()J
.end method

.method protected native GetDiscussionInfo(Ljava/lang/String;Lio/rong/imlib/NativeObject$DiscussionInfoListener;)V
.end method

.method protected native GetDiscussionInfoSync(Ljava/lang/String;)Lio/rong/imlib/NativeObject$DiscussionInfo;
.end method

.method protected native GetHistoryMessages(Ljava/lang/String;ILjava/lang/String;II)[B
.end method

.method protected native GetHistoryMessagesEx(Ljava/lang/String;ILjava/lang/String;II)[Lio/rong/imlib/NativeObject$Message;
.end method

.method protected native GetLatestMessagesbyObjectName(Ljava/lang/String;ILjava/lang/String;I)[B
.end method

.method protected native GetMessageById(I)Lio/rong/imlib/NativeObject$Message;
.end method

.method protected native GetMessageCount(Ljava/lang/String;I)I
.end method

.method protected native GetRecentConversation()[B
.end method

.method protected native GetSendTimeByMessageId(I)J
.end method

.method protected native GetTextMessageDraft(ILjava/lang/String;)Ljava/lang/String;
.end method

.method protected native GetTotalUnreadCount()I
.end method

.method protected native GetUnreadCount(Ljava/lang/String;I)I
.end method

.method protected native GetUserData(Lio/rong/imlib/NativeObject$GetUserDataListener;)V
.end method

.method protected native GetUserIdByToken(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected native GetUserInfoExSync(Ljava/lang/String;I)Lio/rong/imlib/NativeObject$UserInfo;
.end method

.method protected native InitClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected native InviteMemberToDiscussion(Ljava/lang/String;[Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native JoinChatRoom(Ljava/lang/String;IIZLio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native JoinExistingChatroom(Ljava/lang/String;IILio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native JoinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native LoadAccountInfo()[Lio/rong/imlib/NativeObject$AccountInfo;
.end method

.method protected native LoadHistoryMessage(Ljava/lang/String;IJILio/rong/imlib/NativeObject$HistoryMessageListener;)V
.end method

.method protected native QueryChatroomInfo(Ljava/lang/String;IILio/rong/imlib/NativeObject$ChatroomInfoListener;)Z
.end method

.method protected native QueryPushSetting(Lio/rong/imlib/NativeObject$PushSettingListener;)V
.end method

.method protected native QueryReceiptStatus()[Lio/rong/imlib/NativeObject$ReceiptInfo;
.end method

.method protected native QuitChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native QuitDiscussion(Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native QuitGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native RegisterMessageType(Ljava/lang/String;I)V
.end method

.method protected native RemoveConversation(ILjava/lang/String;)Z
.end method

.method protected native RemoveFromBlacklist(Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native RemoveMemberFromDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native RemovePushSetting(Lio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native RenameDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native SaveMessage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B[B[B)I
.end method

.method protected native SearchAccount(Ljava/lang/String;IILio/rong/imlib/NativeObject$AccountInfoListener;)V
.end method

.method protected native SendFileWithUrl(Ljava/lang/String;II[BILio/rong/imlib/NativeObject$ProgressCallback;)V
.end method

.method protected native SendMessage(Ljava/lang/String;IILjava/lang/String;[B[B[BILio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native SetBlockPush(Ljava/lang/String;IZLio/rong/imlib/NativeObject$BizAckListener;)V
.end method

.method protected native SetDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected native SetExceptionListener(Lio/rong/imlib/NativeObject$ExceptionListener;)V
.end method

.method protected native SetInviteStatus(Ljava/lang/String;ILio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native SetIsTop(ILjava/lang/String;Z)Z
.end method

.method protected native SetMessageContent(I[B)Z
.end method

.method protected native SetMessageExtra(ILjava/lang/String;)Z
.end method

.method protected native SetMessageListener(Lio/rong/imlib/NativeObject$ReceiveMessageListener;)V
.end method

.method protected native SetNaviDataListener(Lio/rong/imlib/NativeObject$NaviDataListener;)V
.end method

.method protected native SetReadStatus(II)Z
.end method

.method protected native SetReceiptStatus(Ljava/lang/String;IJLjava/lang/String;)Z
.end method

.method protected native SetSendStatus(II)Z
.end method

.method protected native SetTextMessageDraft(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method protected native SetUserData(Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native SubscribeAccount(Ljava/lang/String;IZLio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native SyncGroups([Ljava/lang/String;[Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V
.end method

.method protected native UpdateConversationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method protected native UpdateMessageReceiptStatus(Ljava/lang/String;IJ)Z
.end method

.method protected ping(Lio/rong/imlib/NativeObject$PingCallback;)V
    .locals 4
    .param p1, "callback"    # Lio/rong/imlib/NativeObject$PingCallback;

    .prologue
    .line 1043
    const/16 v0, 0x69

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lio/rong/imlib/NativeObject$1;

    invoke-direct {v3, p0, p1}, Lio/rong/imlib/NativeObject$1;-><init>(Lio/rong/imlib/NativeObject;Lio/rong/imlib/NativeObject$PingCallback;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/rong/imlib/NativeObject;->EnvironmentChangeNotify(I[BILio/rong/imlib/NativeObject$EnvironmentChangeNotifyListener;)V

    .line 1054
    return-void
.end method

.method protected native setJNIEnv(Lio/rong/imlib/NativeObject;)V
.end method
