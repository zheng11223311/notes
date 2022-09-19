.class public Lio/rong/imlib/RongIMClient;
.super Ljava/lang/Object;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/RongIMClient$RealTimeLocationListener;,
        Lio/rong/imlib/RongIMClient$GetBlacklistCallback;,
        Lio/rong/imlib/RongIMClient$SearchType;,
        Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;,
        Lio/rong/imlib/RongIMClient$BlacklistStatus;,
        Lio/rong/imlib/RongIMClient$MediaType;,
        Lio/rong/imlib/RongIMClient$DownloadMediaCallback;,
        Lio/rong/imlib/RongIMClient$UploadMediaCallback;,
        Lio/rong/imlib/RongIMClient$SendImageMessageCallback;,
        Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;,
        Lio/rong/imlib/RongIMClient$uploadImageStatusListener;,
        Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;,
        Lio/rong/imlib/RongIMClient$SendMessageCallback;,
        Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;,
        Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;,
        Lio/rong/imlib/RongIMClient$ConnectionStatusListener;,
        Lio/rong/imlib/RongIMClient$OperationCallback;,
        Lio/rong/imlib/RongIMClient$ConnectCallback;,
        Lio/rong/imlib/RongIMClient$SyncCallback;,
        Lio/rong/imlib/RongIMClient$ResultCallback;,
        Lio/rong/imlib/RongIMClient$Callback;,
        Lio/rong/imlib/RongIMClient$ErrorCode;,
        Lio/rong/imlib/RongIMClient$StatusListener;,
        Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;,
        Lio/rong/imlib/RongIMClient$AidlConnection;,
        Lio/rong/imlib/RongIMClient$DisconnectRunnable;,
        Lio/rong/imlib/RongIMClient$ReconnectRunnable;,
        Lio/rong/imlib/RongIMClient$ConnectRunnable;,
        Lio/rong/imlib/RongIMClient$RegRunnable;
    }
.end annotation


# static fields
.field private static RECONNECT_COUNT:I

.field private static RECONNECT_INTERVAL:I

.field private static mAidlConnection:Lio/rong/imlib/RongIMClient$AidlConnection;

.field private static mCurrentProcessName:Ljava/lang/String;

.field static mHandler:Landroid/os/Handler;

.field private static mMainProcessName:Ljava/lang/String;

.field private static mOnReceivePushMessageListener:Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;

.field private static reconnectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sConnectionListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

.field private static sReceiveMessageListener:Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

.field static sS:Lio/rong/imlib/RongIMClient;

.field private static sStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChatroomCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectChangeReceiver:Lio/rong/imlib/ConnectChangeReceiver;

.field private mConnectRunnable:Lio/rong/imlib/RongIMClient$ConnectRunnable;

.field mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

.field mContext:Landroid/content/Context;

.field private mCurrentUserId:Ljava/lang/String;

.field private mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

.field private mHasConnect:Z

.field private mIsBind:Z

.field mLibHandler:Lio/rong/imlib/IHandler;

.field private mReconnectCount:I

