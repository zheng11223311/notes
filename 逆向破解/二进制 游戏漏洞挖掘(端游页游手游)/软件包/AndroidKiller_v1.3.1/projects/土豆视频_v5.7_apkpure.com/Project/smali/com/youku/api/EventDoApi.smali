.class public Lcom/youku/api/EventDoApi;
.super Ljava/lang/Object;
.source "EventDoApi.java"


# static fields
.field private static final MSG_RESTAPI_CALLB:I = 0x20

.field private static final MSG_RESTAPI_CALLB_ERROR:I = 0x21

.field private static final MSG_RESTAPI_ENTER_ROOM:I = 0x23

.field private static final MSG_RESTAPI_EXCHANGE_TOOKEN:I = 0x22


# instance fields
.field private mCPS:Ljava/lang/String;

.field private mCallback:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCookie:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIDataService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

.field private mIsEnterRoom:Z

.field private mIsRealShow:Z

.field private mPlayResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

.field private mRoomId:Ljava/lang/String;

.field private mUIContext:Landroid/content/Context;

.field private mUserResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/youku/api/EventDoApi;->mIDataService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .line 45
    iput-boolean v1, p0, Lcom/youku/api/EventDoApi;->mIsEnterRoom:Z

    .line 52
    iput-boolean v1, p0, Lcom/youku/api/EventDoApi;->mIsRealShow:Z

    .line 54
    iput-object v0, p0, Lcom/youku/api/EventDoApi;->mUserResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 55
    iput-object v0, p0, Lcom/youku/api/EventDoApi;->mPlayResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .line 57
    new-instance v0, Lcom/youku/api/EventDoApi$1;

    invoke-direct {v0, p0}, Lcom/youku/api/EventDoApi$1;-><init>(Lcom/youku/api/EventDoApi;)V

    iput-object v0, p0, Lcom/youku/api/EventDoApi;->mHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/youku/api/EventDoApi$2;

    invoke-direct {v0, p0}, Lcom/youku/api/EventDoApi$2;-><init>(Lcom/youku/api/EventDoApi;)V

    iput-object v0, p0, Lcom/youku/api/EventDoApi;->mConnection:Landroid/content/ServiceConnection;

    .line 206
    new-instance v0, Lcom/youku/api/EventDoApi$3;

    invoke-direct {v0, p0}, Lcom/youku/api/EventDoApi$3;-><init>(Lcom/youku/api/EventDoApi;)V

    iput-object v0, p0, Lcom/youku/api/EventDoApi;->mCallback:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/youku/api/EventDoApi;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/api/EventDoApi;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/api/EventDoApi;->mUIContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/api/EventDoApi;)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .locals 1
    .param p0, "x0"    # Lcom/youku/api/EventDoApi;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/api/EventDoApi;->mUserResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    return-object v0
.end method

.method static synthetic access$102(Lcom/youku/api/EventDoApi;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .locals 0
    .param p0, "x0"    # Lcom/youku/api/EventDoApi;
    .param p1, "x1"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/youku/api/EventDoApi;->mUserResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    return-object p1
.end method

.method static synthetic access$200(Lcom/youku/api/EventDoApi;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/youku/api/EventDoApi;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/api/EventDoApi;->mIDataService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/youku/api/EventDoApi;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;
    .locals 0
    .param p0, "x0"    # Lcom/youku/api/EventDoApi;
    .param p1, "x1"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/youku/api/EventDoApi;->mIDataService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/youku/api/EventDoApi;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/api/EventDoApi;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/api/EventDoApi;->mRoomId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/api/EventDoApi;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/api/EventDoApi;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/api/EventDoApi;->mCallback:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/api/EventDoApi;)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .locals 1
    .param p0, "x0"    # Lcom/youku/api/EventDoApi;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/api/EventDoApi;->mPlayResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    return-object v0
.end method

.method static synthetic access$502(Lcom/youku/api/EventDoApi;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .locals 0
    .param p0, "x0"    # Lcom/youku/api/EventDoApi;
    .param p1, "x1"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/youku/api/EventDoApi;->mPlayResponse:Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    return-object p1
.end method

.method static synthetic access$600(Lcom/youku/api/EventDoApi;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/api/EventDoApi;
    .param p1, "x1"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .param p2, "x2"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/youku/api/EventDoApi;->doEnterLivingRoom(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V

    return-void
.end method

.method static synthetic access$700(Lcom/youku/api/EventDoApi;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/api/EventDoApi;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/api/EventDoApi;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/youku/api/EventDoApi;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/api/EventDoApi;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/youku/api/EventDoApi;->mIsEnterRoom:Z

    return p1
.end method

.method private doEnterLivingRoom(Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    .locals 3
    .param p1, "userResponse"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    .param p2, "playResponse"    # Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/youku/api/EventDoApi;->mContext:Landroid/content/Context;

    const-class v2, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    const-string v1, "intent.data.come.in.room"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    const-string v1, "intent.data.come.in.user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    const-string v1, "intent.data.come.in.user.cookie"

    iget-object v2, p0, Lcom/youku/api/EventDoApi;->mCookie:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "intent.data.come.in.cps"

    iget-object v2, p0, Lcom/youku/api/EventDoApi;->mCPS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v1, "intent.data.come.in.room.isalve"

    iget-boolean v2, p0, Lcom/youku/api/EventDoApi;->mIsRealShow:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/youku/api/EventDoApi;->mUIContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void
.end method


# virtual methods
.method public EnterLiveRoom(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "cps"    # Ljava/lang/String;

    .prologue
    .line 133
    :try_start_0
    iput-object p3, p0, Lcom/youku/api/EventDoApi;->mUIContext:Landroid/content/Context;

    .line 134
    iput-object p1, p0, Lcom/youku/api/EventDoApi;->mRoomId:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/youku/api/EventDoApi;->mCookie:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lcom/youku/api/EventDoApi;->mCPS:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :try_start_1
    iget-object v1, p0, Lcom/youku/api/EventDoApi;->mIDataService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->setTokenAndKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->setToken(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->setKey(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/youku/api/EventDoApi;->mCookie:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/youku/api/EventDoApi;->LoginByCookie(Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_1
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-boolean v1, Llfsdk/LFSdkManager;->mHasEntered:Z

    .line 148
    invoke-static {}, Lcom/corncop/pegasus/WaitingProgressDialog;->close()V

    .line 149
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public LoginByCookie(Ljava/lang/String;)V
    .locals 7
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/youku/api/EventDoApi;->mIDataService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    iget-object v1, p0, Lcom/youku/api/EventDoApi;->mCallback:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_EXCHANGE_TOKEN:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v5, 0x11

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataWithCookie(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v6

    .line 157
    .local v6, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    sput-boolean v0, Llfsdk/LFSdkManager;->mHasEntered:Z

    .line 158
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public LoginByCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/youku/api/EventDoApi;->mRoomId:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/youku/api/EventDoApi;->mCookie:Ljava/lang/String;

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/youku/api/EventDoApi;->mIDataService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    iget-object v1, p0, Lcom/youku/api/EventDoApi;->mCallback:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_EXCHANGE_TOKEN:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v5, 0x11

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataWithCookie(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v6

    .line 168
    .local v6, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    sput-boolean v0, Llfsdk/LFSdkManager;->mHasEntered:Z

    .line 169
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public doEnterLaifengLivingRoom(Ljava/lang/String;)V
    .locals 7
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 188
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.laifeng.splashscreen"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 190
    const-string/jumbo v3, "start-action-type"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string/jumbo v3, "start-action-external"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "laifeng://room/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v3, p0, Lcom/youku/api/EventDoApi;->mContext:Landroid/content/Context;

    const-string v4, "com.youku.crazytogether"

    invoke-static {v3, v4}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isAppOnForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 194
    .local v2, "isforeground":Z
    const-string v3, "isforeground"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    iget-object v3, p0, Lcom/youku/api/EventDoApi;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    sput-boolean v6, Llfsdk/LFSdkManager;->mHasEntered:Z

    .line 202
    invoke-static {}, Lcom/corncop/pegasus/WaitingProgressDialog;->close()V

    .line 204
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isforeground":Z
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    sput-boolean v6, Llfsdk/LFSdkManager;->mHasEntered:Z

    .line 202
    invoke-static {}, Lcom/corncop/pegasus/WaitingProgressDialog;->close()V

    goto :goto_0

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    sput-boolean v6, Llfsdk/LFSdkManager;->mHasEntered:Z

    .line 202
    invoke-static {}, Lcom/corncop/pegasus/WaitingProgressDialog;->close()V

    throw v3
.end method

.method public init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/youku/api/EventDoApi;->mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "intent2":Landroid/content/Intent;
    iget-object v1, p0, Lcom/youku/api/EventDoApi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/api/EventDoApi;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/api/EventDoApi;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 112
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/youku/api/EventDoApi;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/api/EventDoApi;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 116
    return-void
.end method