.field private mReconnectInterval:[I

.field private mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

.field mRegCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;

.field private mToken:Ljava/lang/String;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x5

    sput v0, Lio/rong/imlib/RongIMClient;->RECONNECT_COUNT:I

    .line 116
    const/16 v0, 0x7d0

    sput v0, Lio/rong/imlib/RongIMClient;->RECONNECT_INTERVAL:I

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    .line 121
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->CONNECTED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->BIZ_ERROR_RECONNECT_SUCCESS:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_DISCONN_KICK:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->KICKED_OFFLINE_BY_OTHER_CLIENT:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_USER_OR_PASSWD_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->TOKEN_INCORRECT:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_SERVER_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->SERVER_INVALID:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_PROTO_VERSION_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_ID_REJECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_NOT_AUTHRORIZED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_REDIRECTED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_PACKAGE_NAME_INVALID:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_APP_BLOCKED_OR_DELETED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_USER_BLOCKED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_DISCONN_EXCEPTION:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_QUERY_ACK_NO_DATA:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_MSG_DATA_INCOMPLETE:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->BIZ_ERROR_CLIENT_NOT_INIT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->BIZ_ERROR_DATABASE_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->BIZ_ERROR_INVALID_PARAMETER:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->BIZ_ERROR_NO_CHANNEL:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->BIZ_ERROR_CONNECTING:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_NET_CHANNEL_INVALID:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_NET_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_MSG_RESP_TIMEOUT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_HTTP_SEND_FAIL:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_HTTP_REQ_TIMEOUT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_HTTP_RECV_FAIL:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_NAVI_RESOURCE_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_NODE_NOT_FOUND:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_DOMAIN_NOT_RESOLVE:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_SOCKET_NOT_CREATED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_SOCKET_DISCONNECTED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_PONG_RECV_FAIL:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_ACK_TIMEOUT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    .line 167
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_NET_CHANNEL_INVALID:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_NET_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_MSG_RESP_TIMEOUT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_SOCKET_NOT_CREATED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_SOCKET_DISCONNECTED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_SERVER_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_MSG_SEND_FAIL:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sget-object v0, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    iput-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imlib/RongIMClient;->mReconnectCount:I

    .line 115
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lio/rong/imlib/RongIMClient;->mReconnectInterval:[I

    .line 178
    return-void

    .line 115
    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x8
        0x10
        0x20
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    .line 114
    const/4 v1, 0x0

    iput v1, p0, Lio/rong/imlib/RongIMClient;->mReconnectCount:I

    .line 115
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mReconnectInterval:[I

    .line 196
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    .line 197
    iput-object p1, p0, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mRegCache:Ljava/util/List;

    .line 199
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mChatroomCache:Ljava/util/Set;

    .line 200
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "IPC_WORK"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mWorkThread:Landroid/os/HandlerThread;

    .line 201
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 202
    new-instance v1, Lio/rong/imlib/RongIMClient$StatusListener;

    invoke-direct {v1, p0}, Lio/rong/imlib/RongIMClient$StatusListener;-><init>(Lio/rong/imlib/RongIMClient;)V

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;

    .line 203
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    .line 204
    new-instance v1, Lio/rong/imlib/RongIMClient$AidlConnection;

    invoke-direct {v1, p0}, Lio/rong/imlib/RongIMClient$AidlConnection;-><init>(Lio/rong/imlib/RongIMClient;)V

    sput-object v1, Lio/rong/imlib/RongIMClient;->mAidlConnection:Lio/rong/imlib/RongIMClient$AidlConnection;

    .line 205
    new-instance v1, Lio/rong/imlib/ConnectChangeReceiver;

    invoke-direct {v1}, Lio/rong/imlib/ConnectChangeReceiver;-><init>()V

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mConnectChangeReceiver:Lio/rong/imlib/ConnectChangeReceiver;

    .line 207
    invoke-direct {p0}, Lio/rong/imlib/RongIMClient;->initBindService()V

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/rong/push/CommandService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 213
    return-void

    .line 115
    :array_0
    .array-data 4
        0x1
        0x4
        0x8
        0x10
        0x20
    .end array-data
.end method

.method static synthetic access$000(Lio/rong/imlib/RongIMClient;)I
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 84
    iget v0, p0, Lio/rong/imlib/RongIMClient;->mReconnectCount:I

    return v0
.end method

.method static synthetic access$002(Lio/rong/imlib/RongIMClient;I)I
    .locals 0
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lio/rong/imlib/RongIMClient;->mReconnectCount:I

    return p1
.end method

.method static synthetic access$008(Lio/rong/imlib/RongIMClient;)I
    .locals 2
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 84
    iget v0, p0, Lio/rong/imlib/RongIMClient;->mReconnectCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/rong/imlib/RongIMClient;->mReconnectCount:I

    return v0
.end method

.method static synthetic access$100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    return-object v0
.end method

.method static synthetic access$1000(Lio/rong/imlib/RongIMClient;)V
    .locals 0
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 84
    invoke-direct {p0}, Lio/rong/imlib/RongIMClient;->initMessageReceiver()V

    return-void
.end method

.method static synthetic access$102(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ReconnectRunnable;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;
    .locals 0
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;
    .param p1, "x1"    # Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    .prologue
    .line 84
    iput-object p1, p0, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    return-object p1
.end method

.method static synthetic access$1100(Lio/rong/imlib/RongIMClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mCurrentUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lio/rong/imlib/RongIMClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lio/rong/imlib/RongIMClient;->mCurrentUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lio/rong/imlib/RongIMClient;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/Map;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/List;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500()Lio/rong/imlib/RongIMClient$ConnectionStatusListener;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lio/rong/imlib/RongIMClient;->sConnectionListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    return-object v0
.end method

.method static synthetic access$1600(Lio/rong/imlib/RongIMClient;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mChatroomCache:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1700(Lio/rong/imlib/RongIMClient;Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 0
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->reJoinChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    return-void
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lio/rong/imlib/RongIMClient;->RECONNECT_COUNT:I

    return v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lio/rong/imlib/RongIMClient;->RECONNECT_INTERVAL:I

    return v0
.end method

.method static synthetic access$200(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$StatusListener;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;

    return-object v0
.end method

.method static synthetic access$2000(Lio/rong/imlib/RongIMClient;)[I
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mReconnectInterval:[I

    return-object v0
.end method

.method static synthetic access$2100()Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lio/rong/imlib/RongIMClient;->sReceiveMessageListener:Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$DisconnectRunnable;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    return-object v0
.end method

.method static synthetic access$302(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$DisconnectRunnable;)Lio/rong/imlib/RongIMClient$DisconnectRunnable;
    .locals 0
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;
    .param p1, "x1"    # Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    .prologue
    .line 84
    iput-object p1, p0, Lio/rong/imlib/RongIMClient;->mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    return-object p1
.end method

.method static synthetic access$400(Lio/rong/imlib/RongIMClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lio/rong/imlib/RongIMClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lio/rong/imlib/RongIMClient;)Z
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 84
    iget-boolean v0, p0, Lio/rong/imlib/RongIMClient;->mHasConnect:Z

    return v0
.end method

.method static synthetic access$502(Lio/rong/imlib/RongIMClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lio/rong/imlib/RongIMClient;->mHasConnect:Z

    return p1
.end method

.method static synthetic access$602(Lio/rong/imlib/RongIMClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lio/rong/imlib/RongIMClient;->mIsBind:Z

    return p1
.end method

.method static synthetic access$700(Lio/rong/imlib/RongIMClient;)V
    .locals 0
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 84
    invoke-direct {p0}, Lio/rong/imlib/RongIMClient;->initConnectionStatus()V

    return-void
.end method

.method static synthetic access$800(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ConnectChangeReceiver;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectChangeReceiver:Lio/rong/imlib/ConnectChangeReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ConnectRunnable;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/RongIMClient;

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectRunnable:Lio/rong/imlib/RongIMClient$ConnectRunnable;

    return-object v0
.end method

.method public static clearNotifications()V
    .locals 1

    .prologue
    .line 4334
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/notification/PushNotificationManager;->onRemoveNotificationMsgFromCache()V

    .line 4335
    return-void
.end method

.method public static connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imlib/RongIMClient;
    .locals 5
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "callback"    # Lio/rong/imlib/RongIMClient$ConnectCallback;

    .prologue
    .line 500
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v1, :cond_0

    .line 501
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 503
    :cond_0
    if-nez p0, :cond_1

    .line 504
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Token\u4e0d\u80fd\u4e3a\u7a7a\u3002"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_1
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTING:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-ne v1, v2, :cond_2

    .line 507
    const-string v1, "RongIMClient"

    const-string v2, "RongIMClient : connect"

    const-string v3, "Client is connecting!"

    invoke-static {v1, v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    .line 596
    :goto_0
    return-object v1

    .line 511
    :cond_2
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    if-eqz v1, :cond_3

    .line 512
    sget-object v1, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    sget-object v2, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 513
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    const/4 v2, 0x0

    iput-object v2, v1, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    .line 516
    :cond_3
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iput-object p0, v1, Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;

    .line 518
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_4

    .line 519
    const-string v1, "RongIMClient"

    const-string v2, "RongIMClient : connect"

    const-string v3, "mLibHandler is null, connect waiting for bind service"

    invoke-static {v1, v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    new-instance v2, Lio/rong/imlib/RongIMClient$ConnectRunnable;

    invoke-direct {v2, p0, p1}, Lio/rong/imlib/RongIMClient$ConnectRunnable;-><init>(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)V

    iput-object v2, v1, Lio/rong/imlib/RongIMClient;->mConnectRunnable:Lio/rong/imlib/RongIMClient$ConnectRunnable;

    .line 594
    :goto_1
    const-string v1, "RongIMClient"

    const-string v2, "RongIMClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    goto :goto_0

    .line 522
    :cond_4
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTING:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$StatusListener;->onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 524
    :try_start_0
    const-string v1, "RongIMClient"

    const-string v2, "RongIMClient : connect"

    const-string/jumbo v3, "service binded, connect"

    invoke-static {v1, v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    new-instance v2, Lio/rong/imlib/RongIMClient$1;

    invoke-direct {v2, p1}, Lio/rong/imlib/RongIMClient$1;-><init>(Lio/rong/imlib/RongIMClient$ConnectCallback;)V

    invoke-interface {v1, p0, v2}, Lio/rong/imlib/IHandler;->connect(Ljava/lang/String;Lio/rong/imlib/IStringCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RongIMClient"

    const-string v2, "RongIMClient : connect"

    const-string v3, "RemoteException"

    invoke-static {v1, v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private filterNatiMessageve(Lio/rong/imlib/model/Message;)Z
    .locals 2
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 5278
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    .line 5279
    .local v0, "content":Lio/rong/imlib/model/MessageContent;
    instance-of v1, v0, Lio/rong/message/DiscussionNotificationMessage;

    if-eqz v1, :cond_0

    .line 5283
    const/4 v1, 0x1

    .line 5285
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lio/rong/imlib/RongIMClient;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 404
    if-nez p0, :cond_0

    .line 405
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Context\u5f02\u5e38"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 407
    :cond_0
    sget-object v3, Lio/rong/imlib/RongIMClient;->mCurrentProcessName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 408
    invoke-static {p0}, Lio/rong/common/SystemUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lio/rong/imlib/RongIMClient;->mCurrentProcessName:Ljava/lang/String;

    .line 411
    :cond_1
    sget-object v3, Lio/rong/imlib/RongIMClient;->mMainProcessName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lio/rong/imlib/RongIMClient;->mMainProcessName:Ljava/lang/String;

    .line 414
    :cond_2
    const-string v3, "RongIMClient : init"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "process = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/RongIMClient;->mCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", main = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/RongIMClient;->mMainProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    sget-object v3, Lio/rong/imlib/RongIMClient;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-object v3, Lio/rong/imlib/RongIMClient;->mCurrentProcessName:Ljava/lang/String;

    const-string v4, "io.rong.push"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 418
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v3

    invoke-virtual {v3, p0}, Lio/rong/push/PushContext;->init(Landroid/content/Context;)V

    .line 478
    :cond_3
    :goto_0
    return-void

    .line 422
    :cond_4
    sget-object v3, Lio/rong/imlib/RongIMClient;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v3, :cond_5

    sget-object v3, Lio/rong/imlib/RongIMClient;->mCurrentProcessName:Ljava/lang/String;

    const-string v4, ":ipc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 426
    :cond_5
    sget-object v3, Lio/rong/imlib/RongIMClient;->mMainProcessName:Ljava/lang/String;

    if-eqz v3, :cond_6

    sget-object v3, Lio/rong/imlib/RongIMClient;->mMainProcessName:Ljava/lang/String;

    sget-object v4, Lio/rong/imlib/RongIMClient;->mCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 430
    :cond_6
    invoke-static {p0}, Lio/rong/imlib/LibContext;->init(Landroid/content/Context;)V

    .line 431
    invoke-static {}, Lio/rong/imlib/LibContext;->getInstance()Lio/rong/imlib/LibContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/LibContext;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 433
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 434
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "RONG_CLOUD_APP_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 436
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "can\'t find RONG_CLOUD_APP_KEY in AndroidManifest.xml."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 442
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 443
    new-instance v3, Ljava/lang/ExceptionInInitializerError;

    const-string v4, "can\'t find packageName!"

    invoke-direct {v3, v4}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 438
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appKey":Ljava/lang/String;
    .restart local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_7
    :try_start_1
    invoke-static {}, Lio/rong/imlib/LibContext;->getInstance()Lio/rong/imlib/LibContext;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/rong/imlib/LibContext;->setAppKey(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 447
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_8
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v3, :cond_9

    .line 448
    new-instance v3, Lio/rong/imlib/RongIMClient;

    invoke-direct {v3, p0}, Lio/rong/imlib/RongIMClient;-><init>(Landroid/content/Context;)V

    sput-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    .line 452
    :goto_1
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lio/rong/notification/PushNotificationManager;->init(Landroid/content/Context;)V

    .line 454
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-static {}, Lio/rong/imlib/LibContext;->getInstance()Lio/rong/imlib/LibContext;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/LibContext;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lio/rong/imlib/RongIMClient;->initStatistics(Landroid/content/Context;Ljava/lang/String;)V

    .line 457
    :try_start_2
    const-class v3, Lio/rong/message/TextMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 458
    const-class v3, Lio/rong/message/VoiceMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 459
    const-class v3, Lio/rong/message/ImageMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 460
    const-class v3, Lio/rong/message/LocationMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 461
    const-class v3, Lio/rong/message/CommandNotificationMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 462
    const-class v3, Lio/rong/message/ContactNotificationMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 463
    const-class v3, Lio/rong/message/RichContentMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 464
    const-class v3, Lio/rong/message/PublicServiceMultiRichContentMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 465
    const-class v3, Lio/rong/message/PublicServiceRichContentMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 466
    const-class v3, Lio/rong/message/PublicServiceCommandMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 467
    const-class v3, Lio/rong/message/ProfileNotificationMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 468
    const-class v3, Lio/rong/message/HandshakeMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 469
    const-class v3, Lio/rong/message/InformationNotificationMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 470
    const-class v3, Lio/rong/message/DiscussionNotificationMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 471
    const-class v3, Lio/rong/message/SuspendMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 472
    const-class v3, Lio/rong/message/ReadReceiptMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 473
    const-class v3, Lio/rong/message/CommandMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 474
    const-class v3, Lio/rong/imlib/TypingMessage/IsTypingStatusMessage;

    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V
    :try_end_2
    .catch Lio/rong/imlib/AnnotationNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 475
    :catch_1
    move-exception v2

    .line 476
    .local v2, "e":Lio/rong/imlib/AnnotationNotFoundException;
    invoke-virtual {v2}, Lio/rong/imlib/AnnotationNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 450
    .end local v2    # "e":Lio/rong/imlib/AnnotationNotFoundException;
    :cond_9
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    invoke-direct {v3}, Lio/rong/imlib/RongIMClient;->initBindService()V

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 486
    invoke-static {p0}, Lio/rong/imlib/LibContext;->init(Landroid/content/Context;)V

    .line 487
    invoke-static {}, Lio/rong/imlib/LibContext;->getInstance()Lio/rong/imlib/LibContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imlib/LibContext;->setAppKey(Ljava/lang/String;)V

    .line 488
    invoke-static {p0}, Lio/rong/imlib/RongIMClient;->init(Landroid/content/Context;)V

    .line 489
    return-void
.end method

.method private initBindService()V
    .locals 4

    .prologue
    .line 216
    const-string v1, "initBindService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsBind = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lio/rong/imlib/RongIMClient;->mIsBind:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-boolean v1, p0, Lio/rong/imlib/RongIMClient;->mIsBind:Z

    if-nez v1, :cond_0

    .line 218
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    const-class v2, Lio/rong/imlib/ipc/RongService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    sget-object v2, Lio/rong/imlib/RongIMClient;->mAidlConnection:Lio/rong/imlib/RongIMClient$AidlConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 222
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initConnectionStatus()V
    .locals 4

    .prologue
    .line 5236
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_0

    .line 5237
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    const-string v2, "initConnectionStatus"

    const-string v3, "mLibHandler is null"

    invoke-static {v1, v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 5245
    :goto_0
    return-void

    .line 5240
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;

    invoke-interface {v1, v2}, Lio/rong/imlib/IHandler;->setConnectionStatusListener(Lio/rong/imlib/IConnectionStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5241
    :catch_0
    move-exception v0

    .line 5242
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    const-string v2, "mLibHandler"

    const-string/jumbo v3, "setConnectionStatusListener"

    invoke-static {v1, v2, v3, v0}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5243
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private initMessageReceiver()V
    .locals 4

    .prologue
    .line 5249
    const-string v1, "INIT"

    const-string v2, "initMessageReceiver"

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 5252
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_0

    .line 5253
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    const-string v2, "initMessageReceiver"

    const-string v3, "mLibHandler is null"

    invoke-static {v1, v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 5271
    :goto_0
    return-void

    .line 5256
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    new-instance v2, Lio/rong/imlib/RongIMClient$92;

    invoke-direct {v2, p0}, Lio/rong/imlib/RongIMClient$92;-><init>(Lio/rong/imlib/RongIMClient;)V

    invoke-interface {v1, v2}, Lio/rong/imlib/IHandler;->setOnReceiveMessageListener(Lio/rong/imlib/OnReceiveMessageListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5268
    :catch_0
    move-exception v0

    .line 5269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private initStatistics(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/statistics/Statistics;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    :goto_0
    return-void

    .line 389
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "rongcloud"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-static {p1}, Lio/rong/common/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Lio/rong/imlib/statistics/Statistics;->enablePublicKeyPinning(Ljava/util/List;)Lio/rong/imlib/statistics/Statistics;

    .line 393
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v2

    const-string v3, "https://stats.cn.ronghub.com/active.json"

    invoke-virtual {v2, p1, v3, p2, v1}, Lio/rong/imlib/statistics/Statistics;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imlib/statistics/Statistics;

    .line 395
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/statistics/Statistics;->onStart()V

    goto :goto_0
.end method

.method private reJoinChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "chatroomId"    # Ljava/lang/String;
    .param p2, "defMessageCount"    # I
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 4090
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 4091
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4093
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4094
    const-string v0, "RongIMClient"

    const-string v1, "id is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4133
    :goto_0
    return-void

    .line 4098
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$72;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$72;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static recordNotificationEvent(Ljava/lang/String;)V
    .locals 3
    .param p0, "pushId"    # Ljava/lang/String;

    .prologue
    .line 5293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5295
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5296
    :cond_0
    const-string v1, "RongIMClient"

    const-string v2, "pushId can\'t be null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5308
    :goto_0
    return-void

    .line 5300
    :cond_1
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/statistics/Statistics;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5301
    const-string v1, "RongIMClient"

    const-string v2, "Statistics should be initialized firstly!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5304
    :cond_2
    const-string v1, "RongIMClient"

    const-string/jumbo v2, "recordNotificationEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5305
    const-string v1, "id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5306
    const-string v1, "osName"

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5307
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v1

    const-string v2, "pushEvent"

    invoke-virtual {v1, v2, v0}, Lio/rong/imlib/statistics/Statistics;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static registerMessageType(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/rong/imlib/model/MessageContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/imlib/AnnotationNotFoundException;
        }
    .end annotation

    .prologue
    .line 722
    .local p0, "messageContentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v1, :cond_0

    .line 723
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 725
    :cond_0
    if-nez p0, :cond_1

    .line 726
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MessageContent \u4e3a\u7a7a\uff01"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 728
    :cond_1
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    const-string/jumbo v2, "registerMessageType"

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_3

    .line 730
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mRegCache:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 731
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mRegCache:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_2
    :goto_0
    return-void

    .line 735
    :cond_3
    :try_start_0
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/rong/imlib/IHandler;->registerMessageType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setConnectionStatusListener(Lio/rong/imlib/RongIMClient$ConnectionStatusListener;)V
    .locals 0
    .param p0, "listener"    # Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    .prologue
    .line 696
    sput-object p0, Lio/rong/imlib/RongIMClient;->sConnectionListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    .line 697
    return-void
.end method

.method public static setOnReceiveMessageListener(Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;)V
    .locals 3
    .param p0, "listener"    # Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    .prologue
    .line 708
    if-eqz p0, :cond_0

    .line 709
    const-string v0, "RongIMClient \uff1a setOnReceiveMessageListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    sput-object p0, Lio/rong/imlib/RongIMClient;->sReceiveMessageListener:Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    .line 712
    return-void
.end method

.method public static setOnReceivePushMessageListener(Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;)V
    .locals 0
    .param p0, "listener"    # Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;

    .prologue
    .line 5135
    sput-object p0, Lio/rong/imlib/RongIMClient;->mOnReceivePushMessageListener:Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;

    .line 5136
    return-void
.end method

.method public static setTypingMessageStatusListener(Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;)V
    .locals 0
    .param p0, "listener"    # Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;

    .prologue
    .line 6740
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    invoke-static {p0}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->setTypingMessageStatusListener(Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;)V

    .line 6741
    return-void
.end method


# virtual methods
.method public addMemberToDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/rong/imlib/RongIMClient$OperationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2677
    .local p2, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2678
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2680
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2681
    :cond_1
    const-string v0, "RongIMClient"

    const-string v1, "discussionId or userIdList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2722
    :goto_0
    return-void

    .line 2686
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$47;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$47;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public addRealTimeLocationListener(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$RealTimeLocationListener;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "listener"    # Lio/rong/imlib/RongIMClient$RealTimeLocationListener;

    .prologue
    .line 6556
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 6557
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6559
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 6560
    :cond_1
    const-string v0, "addRealTimeLocationListener"

    const-string v1, "Type or id is null!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 6637
    :goto_0
    return-void

    .line 6564
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$94;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imlib/RongIMClient$94;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$RealTimeLocationListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 4345
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 4346
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4348
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4349
    const-string v0, "RongIMClient"

    const-string/jumbo v1, "userId  is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4350
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4391
    :goto_0
    return-void

    .line 4354
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$77;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$77;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public varargs clearConversations(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 2
    .param p1, "callback"    # Lio/rong/imlib/RongIMClient$ResultCallback;
    .param p2, "conversationTypes"    # [Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 4252
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 4253
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "conversationTypes is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p1, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4289
    :goto_0
    return-void

    .line 4257
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$75;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/RongIMClient$75;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public varargs clearConversations([Lio/rong/imlib/model/Conversation$ConversationType;)Z
    .locals 4
    .param p1, "conversationTypes"    # [Lio/rong/imlib/model/Conversation$ConversationType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4299
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4300
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 4301
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 4303
    new-instance v3, Lio/rong/imlib/RongIMClient$76;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$76;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3, p1}, Lio/rong/imlib/RongIMClient;->clearConversations(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 4323
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4327
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 4324
    :catch_0
    move-exception v0

    .line 4325
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1878
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1879
    :cond_0
    const-string v0, "RongIMClient."

    const-string/jumbo v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1907
    :goto_0
    return-void

    .line 1883
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$29;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imlib/RongIMClient$29;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1836
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1838
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1839
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1841
    new-instance v3, Lio/rong/imlib/RongIMClient$28;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$28;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1862
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1867
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 1863
    :catch_0
    move-exception v0

    .line 1864
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1959
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1960
    :cond_0
    const-string v0, "RongIMClient."

    const-string/jumbo v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1993
    :goto_0
    return-void

    .line 1964
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$31;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imlib/RongIMClient$31;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1919
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1921
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1922
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1924
    new-instance v3, Lio/rong/imlib/RongIMClient$30;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$30;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1943
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1948
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 1944
    :catch_0
    move-exception v0

    .line 1945
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 3
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2453
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    new-instance v0, Lio/rong/imlib/model/Conversation;

    invoke-direct {v0}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 2454
    .local v0, "conversation":Lio/rong/imlib/model/Conversation;
    invoke-virtual {v0, p1}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 2455
    invoke-virtual {v0, p2}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 2457
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 2458
    :cond_0
    const-string v1, "RongIMClient."

    const-string/jumbo v2, "the value of targetId or ConversationType is error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2484
    :goto_0
    return-void

    .line 2462
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lio/rong/imlib/RongIMClient$43;

    invoke-direct {v2, p0, p3, v0}, Lio/rong/imlib/RongIMClient$43;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2411
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2413
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2414
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 2416
    new-instance v3, Lio/rong/imlib/RongIMClient$42;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$42;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2437
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2442
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 2438
    :catch_0
    move-exception v0

    .line 2439
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2612
    .local p2, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2613
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2615
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2616
    :cond_1
    const-string v0, "RongIMClient"

    const-string v1, "name or userIdList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2666
    :goto_0
    return-void

    .line 2621
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$46;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$46;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public deleteMessages([ILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "messageIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1796
    .local p2, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 1797
    :cond_0
    const-string v0, "RongIMClient."

    const-string/jumbo v1, "the messageIds is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1825
    :goto_0
    return-void

    .line 1801
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$27;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$27;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public deleteMessages([I)Z
    .locals 4
    .param p1, "messageIds"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1757
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1759
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1760
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1762
    new-instance v3, Lio/rong/imlib/RongIMClient$26;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$26;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, v3}, Lio/rong/imlib/RongIMClient;->deleteMessages([ILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1781
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1786
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 1782
    :catch_0
    move-exception v0

    .line 1783
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/rong/imlib/RongIMClient;->disconnect(Z)V

    .line 642
    return-void
.end method

.method public disconnect(Z)V
    .locals 4
    .param p1, "isReceivePush"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 653
    const-string v0, "disconnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReceivePush = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mConnectionStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v0, :cond_1

    .line 655
    const-string v0, "disconnect"

    const-string v1, "IPC service unbind!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mChatroomCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 660
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    if-eqz v0, :cond_2

    .line 661
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 662
    iput-object v3, p0, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    .line 664
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imlib/RongIMClient;->mReconnectCount:I

    .line 666
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTING:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-ne v0, v1, :cond_4

    .line 669
    :cond_3
    new-instance v0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    invoke-direct {v0, p0, p1}, Lio/rong/imlib/RongIMClient$DisconnectRunnable;-><init>(Lio/rong/imlib/RongIMClient;Z)V

    iput-object v0, p0, Lio/rong/imlib/RongIMClient;->mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    .line 671
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-ne v0, v1, :cond_0

    .line 672
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 676
    :cond_4
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-eq v0, v1, :cond_0

    .line 677
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$StatusListener;->onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 678
    iput-object v3, p0, Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public downloadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$MediaType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V
    .locals 7
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "mediaType"    # Lio/rong/imlib/RongIMClient$MediaType;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "callback"    # Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    .prologue
    .line 3514
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 3515
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3517
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3518
    :cond_1
    const-string v0, "RongIMClient"

    const-string/jumbo v1, "\u53c2\u6570\u5f02\u5e38\u3002"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p5, v0}, Lio/rong/imlib/RongIMClient$DownloadMediaCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3572
    :goto_0
    return-void

    .line 3523
    :cond_2
    new-instance v3, Lio/rong/imlib/model/Conversation;

    invoke-direct {v3}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 3524
    .local v3, "conversation":Lio/rong/imlib/model/Conversation;
    invoke-virtual {v3, p2}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 3525
    invoke-virtual {v3, p1}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 3527
    iget-object v6, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$62;

    move-object v1, p0

    move-object v2, p5

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$62;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;Lio/rong/imlib/model/Conversation;Lio/rong/imlib/RongIMClient$MediaType;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getBlacklist(Lio/rong/imlib/RongIMClient$GetBlacklistCallback;)V
    .locals 2
    .param p1, "callback"    # Lio/rong/imlib/RongIMClient$GetBlacklistCallback;

    .prologue
    .line 4506
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 4507
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4509
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$80;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$80;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$GetBlacklistCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4547
    return-void
.end method

.method public getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/RongIMClient$BlacklistStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4455
    .local p2, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/RongIMClient$BlacklistStatus;>;"
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 4456
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4458
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4459
    const-string v0, "RongIMClient"

    const-string/jumbo v1, "userId  is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4460
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4497
    :goto_0
    return-void

    .line 4464
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$79;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$79;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getChatRoomInfo(Ljava/lang/String;ILio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .param p1, "chatroomId"    # Ljava/lang/String;
    .param p2, "defMemberCount"    # I
    .param p3, "order"    # Lio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/ChatRoomInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3971
    .local p4, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/ChatRoomInfo;>;"
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 3972
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3974
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3975
    const-string v0, "RongIMClient"

    const-string v1, "id is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4019
    :goto_0
    return-void

    .line 3980
    :cond_1
    iget-object v6, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$70;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$70;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;ILio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 978
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 980
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 981
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Conversation;>;"
    new-instance v3, Lio/rong/imlib/RongIMClient$8;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$8;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 996
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Lio/rong/imlib/model/Conversation;

    return-object v3

    .line 997
    :catch_0
    move-exception v0

    .line 998
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 898
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Conversation;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 899
    :cond_0
    const-string v0, "getConversation."

    const-string/jumbo v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 927
    :goto_0
    return-void

    .line 903
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$6;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$6;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getConversationList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 783
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 785
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 786
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/util/List<Lio/rong/imlib/model/Conversation;>;>;"
    new-instance v3, Lio/rong/imlib/RongIMClient$3;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$3;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Lio/rong/imlib/RongIMClient;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 801
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    return-object v3

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs getConversationList([Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;
    .locals 4
    .param p1, "types"    # [Lio/rong/imlib/model/Conversation$ConversationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 862
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 863
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 865
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/util/List<Lio/rong/imlib/model/Conversation;>;>;"
    new-instance v3, Lio/rong/imlib/RongIMClient$5;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$5;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3, p1}, Lio/rong/imlib/RongIMClient;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 880
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    return-object v3

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Conversation;>;>;"
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$2;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 774
    return-void
.end method

.method public varargs getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 2
    .param p2, "conversationTypes"    # [Lio/rong/imlib/model/Conversation$ConversationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;>;[",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 817
    .local p1, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Conversation;>;>;"
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$4;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/RongIMClient$4;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 850
    return-void
.end method

.method public getConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3582
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;>;"
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3583
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "Parameter is error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3621
    :goto_0
    return-void

    .line 3587
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$63;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$63;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3914
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 3915
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3917
    :cond_0
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient;->mCurrentUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeltaTime()J
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3927
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v3, :cond_0

    .line 3928
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3930
    :cond_0
    new-array v1, v7, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v6

    .line 3931
    .local v1, "deltaTime":[J
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3933
    .local v0, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v4, Lio/rong/imlib/RongIMClient$69;

    invoke-direct {v4, p0, v1, v0}, Lio/rong/imlib/RongIMClient$69;-><init>(Lio/rong/imlib/RongIMClient;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3952
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3957
    :goto_0
    aget-wide v4, v1, v6

    return-wide v4

    .line 3953
    :catch_0
    move-exception v2

    .line 3954
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDiscussion(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Discussion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2494
    .local p2, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Discussion;>;"
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2495
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2497
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2498
    const-string v0, "RongIMClient"

    const-string/jumbo v1, "the discussionId can\'t be empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2542
    :goto_0
    return-void

    .line 2502
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$44;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$44;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;II)Ljava/util/List;
    .locals 9
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "oldestMessageId"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1522
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1524
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v8}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1526
    .local v8, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    new-instance v5, Lio/rong/imlib/RongIMClient$21;

    invoke-direct {v5, p0, v8, v7}, Lio/rong/imlib/RongIMClient$21;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1541
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    :goto_0
    iget-object v0, v8, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 1542
    :catch_0
    move-exception v6

    .line 1543
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 10
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "objectName"    # Ljava/lang/String;
    .param p4, "oldestMessageId"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1561
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1563
    .local v8, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v9, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v9}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1565
    .local v9, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    new-instance v6, Lio/rong/imlib/RongIMClient$22;

    invoke-direct {v6, p0, v9, v8}, Lio/rong/imlib/RongIMClient$22;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1580
    :try_start_0
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1585
    :goto_0
    iget-object v0, v9, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 1581
    :catch_0
    move-exception v7

    .line 1582
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 8
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "oldestMessageId"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "II",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1712
    .local p5, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1713
    :cond_0
    const-string v0, "RongIMClient."

    const-string/jumbo v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p5, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1746
    :goto_0
    return-void

    .line 1717
    :cond_1
    iget-object v7, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$25;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lio/rong/imlib/RongIMClient$25;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;II)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 9
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "objectName"    # Ljava/lang/String;
    .param p4, "oldestMessageId"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1599
    .local p6, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1600
    :cond_0
    const-string v0, "RongIMClient."

    const-string/jumbo v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p6, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1634
    :goto_0
    return-void

    .line 1604
    :cond_1
    iget-object v8, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$23;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lio/rong/imlib/RongIMClient$23;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;II)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1439
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1441
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1443
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    new-instance v3, Lio/rong/imlib/RongIMClient$19;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$19;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, p3, v3}, Lio/rong/imlib/RongIMClient;->getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1458
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    return-object v3

    .line 1459
    :catch_0
    move-exception v0

    .line 1460
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "I",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1475
    .local p4, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1476
    :cond_0
    const-string v0, "RongIMClient."

    const-string/jumbo v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1509
    :goto_0
    return-void

    .line 1480
    :cond_1
    iget-object v6, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$20;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$20;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getMessage(ILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "messageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2846
    .local p2, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    if-gez p1, :cond_0

    .line 2847
    const-string v0, "RongIMClient"

    const-string v1, "getMessage::ConversationType or targetId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2875
    :goto_0
    return-void

    .line 2852
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$50;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$50;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getNotificationQuietHours(Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;)V
    .locals 2
    .param p1, "callback"    # Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;

    .prologue
    .line 5036
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$90;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$90;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5070
    return-void
.end method

.method public getOnReceivePushMessageListener()Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;
    .locals 1

    .prologue
    .line 5125
    sget-object v0, Lio/rong/imlib/RongIMClient;->mOnReceivePushMessageListener:Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;

    return-object v0
.end method

.method public getPublicServiceList(Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfileList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4843
    .local p1, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfileList;>;"
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 4844
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4846
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$86;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$86;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4879
    return-void
.end method

.method public getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "publicServiceType"    # Lio/rong/imlib/model/Conversation$PublicServiceType;
    .param p2, "publicServiceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$PublicServiceType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4790
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfile;>;"
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 4791
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4793
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4794
    :cond_1
    const-string v0, "RongIMClient"

    const-string v1, "Parameter  is error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4833
    :goto_0
    return-void

    .line 4799
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$85;

    invoke-direct {v1, p0, p3, p2, p1}, Lio/rong/imlib/RongIMClient$85;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$PublicServiceType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 6380
    sget-object v2, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v2, :cond_0

    .line 6381
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6383
    :cond_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v2, :cond_1

    .line 6384
    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NOT_INIT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .line 6398
    :goto_0
    return-object v2

    .line 6387
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 6388
    :cond_2
    const-string v2, "getRealTimeLocation"

    const-string v3, "Type or id is null!"

    invoke-static {p0, v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 6389
    const/4 v2, 0x0

    goto :goto_0

    .line 6392
    :cond_3
    const/4 v0, -0x1

    .line 6394
    .local v0, "code":I
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    invoke-interface {v2, v3, p2}, Lio/rong/imlib/IHandler;->setupRealTimeLocation(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 6398
    :goto_1
    invoke-static {v0}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->valueOf(I)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    move-result-object v2

    goto :goto_0

    .line 6395
    :catch_0
    move-exception v1

    .line 6396
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRealTimeLocationCurrentState(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    .locals 5
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 6525
    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v3, :cond_0

    .line 6526
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6528
    :cond_0
    iget-object v3, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v3, :cond_1

    .line 6544
    :goto_0
    return-object v2

    .line 6532
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 6533
    :cond_2
    const-string v3, "getRealTimeLocationCurrentState"

    const-string v4, "Type or id is null!"

    invoke-static {p0, v3, v4}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6537
    :cond_3
    const/4 v1, 0x0

    .line 6539
    .local v1, "state":I
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    invoke-interface {v2, v3, p2}, Lio/rong/imlib/IHandler;->getRealTimeLocationCurrentState(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6544
    :goto_1
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->valueOf(I)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v2

    goto :goto_0

    .line 6540
    :catch_0
    move-exception v0

    .line 6541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRealTimeLocationParticipants(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 6495
    sget-object v2, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v2, :cond_0

    .line 6496
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6498
    :cond_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v2, :cond_1

    .line 6513
    :goto_0
    return-object v1

    .line 6502
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 6503
    :cond_2
    const-string v2, "getRealTimeLocationParticipants"

    const-string v3, "Type or id is null!"

    invoke-static {p0, v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6507
    :cond_3
    const/4 v1, 0x0

    .line 6509
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    invoke-interface {v2, v3, p2}, Lio/rong/imlib/IHandler;->getRealTimeLocationParticipants(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 6510
    :catch_0
    move-exception v0

    .line 6511
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 9
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "dateTime"    # J
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "JI",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1647
    .local p6, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1648
    :cond_0
    const-string v0, "RongIMClient."

    const-string/jumbo v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p6, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1700
    :goto_0
    return-void

    .line 1652
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$24;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p6

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lio/rong/imlib/RongIMClient$24;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getSendTimeByMessageId(I)J
    .locals 5
    .param p1, "messageId"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 5018
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_0

    .line 5019
    const-string v1, "getSendTimeByMessageId"

    const-string v4, "mLibHandler is null!"

    invoke-static {p0, v1, v4}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 5026
    :goto_0
    return-wide v2

    .line 5023
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-interface {v1, p1}, Lio/rong/imlib/IHandler;->getSendTimeByMessageId(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 5024
    :catch_0
    move-exception v0

    .line 5025
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2247
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2249
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2251
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/String;>;"
    new-instance v3, Lio/rong/imlib/RongIMClient$38;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$38;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2266
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2271
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 2267
    :catch_0
    move-exception v0

    .line 2268
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 3
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2283
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/String;>;"
    new-instance v0, Lio/rong/imlib/model/Conversation;

    invoke-direct {v0}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 2284
    .local v0, "conversation":Lio/rong/imlib/model/Conversation;
    invoke-virtual {v0, p1}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 2285
    invoke-virtual {v0, p2}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 2287
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 2288
    :cond_0
    const-string v1, "RongIMClient."

    const-string/jumbo v2, "the value of targetId or ConversationType is error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2314
    :goto_0
    return-void

    .line 2292
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lio/rong/imlib/RongIMClient$39;

    invoke-direct {v2, p0, p3, v0}, Lio/rong/imlib/RongIMClient$39;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getTotalUnreadCount()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1222
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1223
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1224
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1226
    new-instance v3, Lio/rong/imlib/RongIMClient$14;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$14;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Lio/rong/imlib/RongIMClient;->getTotalUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1246
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTotalUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1181
    .local p1, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$13;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$13;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1213
    return-void
.end method

.method public getTypingUserListFromConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6720
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getTypingUserListFromConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1302
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1303
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1304
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1306
    new-instance v3, Lio/rong/imlib/RongIMClient$16;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$16;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1324
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;)I
    .locals 4
    .param p1, "conversationTypes"    # [Lio/rong/imlib/model/Conversation$ConversationType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1398
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1399
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1400
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1402
    new-instance v3, Lio/rong/imlib/RongIMClient$18;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$18;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3, p1}, Lio/rong/imlib/RongIMClient;->getUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1421
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs getUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 2
    .param p2, "conversationTypes"    # [Lio/rong/imlib/model/Conversation$ConversationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1338
    .local p1, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 1339
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "conversationTypes is null. Return directly!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p1, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1378
    :goto_0
    return-void

    .line 1344
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$17;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/RongIMClient$17;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1262
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1263
    :cond_0
    const-string v0, "getConversation."

    const-string/jumbo v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1291
    :goto_0
    return-void

    .line 1267
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$15;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$15;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 0
    .param p1, "conversationTypes"    # [Lio/rong/imlib/model/Conversation$ConversationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1387
    .local p2, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p2, p1}, Lio/rong/imlib/RongIMClient;->getUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1388
    return-void
.end method

.method public insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;
    .locals 9
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "senderUserId"    # Ljava/lang/String;
    .param p4, "content"    # Lio/rong/imlib/model/MessageContent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2936
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2938
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v8}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2940
    .local v8, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    new-instance v5, Lio/rong/imlib/RongIMClient$52;

    invoke-direct {v5, p0, v8, v7}, Lio/rong/imlib/RongIMClient$52;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2954
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2959
    :goto_0
    iget-object v0, v8, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imlib/model/Message;

    return-object v0

    .line 2955
    :catch_0
    move-exception v6

    .line 2956
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 8
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "senderUserId"    # Ljava/lang/String;
    .param p4, "content"    # Lio/rong/imlib/model/MessageContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/MessageContent;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2887
    .local p5, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2888
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "insertMessage::ConversationType or targetId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p5, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2923
    :goto_0
    return-void

    .line 2892
    :cond_1
    iget-object v7, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$51;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/rong/imlib/RongIMClient$51;-><init>(Lio/rong/imlib/RongIMClient;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public joinChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "chatroomId"    # Ljava/lang/String;
    .param p2, "defMessageCount"    # I
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 4030
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 4031
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4033
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4034
    const-string v0, "RongIMClient"

    const-string v1, "id is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4035
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4079
    :goto_0
    return-void

    .line 4039
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mChatroomCache:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4040
    invoke-direct {p0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->reJoinChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    goto :goto_0

    .line 4044
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$71;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$71;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "chatroomId"    # Ljava/lang/String;
    .param p2, "defMessageCount"    # I
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 4144
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 4145
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4147
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4148
    const-string v0, "RongIMClient"

    const-string v1, "id is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4149
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4189
    :goto_0
    return-void

    .line 4153
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mChatroomCache:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4154
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$73;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$73;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public joinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3805
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 3806
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3808
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3809
    :cond_1
    const-string v0, "RongIMClient"

    const-string v1, "groupId or groupName is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3848
    :goto_0
    return-void

    .line 3814
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$67;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$67;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public joinRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 6436
    sget-object v2, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v2, :cond_0

    .line 6437
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6439
    :cond_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v2, :cond_1

    .line 6440
    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NOT_INIT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .line 6454
    :goto_0
    return-object v2

    .line 6443
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 6444
    :cond_2
    const-string v2, "joinRealTimeLocation"

    const-string v3, "Type or id is null!"

    invoke-static {p0, v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 6445
    const/4 v2, 0x0

    goto :goto_0

    .line 6448
    :cond_3
    const/4 v0, -0x1

    .line 6450
    .local v0, "code":I
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    invoke-interface {v2, v3, p2}, Lio/rong/imlib/IHandler;->joinRealTimeLocation(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 6454
    :goto_1
    invoke-static {v0}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->valueOf(I)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    move-result-object v2

    goto :goto_0

    .line 6451
    :catch_0
    move-exception v1

    .line 6452
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 687
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/rong/imlib/RongIMClient;->disconnect(Z)V

    .line 688
    return-void
.end method

.method public quitChatRoom(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "chatroomId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 4199
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 4200
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4202
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4203
    const-string v0, "RongIMClient"

    const-string v1, "id is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4204
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4243
    :goto_0
    return-void

    .line 4208
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mChatroomCache:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4209
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$74;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$74;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public quitDiscussion(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 2792
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2793
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2795
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2796
    const-string v0, "RongIMClient"

    const-string v1, "discussionId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2837
    :goto_0
    return-void

    .line 2801
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$49;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$49;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public quitGroup(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3861
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 3862
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3864
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3865
    const-string v0, "RongIMClient"

    const-string v1, "groupId  is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3866
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3905
    :goto_0
    return-void

    .line 3870
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$68;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$68;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public quitRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 6464
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 6465
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6467
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 6468
    :cond_1
    const-string v0, "quitRealTimeLocation"

    const-string v1, "Type or id is null!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 6485
    :goto_0
    return-void

    .line 6472
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$93;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/RongIMClient$93;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public reconnect(Lio/rong/imlib/RongIMClient$ConnectCallback;)V
    .locals 5
    .param p1, "callback"    # Lio/rong/imlib/RongIMClient$ConnectCallback;

    .prologue
    .line 606
    const-string/jumbo v2, "reconnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mConnectionStatus :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 608
    if-eqz p1, :cond_0

    .line 609
    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_USER_OR_PASSWD_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p1, v2}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 615
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 617
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    sget-object v2, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    if-eqz v2, :cond_2

    .line 618
    sget-object v2, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    sget-object v3, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 619
    sget-object v2, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    const/4 v3, 0x0

    iput-object v3, v2, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    .line 622
    :cond_2
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v3, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-eq v2, v3, :cond_3

    .line 623
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;

    invoke-static {v2, p1}, Lio/rong/imlib/RongIMClient;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imlib/RongIMClient;

    goto :goto_0

    .line 627
    :cond_3
    if-nez v1, :cond_4

    .line 628
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;

    sget-object v3, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$StatusListener;->onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 630
    :cond_4
    if-eqz p1, :cond_0

    .line 631
    sget-object v2, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1014
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1015
    :cond_0
    const-string v0, "getConversation."

    const-string/jumbo v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1044
    :goto_0
    return-void

    .line 1019
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$9;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$9;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1057
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1059
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1060
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1062
    new-instance v3, Lio/rong/imlib/RongIMClient$10;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$10;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1083
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 4401
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 4402
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4404
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4405
    const-string v0, "RongIMClient"

    const-string/jumbo v1, "userId  is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4445
    :goto_0
    return-void

    .line 4410
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$78;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$78;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeMemberFromDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 2737
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2738
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2740
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2741
    :cond_1
    const-string v0, "RongIMClient"

    const-string v1, "discussionId or userId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2782
    :goto_0
    return-void

    .line 2746
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$48;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$48;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeNotificationQuietHours(Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 4948
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$88;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$88;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4980
    return-void
.end method

.method public saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 3
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2369
    .local p4, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    new-instance v0, Lio/rong/imlib/model/Conversation;

    invoke-direct {v0}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 2370
    .local v0, "conversation":Lio/rong/imlib/model/Conversation;
    invoke-virtual {v0, p1}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 2371
    invoke-virtual {v0, p2}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 2373
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 2374
    :cond_0
    const-string v1, "RongIMClient."

    const-string/jumbo v2, "the value of targetId or ConversationType is error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2400
    :goto_0
    return-void

    .line 2378
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lio/rong/imlib/RongIMClient$41;

    invoke-direct {v2, p0, p4, v0, p3}, Lio/rong/imlib/RongIMClient$41;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2326
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2328
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2329
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 2331
    new-instance v3, Lio/rong/imlib/RongIMClient$40;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$40;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, p3, v3}, Lio/rong/imlib/RongIMClient;->saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2352
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2357
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 2353
    :catch_0
    move-exception v0

    .line 2354
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public searchPublicService(Lio/rong/imlib/RongIMClient$SearchType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "searchType"    # Lio/rong/imlib/RongIMClient$SearchType;
    .param p2, "keywords"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$SearchType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfileList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4558
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfileList;>;"
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 4559
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4561
    :cond_0
    if-nez p1, :cond_1

    .line 4562
    const-string v0, "RongIMClient"

    const-string/jumbo v1, "searchType  is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4563
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4601
    :goto_0
    return-void

    .line 4567
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$81;

    invoke-direct {v1, p0, p3, p2, p1}, Lio/rong/imlib/RongIMClient$81;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SearchType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public searchPublicServiceByType(Lio/rong/imlib/model/Conversation$PublicServiceType;Lio/rong/imlib/RongIMClient$SearchType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .param p1, "publicServiceType"    # Lio/rong/imlib/model/Conversation$PublicServiceType;
    .param p2, "searchType"    # Lio/rong/imlib/RongIMClient$SearchType;
    .param p3, "keywords"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$PublicServiceType;",
            "Lio/rong/imlib/RongIMClient$SearchType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfileList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfileList;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4613
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 4614
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4616
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 4617
    :cond_1
    const-string v0, "RongIMClient"

    const-string/jumbo v1, "searchType  is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4618
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4671
    :goto_0
    return-void

    .line 4622
    :cond_2
    new-array v4, v2, [I

    aput v1, v4, v1

    .line 4624
    .local v4, "businessType":[I
    if-eqz p1, :cond_3

    .line 4626
    sget-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    if-ne p1, v0, :cond_4

    .line 4627
    const/4 v0, 0x2

    aput v0, v4, v1

    .line 4634
    :cond_3
    :goto_1
    iget-object v6, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$82;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$82;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;[ILio/rong/imlib/RongIMClient$SearchType;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4628
    :cond_4
    sget-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    if-ne p1, v0, :cond_3

    .line 4629
    aput v2, v4, v1

    goto :goto_1
.end method

.method public sendImageMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V
    .locals 3
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "content"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "pushContent"    # Ljava/lang/String;
    .param p5, "pushData"    # Ljava/lang/String;
    .param p6, "callback"    # Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    .prologue
    .line 3221
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v1, :cond_0

    .line 3222
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3224
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p3, :cond_2

    .line 3225
    :cond_1
    const-string v1, "RongIMClient"

    const-string v2, "Illegal parameter!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p6, v1}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3232
    :goto_0
    return-void

    .line 3230
    :cond_2
    invoke-static {p2, p1, p3}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 3231
    .local v0, "message":Lio/rong/imlib/model/Message;
    invoke-virtual {p0, v0, p4, p5, p6}, Lio/rong/imlib/RongIMClient;->sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V

    goto :goto_0
.end method

.method public sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V
    .locals 14
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "pushContent"    # Ljava/lang/String;
    .param p3, "pushData"    # Ljava/lang/String;
    .param p4, "callback"    # Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    .prologue
    .line 3244
    sget-object v2, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v2, :cond_0

    .line 3245
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3247
    :cond_0
    if-nez p1, :cond_1

    .line 3248
    const-string v2, "RongIMClient"

    const-string v3, "message is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3340
    :goto_0
    return-void

    .line 3253
    :cond_1
    new-instance v7, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v7}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 3254
    .local v7, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    iput-object p1, v7, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 3256
    new-instance v6, Lio/rong/imlib/RongIMClient$57;

    move-object/from16 v0, p4

    invoke-direct {v6, p0, v7, v0}, Lio/rong/imlib/RongIMClient$57;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V

    .line 3276
    .local v6, "sendMessageCallback":Lio/rong/imlib/RongIMClient$SendMessageCallback;
    new-instance v1, Lio/rong/imlib/RongIMClient$58;

    move-object v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Lio/rong/imlib/RongIMClient$58;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback$Result;)V

    .line 3309
    .local v1, "uploadMediaCallback":Lio/rong/imlib/RongIMClient$UploadMediaCallback;
    new-instance v13, Lio/rong/imlib/RongIMClient$59;

    move-object/from16 v0, p4

    invoke-direct {v13, p0, v7, v0, v1}, Lio/rong/imlib/RongIMClient$59;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;Lio/rong/imlib/RongIMClient$UploadMediaCallback;)V

    .line 3333
    .local v13, "insertCallback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v2

    if-gtz v2, :cond_2

    .line 3334
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v9

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v12

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0

    .line 3336
    :cond_2
    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {p1, v2}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 3337
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v2

    sget-object v3, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lio/rong/imlib/RongIMClient;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3338
    invoke-virtual {p0, p1, v1}, Lio/rong/imlib/RongIMClient;->uploadMedia(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$UploadMediaCallback;)V

    goto :goto_0
.end method

.method public sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;)V
    .locals 6
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "pushContent"    # Ljava/lang/String;
    .param p3, "pushData"    # Ljava/lang/String;
    .param p4, "callback"    # Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;

    .prologue
    .line 3356
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 3357
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3359
    :cond_0
    if-nez p1, :cond_1

    .line 3360
    const-string v0, "RongIMClient"

    const-string v1, "message is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v0}, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3389
    :goto_0
    return-void

    .line 3365
    :cond_1
    new-instance v5, Lio/rong/imlib/RongIMClient$60;

    invoke-direct {v5, p0, p4, p2, p3}, Lio/rong/imlib/RongIMClient$60;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 3388
    .local v5, "insertCallback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;
    .locals 12
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "content"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "pushContent"    # Ljava/lang/String;
    .param p5, "pushData"    # Ljava/lang/String;
    .param p6, "callback"    # Lio/rong/imlib/RongIMClient$SendMessageCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2976
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/rong/imlib/MessageTag;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lio/rong/imlib/MessageTag;

    .line 2977
    .local v10, "msgTag":Lio/rong/imlib/MessageTag;
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2978
    .local v9, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v11, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v11}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2980
    .local v11, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    new-instance v7, Lio/rong/imlib/RongIMClient$53;

    invoke-direct {v7, p0, v11, v9}, Lio/rong/imlib/RongIMClient$53;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2994
    :try_start_0
    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2999
    :goto_0
    iget-object v0, v11, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imlib/model/Message;

    return-object v0

    .line 2995
    :catch_0
    move-exception v8

    .line 2996
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;
    .locals 9
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "pushContent"    # Ljava/lang/String;
    .param p3, "pushData"    # Ljava/lang/String;
    .param p4, "callback"    # Lio/rong/imlib/RongIMClient$SendMessageCallback;

    .prologue
    .line 3180
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 3181
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3183
    :cond_0
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3185
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v8}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 3187
    .local v8, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    new-instance v5, Lio/rong/imlib/RongIMClient$56;

    invoke-direct {v5, p0, v8, v7}, Lio/rong/imlib/RongIMClient$56;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3201
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3205
    :goto_0
    iget-object v0, v8, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imlib/model/Message;

    return-object v0

    .line 3202
    :catch_0
    move-exception v6

    .line 3203
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "content"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "pushContent"    # Ljava/lang/String;
    .param p5, "pushData"    # Ljava/lang/String;
    .param p6, "callback"    # Lio/rong/imlib/RongIMClient$SendMessageCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/MessageContent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$SendMessageCallback;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3016
    .local p7, "resultCallback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 3017
    :cond_0
    const-string v0, "RongIMClient"

    const-string v2, "conversation type or targetId or content can\'t be null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p6, v0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3031
    :goto_0
    return-void

    .line 3022
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lio/rong/imlib/MessageTag;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lio/rong/imlib/MessageTag;

    .line 3024
    .local v6, "msgTag":Lio/rong/imlib/MessageTag;
    if-nez v6, :cond_2

    .line 3025
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "\u81ea\u5b9a\u4e49\u6d88\u606f\u6ca1\u6709\u52a0\u6ce8\u89e3\u4fe1\u606f\u3002"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3028
    :cond_2
    invoke-static {p2, p1, p3}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v1

    .local v1, "message":Lio/rong/imlib/model/Message;
    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 3029
    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 8
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "pushContent"    # Ljava/lang/String;
    .param p3, "pushData"    # Ljava/lang/String;
    .param p4, "callback"    # Lio/rong/imlib/RongIMClient$SendMessageCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$SendMessageCallback;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3044
    .local p5, "resultCallback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 3045
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3046
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3047
    :cond_1
    const-string v0, "RongIMClient"

    const-string v1, "message : conversation type or targetId or content can\'t be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3110
    :goto_0
    return-void

    .line 3052
    :cond_2
    iget-object v7, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$54;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/rong/imlib/RongIMClient$54;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public sendStatusMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$SendMessageCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "Lio/rong/imlib/RongIMClient$SendMessageCallback;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3121
    .local p3, "resultCallback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 3122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3124
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$55;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/rong/imlib/RongIMClient$55;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3167
    return-void
.end method

.method public sendTypingMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$Callback;)V
    .locals 1
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$Callback;

    .prologue
    .line 6731
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sendTypingMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$Callback;)V

    .line 6732
    return-void
.end method

.method public setConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "notificationStatus"    # Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3633
    .local p4, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;>;"
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 3634
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3636
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p3, :cond_2

    .line 3637
    :cond_1
    const-string v0, "RongIMClient"

    const-string v1, "Parameter is error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3676
    :goto_0
    return-void

    .line 3642
    :cond_2
    iget-object v6, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$64;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$64;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ZLio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "isTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Z",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1100
    .local p4, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1101
    :cond_0
    const-string v0, "getConversation."

    const-string/jumbo v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1132
    :goto_0
    return-void

    .line 1105
    :cond_1
    iget-object v6, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$11;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$11;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "isTop"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1144
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1145
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1146
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1148
    new-instance v3, Lio/rong/imlib/RongIMClient$12;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$12;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, p3, v3}, Lio/rong/imlib/RongIMClient;->setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ZLio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1168
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDiscussionInviteStatus(Ljava/lang/String;Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .param p2, "status"    # Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 3687
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 3688
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3690
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    .line 3691
    :cond_1
    const-string v0, "RongIMClient"

    const-string v1, "Parameter is error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3736
    :goto_0
    return-void

    .line 3696
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$65;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$65;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "discussionId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 2553
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 2554
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2556
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2557
    :cond_1
    const-string v0, "RongIMClient"

    const-string v1, "discussionId or name is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2601
    :goto_0
    return-void

    .line 2562
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$45;

    invoke-direct {v1, p0, p3, p2, p1}, Lio/rong/imlib/RongIMClient$45;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setMessageExtra(ILjava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2046
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    .line 2047
    const-string v0, "RongIMClient."

    const-string v1, "messageId is error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2074
    :goto_0
    return-void

    .line 2051
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$33;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$33;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setMessageExtra(ILjava/lang/String;)Z
    .locals 4
    .param p1, "messageId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2004
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2006
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2007
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 2009
    new-instance v3, Lio/rong/imlib/RongIMClient$32;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$32;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->setMessageExtra(ILjava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2030
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2035
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 2031
    :catch_0
    move-exception v0

    .line 2032
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "receivedStatus"    # Lio/rong/imlib/model/Message$ReceivedStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/rong/imlib/model/Message$ReceivedStatus;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2127
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    .line 2128
    const-string v0, "RongIMClient."

    const-string v1, "Error.The messageId can\'t be 0!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2156
    :goto_0
    return-void

    .line 2132
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$35;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$35;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;ILio/rong/imlib/model/Message$ReceivedStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;)Z
    .locals 4
    .param p1, "messageId"    # I
    .param p2, "receivedStatus"    # Lio/rong/imlib/model/Message$ReceivedStatus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2085
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2087
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2088
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 2090
    new-instance v3, Lio/rong/imlib/RongIMClient$34;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$34;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2111
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 2112
    :catch_0
    move-exception v0

    .line 2113
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "sentStatus"    # Lio/rong/imlib/model/Message$SentStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/rong/imlib/model/Message$SentStatus;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2209
    .local p3, "callback":Lio/rong/imlib/RongIMClient$ResultCallback;, "Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    .line 2210
    const-string v0, "RongIMClient."

    const-string v1, "Error.The messageId can\'t be 0!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2236
    :goto_0
    return-void

    .line 2214
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$37;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$37;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;ILio/rong/imlib/model/Message$SentStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;)Z
    .locals 4
    .param p1, "messageId"    # I
    .param p2, "sentStatus"    # Lio/rong/imlib/model/Message$SentStatus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2167
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2169
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2170
    .local v2, "result":Lio/rong/imlib/RongIMClient$ResultCallback$Result;, "Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 2172
    new-instance v3, Lio/rong/imlib/RongIMClient$36;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$36;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2193
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2198
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 2194
    :catch_0
    move-exception v0

    .line 2195
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 4
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "spanMinutes"    # I
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 4891
    sget-object v2, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v2, :cond_0

    .line 4892
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4894
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-lez p2, :cond_1

    const/16 v2, 0x5a0

    if-ge p2, v2, :cond_1

    if-nez p3, :cond_2

    .line 4895
    :cond_1
    const-string v2, "RongIMClient"

    const-string/jumbo v3, "startTime, spanMinutes \u6216 spanMinutes \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4896
    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4940
    :goto_0
    return-void

    .line 4899
    :cond_2
    const-string v2, "^(([0-1][0-9])|2[0-3]):[0-5][0-9]:([0-5][0-9])$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 4900
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4902
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4903
    const-string v2, "RongIMClient"

    const-string/jumbo v3, "startTime \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4904
    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0

    .line 4908
    :cond_3
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v3, Lio/rong/imlib/RongIMClient$87;

    invoke-direct {v3, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$87;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;
    .locals 4
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 6408
    sget-object v2, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v2, :cond_0

    .line 6409
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6411
    :cond_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v2, :cond_1

    .line 6412
    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NOT_INIT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .line 6426
    :goto_0
    return-object v2

    .line 6415
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 6416
    :cond_2
    const-string/jumbo v2, "startRealTimeLocation"

    const-string v3, "Type or id is null!"

    invoke-static {p0, v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 6417
    const/4 v2, 0x0

    goto :goto_0

    .line 6420
    :cond_3
    const/4 v0, -0x1

    .line 6422
    .local v0, "code":I
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    invoke-interface {v2, v3, p2}, Lio/rong/imlib/IHandler;->startRealTimeLocation(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 6426
    :goto_1
    invoke-static {v0}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->valueOf(I)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    move-result-object v2

    goto :goto_0

    .line 6423
    :catch_0
    move-exception v1

    .line 6424
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public subscribePublicService(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "publicServiceType"    # Lio/rong/imlib/model/Conversation$PublicServiceType;
    .param p2, "publicServiceId"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 4682
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 4683
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4685
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4686
    :cond_1
    const-string v0, "RongIMClient"

    const-string v1, "Parameter  is error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4725
    :goto_0
    return-void

    .line 4691
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$83;

    invoke-direct {v1, p0, p3, p2, p1}, Lio/rong/imlib/RongIMClient$83;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$PublicServiceType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public syncGroup(Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Group;",
            ">;",
            "Lio/rong/imlib/RongIMClient$OperationCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3749
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Group;>;"
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 3750
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3752
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 3753
    :cond_1
    const-string v0, "RongIMClient"

    const-string v1, "groups is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3754
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3791
    :goto_0
    return-void

    .line 3758
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$66;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$66;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public syncUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "userData"    # Lio/rong/imlib/model/UserData;
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 5080
    if-nez p1, :cond_0

    .line 5081
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 5117
    :goto_0
    return-void

    .line 5085
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$91;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$91;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Lio/rong/imlib/model/UserData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public unsubscribePublicService(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .param p1, "publicServiceType"    # Lio/rong/imlib/model/Conversation$PublicServiceType;
    .param p2, "publicServiceId"    # Ljava/lang/String;
    .param p3, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 4737
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 4738
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4741
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4742
    :cond_1
    const-string v0, "RongIMClient"

    const-string v1, "Parameter  is error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4743
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4779
    :goto_0
    return-void

    .line 4747
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$84;

    invoke-direct {v1, p0, p3, p2, p1}, Lio/rong/imlib/RongIMClient$84;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$PublicServiceType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public updateConversationInfo(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 8
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "portrait"    # Ljava/lang/String;
    .param p5, "callback"    # Lio/rong/imlib/RongIMClient$ResultCallback;

    .prologue
    .line 939
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 940
    :cond_0
    const-string v0, "getConversation."

    const-string/jumbo v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p5, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 967
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v7, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$7;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/rong/imlib/RongIMClient$7;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public updateMessageReceiptStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JLio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 9
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .param p5, "callback"    # Lio/rong/imlib/RongIMClient$OperationCallback;

    .prologue
    .line 4986
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$89;

    move-object v2, p0

    move-object v3, p5

    move-object v4, p2

    move-object v5, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lio/rong/imlib/RongIMClient$89;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5011
    return-void
.end method

.method public updateRealTimeLocationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;DD)V
    .locals 9
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D

    .prologue
    .line 6652
    sget-object v1, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v1, :cond_0

    .line 6653
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6655
    :cond_0
    const-string/jumbo v1, "updateRealTimeLocationStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "latitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 6656
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 6657
    :cond_1
    const-string/jumbo v1, "updateRealTimeLocationStatus"

    const-string v2, "Type or id is null!"

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 6668
    :cond_2
    :goto_0
    return-void

    .line 6661
    :cond_3
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-eqz v1, :cond_2

    .line 6663
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lio/rong/imlib/IHandler;->updateRealTimeLocationStatus(ILjava/lang/String;DD)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6664
    :catch_0
    move-exception v0

    .line 6665
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public uploadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/io/InputStream;Lio/rong/imlib/RongIMClient$UploadMediaCallback;)V
    .locals 2
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "stream"    # Ljava/io/InputStream;
    .param p4, "callback"    # Lio/rong/imlib/RongIMClient$UploadMediaCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3498
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u8bf7\u4f7f\u7528 public void uploadMedia(final Conversation.ConversationType conversationType, final String targetId, Uri uri, final UploadMediaCallback callback) \u4ee3\u66ff"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public uploadMedia(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$UploadMediaCallback;)V
    .locals 11
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "callback"    # Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    .prologue
    .line 3402
    sget-object v0, Lio/rong/imlib/RongIMClient;->sS:Lio/rong/imlib/RongIMClient;

    if-nez v0, :cond_0

    .line 3403
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3405
    :cond_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    .line 3407
    .local v6, "messageContent":Lio/rong/imlib/model/MessageContent;
    const/4 v9, 0x0

    .line 3409
    .local v9, "uri":Landroid/net/Uri;
    instance-of v0, v6, Lio/rong/message/ImageMessage;

    if-eqz v0, :cond_3

    .line 3410
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    check-cast v7, Lio/rong/message/ImageMessage;

    .line 3411
    .local v7, "content":Lio/rong/message/ImageMessage;
    invoke-virtual {v7}, Lio/rong/message/ImageMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v9

    .line 3417
    .end local v7    # "content":Lio/rong/message/ImageMessage;
    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3418
    :cond_2
    const-string v0, "RongIMClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri :["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u5fc5\u987b\u4e3afile://\u683c\u5f0f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3482
    :goto_1
    return-void

    .line 3412
    :cond_3
    instance-of v0, v6, Lio/rong/message/FileMessage;

    if-eqz v0, :cond_1

    .line 3413
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    check-cast v7, Lio/rong/message/FileMessage;

    .line 3414
    .local v7, "content":Lio/rong/message/FileMessage;
    invoke-virtual {v7}, Lio/rong/message/FileMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    .line 3423
    .end local v7    # "content":Lio/rong/message/FileMessage;
    :cond_4
    new-instance v8, Ljava/io/File;

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3425
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3426
    const-string v0, "RongIMClient"

    const-string v1, "Uri \u6587\u4ef6\u4e0d\u5b58\u5728\u3002"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_1

    .line 3431
    :cond_5
    new-instance v4, Lio/rong/imlib/model/Conversation;

    invoke-direct {v4}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 3432
    .local v4, "conversation":Lio/rong/imlib/model/Conversation;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 3433
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 3435
    move-object v5, v9

    .line 3436
    .local v5, "finalUri":Landroid/net/Uri;
    iget-object v10, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$61;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lio/rong/imlib/RongIMClient$61;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$UploadMediaCallback;Lio/rong/imlib/model/Message;Lio/rong/imlib/model/Conversation;Landroid/net/Uri;Lio/rong/imlib/model/MessageContent;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
