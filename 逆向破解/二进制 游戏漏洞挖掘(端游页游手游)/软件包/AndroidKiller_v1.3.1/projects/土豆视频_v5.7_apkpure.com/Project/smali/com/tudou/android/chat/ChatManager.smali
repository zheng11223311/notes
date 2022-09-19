.class public Lcom/tudou/android/chat/ChatManager;
.super Ljava/lang/Object;
.source "ChatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/android/chat/ChatManager$State;,
        Lcom/tudou/android/chat/ChatManager$CallBacks;
    }
.end annotation


# static fields
.field private static final CONNECT_RETRY_COUNT:I = 0x3

.field private static final PREFERENCE_KEY_RONGYUN_TOKEN:Ljava/lang/String; = "rongyun_token"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/tudou/android/chat/ChatManager;


# instance fields
.field private hasUnreadMessage:Z

.field private isAlreadyJoinedChatRoom:Z

.field private isChatRoomForground:Z

.field private isNoRightVideo:Z

.field private isRealConnect:Z

.field private isReceiveMessage:Z

.field private mChatNameAndIconBean:Lcom/tudou/android/chat/ChatNameAndIconBean;

.field private mChatRoomNumber:Ljava/lang/String;

.field private mState:Lcom/tudou/android/chat/ChatManager$State;

.field private mUserId:Ljava/lang/String;

.field private mUserImg:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mWeakRefCallBacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tudou/android/chat/ChatManager$CallBacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/tudou/android/chat/ChatManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/android/chat/ChatManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mUserName:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mUserImg:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mChatRoomNumber:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/tudou/android/chat/ChatManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatManager;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/tudou/android/chat/ChatManager;->isAlreadyJoinedChatRoom:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mWeakRefCallBacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mChatRoomNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/android/chat/ChatManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatManager;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/tudou/android/chat/ChatManager;->isChatRoomForground:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/tudou/android/chat/ChatManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatManager;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/tudou/android/chat/ChatManager;->hasUnreadMessage:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/tudou/android/chat/ChatManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatManager;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/tudou/android/chat/ChatManager;->isReceiveMessage:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/tudou/android/chat/ChatManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/tudou/android/chat/ChatManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager;->mUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tudou/android/chat/ChatManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/tudou/android/chat/ChatManager;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/android/chat/ChatManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatManager;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/tudou/android/chat/ChatManager;->isRealConnect:Z

    return v0
.end method

.method static synthetic access$602(Lcom/tudou/android/chat/ChatManager;Lcom/tudou/android/chat/ChatNameAndIconBean;)Lcom/tudou/android/chat/ChatNameAndIconBean;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatManager;
    .param p1, "x1"    # Lcom/tudou/android/chat/ChatNameAndIconBean;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager;->mChatNameAndIconBean:Lcom/tudou/android/chat/ChatNameAndIconBean;

    return-object p1
.end method

.method static synthetic access$700(Lcom/tudou/android/chat/ChatManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatManager;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatManager;->setDefaultNameAndIcon()V

    return-void
.end method

.method static synthetic access$800(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/android/chat/ChatManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatManager;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mUserImg:Ljava/lang/String;

    return-object v0
.end method

.method private deleteMessage(Lio/rong/imlib/model/Message;)V
    .locals 4
    .param p1, "needDeletedMessage"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 674
    if-eqz p1, :cond_0

    .line 675
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v3

    aput v3, v1, v2

    new-instance v2, Lcom/tudou/android/chat/ChatManager$11;

    invoke-direct {v2, p0}, Lcom/tudou/android/chat/ChatManager$11;-><init>(Lcom/tudou/android/chat/ChatManager;)V

    invoke-virtual {v0, v1, v2}, Lio/rong/imkit/RongIMClientWrapper;->deleteMessages([ILio/rong/imlib/RongIMClient$ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/tudou/android/chat/ChatManager;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/tudou/android/chat/ChatManager;->sInstance:Lcom/tudou/android/chat/ChatManager;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "byron"

    const-string v1, "new ChatManager();"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lcom/tudou/android/chat/ChatManager;

    invoke-direct {v0}, Lcom/tudou/android/chat/ChatManager;-><init>()V

    sput-object v0, Lcom/tudou/android/chat/ChatManager;->sInstance:Lcom/tudou/android/chat/ChatManager;

    .line 86
    :cond_0
    sget-object v0, Lcom/tudou/android/chat/ChatManager;->sInstance:Lcom/tudou/android/chat/ChatManager;

    return-object v0
.end method

.method private read(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 834
    :try_start_0
    const-string v8, "/sdcard/chat/"

    .line 835
    .local v8, "pathName":Ljava/lang/String;
    move-object v5, p1

    .line 836
    .local v5, "fileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 837
    .local v7, "path":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 838
    .local v4, "file":Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 839
    .local v6, "inputStream":Ljava/io/FileInputStream;
    const/4 v9, 0x1

    new-array v1, v9, [B

    .line 840
    .local v1, "bytes":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 841
    .local v0, "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 842
    const/4 v9, 0x0

    array-length v10, v1

    invoke-virtual {v0, v1, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 849
    .end local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "bytes":[B
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .end local v7    # "path":Ljava/io/File;
    .end local v8    # "pathName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 850
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 852
    const-string v2, "0"

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v2

    .line 844
    .restart local v0    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bytes":[B
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v7    # "path":Ljava/io/File;
    .restart local v8    # "pathName":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 845
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 846
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v2, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 847
    .local v2, "content":Ljava/lang/String;
    const-string v9, "byron"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "read(): content = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setDefaultNameAndIcon()V
    .locals 1

    .prologue
    .line 648
    const-string/jumbo v0, "\u5c0f\u571f\u8c46"

    iput-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mUserName:Ljava/lang/String;

    .line 649
    const-string v0, "http://r4.ykimg.com/05100000569766BB6714C05E92019B78"

    iput-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mUserImg:Ljava/lang/String;

    .line 650
    return-void
.end method

.method private setOnMessageClickListener()V
    .locals 1

    .prologue
    .line 526
    :try_start_0
    new-instance v0, Lcom/tudou/android/chat/ChatManager$9;

    invoke-direct {v0, p0}, Lcom/tudou/android/chat/ChatManager$9;-><init>(Lcom/tudou/android/chat/ChatManager;)V

    invoke-static {v0}, Lio/rong/imkit/RongIM;->setConversationBehaviorListener(Lio/rong/imkit/RongIM$ConversationBehaviorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_0
    return-void

    .line 572
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setOnReceiveUnreadMessageListener()V
    .locals 5

    .prologue
    .line 509
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    new-instance v1, Lcom/tudou/android/chat/ChatManager$8;

    invoke-direct {v1, p0}, Lcom/tudou/android/chat/ChatManager$8;-><init>(Lcom/tudou/android/chat/ChatManager;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lio/rong/imlib/model/Conversation$ConversationType;

    const/4 v3, 0x0

    sget-object v4, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lio/rong/imkit/RongIM;->setOnReceiveUnreadCountChangedListener(Lio/rong/imkit/RongIM$OnReceiveUnreadCountChangedListener;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 806
    const-string v7, "byron"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "writeFile(): s = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :try_start_0
    const-string v5, "/sdcard/chat/"

    .line 810
    .local v5, "pathName":Ljava/lang/String;
    move-object v3, p2

    .line 811
    .local v3, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 812
    .local v4, "path":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 813
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 814
    const-string v7, "TestFile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create the path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 817
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 818
    const-string v7, "TestFile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create the file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 821
    :cond_1
    const-string v7, "byron"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 823
    .local v6, "stream":Ljava/io/FileOutputStream;
    const-string v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 824
    .local v0, "buf":[B
    const-string v7, "byron"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buf length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 826
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    .end local v0    # "buf":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "pathName":Ljava/lang/String;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 827
    :catch_0
    move-exception v1

    .line 828
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "byron"

    const-string v8, "File write error."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public checkChatText(Lio/rong/imlib/model/Message;Ljava/lang/String;)V
    .locals 7
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 403
    const-string v4, "byron"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkChatText(): text = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-class v4, Lcom/youku/network/IHttpRequest;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 405
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getChatFilterUrl()Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, "url":Ljava/lang/String;
    invoke-static {p2}, Lcom/youku/http/TudouURLContainer;->getChatFilterParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "postString":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v4, "POST"

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 408
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    invoke-virtual {v0, p2}, Lcom/youku/network/HttpIntent;->setRequestTag(Ljava/lang/String;)V

    .line 409
    new-instance v4, Lcom/tudou/android/chat/ChatManager$6;

    invoke-direct {v4, p0, p1, p2}, Lcom/tudou/android/chat/ChatManager$6;-><init>(Lcom/tudou/android/chat/ChatManager;Lio/rong/imlib/model/Message;Ljava/lang/String;)V

    invoke-interface {v1, v0, v4}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 434
    return-void
.end method

.method public connect(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "isCreate"    # Z
    .param p4, "isFromDetailActivity"    # Z

    .prologue
    .line 260
    :try_start_0
    const-string v0, "byron"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect(): token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tudou/android/Youku;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Lcom/tudou/android/chat/ChatManager$3;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/tudou/android/chat/ChatManager$3;-><init>(Lcom/tudou/android/chat/ChatManager;Landroid/content/Context;ZZ)V

    invoke-static {p2, v0}, Lio/rong/imkit/RongIM;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imkit/RongIM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public createChatRoom(Ljava/lang/String;)V
    .locals 3
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 331
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    const/16 v1, 0x1e

    new-instance v2, Lcom/tudou/android/chat/ChatManager$4;

    invoke-direct {v2, p0, p1}, Lcom/tudou/android/chat/ChatManager$4;-><init>(Lcom/tudou/android/chat/ChatManager;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2}, Lio/rong/imkit/RongIMClientWrapper;->joinChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disConnect()V
    .locals 1

    .prologue
    .line 121
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public generateChatRoomNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/youku/util/Util;->generateRandomStringByLength(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mChatRoomNumber:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mChatRoomNumber:Ljava/lang/String;

    return-object v0
.end method

.method public generateNameAndIcon()V
    .locals 10

    .prologue
    .line 623
    const-string v7, "byron"

    const-string v8, "generateNameAndIcon();"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :try_start_0
    const-string v7, ""

    iput-object v7, p0, Lcom/tudou/android/chat/ChatManager;->mUserName:Ljava/lang/String;

    .line 626
    const-string v7, ""

    iput-object v7, p0, Lcom/tudou/android/chat/ChatManager;->mUserImg:Ljava/lang/String;

    .line 627
    iget-object v7, p0, Lcom/tudou/android/chat/ChatManager;->mChatNameAndIconBean:Lcom/tudou/android/chat/ChatNameAndIconBean;

    iget-object v7, v7, Lcom/tudou/android/chat/ChatNameAndIconBean;->result:Lcom/tudou/android/chat/ChatNameAndIconBean$Data;

    iget-object v4, v7, Lcom/tudou/android/chat/ChatNameAndIconBean$Data;->portraits:Ljava/util/ArrayList;

    .line 628
    .local v4, "portraits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/android/chat/ChatNameAndIconBean$Portrait;>;"
    iget-object v7, p0, Lcom/tudou/android/chat/ChatManager;->mChatNameAndIconBean:Lcom/tudou/android/chat/ChatNameAndIconBean;

    iget-object v7, v7, Lcom/tudou/android/chat/ChatNameAndIconBean;->result:Lcom/tudou/android/chat/ChatNameAndIconBean$Data;

    iget-object v0, v7, Lcom/tudou/android/chat/ChatNameAndIconBean$Data;->adjactive:Ljava/util/ArrayList;

    .line 629
    .local v0, "adjactive":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 630
    .local v5, "random":Ljava/util/Random;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 631
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 632
    .local v2, "i":I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 633
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tudou/android/chat/ChatManager;->mUserName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/android/chat/ChatManager;->mUserName:Ljava/lang/String;

    .line 635
    .end local v2    # "i":I
    .end local v6    # "s":Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 636
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 637
    .restart local v2    # "i":I
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/android/chat/ChatNameAndIconBean$Portrait;

    .line 638
    .local v3, "portrait":Lcom/tudou/android/chat/ChatNameAndIconBean$Portrait;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tudou/android/chat/ChatManager;->mUserName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/tudou/android/chat/ChatNameAndIconBean$Portrait;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/android/chat/ChatManager;->mUserName:Ljava/lang/String;

    .line 639
    iget-object v7, v3, Lcom/tudou/android/chat/ChatNameAndIconBean$Portrait;->portrait:Ljava/lang/String;

    iput-object v7, p0, Lcom/tudou/android/chat/ChatManager;->mUserImg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .end local v0    # "adjactive":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "portrait":Lcom/tudou/android/chat/ChatNameAndIconBean$Portrait;
    .end local v4    # "portraits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/android/chat/ChatNameAndIconBean$Portrait;>;"
    .end local v5    # "random":Ljava/util/Random;
    :cond_1
    :goto_0
    return-void

    .line 641
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "byron"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateNameAndIcon(): catch exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatManager;->setDefaultNameAndIcon()V

    goto :goto_0
.end method

.method public getChatNameAndIcon()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 440
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 441
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getChatNameAndIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v3, "GET"

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 443
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/android/chat/ChatManager$7;

    invoke-direct {v3, p0}, Lcom/tudou/android/chat/ChatManager$7;-><init>(Lcom/tudou/android/chat/ChatManager;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 465
    return-void
.end method

.method public getChatPeopleCount(Lio/rong/imlib/model/ChatRoomInfo;)I
    .locals 2
    .param p1, "chatRoomInfo"    # Lio/rong/imlib/model/ChatRoomInfo;

    .prologue
    .line 769
    invoke-virtual {p1}, Lio/rong/imlib/model/ChatRoomInfo;->getMemberInfo()Ljava/util/List;

    move-result-object v0

    .line 770
    .local v0, "memberInfo":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/ChatRoomMemberInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method public getChatRoomInfo(Z)V
    .locals 6
    .param p1, "isReceivedInformationMessage"    # Z

    .prologue
    .line 717
    :try_start_0
    const-string v1, "byron"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChatRoomInfo(): isReceivedInformationMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e

    sget-object v4, Lio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;->RC_CHAT_ROOM_MEMBER_ASC:Lio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;

    new-instance v5, Lcom/tudou/android/chat/ChatManager$13;

    invoke-direct {v5, p0, p1}, Lcom/tudou/android/chat/ChatManager$13;-><init>(Lcom/tudou/android/chat/ChatManager;Z)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/rong/imlib/RongIMClient;->getChatRoomInfo(Ljava/lang/String;ILio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :goto_0
    return-void

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "byron"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChatRoomInfo(): exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConnectStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    .locals 3

    .prologue
    .line 776
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 781
    .local v1, "status":Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    :goto_0
    return-object v1

    .line 777
    .end local v1    # "status":Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 779
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    .restart local v1    # "status":Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    goto :goto_0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mChatRoomNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/tudou/android/chat/ChatManager$State;
    .locals 5

    .prologue
    .line 796
    :try_start_0
    const-string v2, "chat_state"

    invoke-direct {p0, v2}, Lcom/tudou/android/chat/ChatManager;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 797
    .local v1, "state":I
    invoke-static {}, Lcom/tudou/android/chat/ChatManager$State;->values()[Lcom/tudou/android/chat/ChatManager$State;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/tudou/android/chat/ChatManager;->mState:Lcom/tudou/android/chat/ChatManager$State;

    .line 798
    const-string v2, "byron"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChatManager getState(): mState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/android/chat/ChatManager;->mState:Lcom/tudou/android/chat/ChatManager$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    .end local v1    # "state":I
    :goto_0
    iget-object v2, p0, Lcom/tudou/android/chat/ChatManager;->mState:Lcom/tudou/android/chat/ChatManager$State;

    return-object v2

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "byron"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getState():catch exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTokenAndConnect(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCreate"    # Z

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tudou/android/chat/ChatManager;->getTokenAndConnect(Landroid/content/Context;ZZ)V

    .line 188
    return-void
.end method

.method public getTokenAndConnect(Landroid/content/Context;ZZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCreate"    # Z
    .param p3, "isFromDetailActivity"    # Z

    .prologue
    .line 197
    const/4 v5, 0x0

    .line 198
    .local v5, "watchAndChat":Z
    sget-object v6, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    if-eqz v6, :cond_0

    .line 199
    sget-object v6, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    invoke-virtual {v6}, Lcom/youku/vo/TudouSwitchesBean;->getWatchAndChat()Z

    move-result v5

    .line 201
    :cond_0
    if-nez v5, :cond_1

    .line 251
    :goto_0
    return-void

    .line 202
    :cond_1
    const-string/jumbo v6, "rongyun_token"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 204
    const-string v6, "byron"

    const-string/jumbo v7, "token is already exist, so connect."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0, p1, v3, p2, p3}, Lcom/tudou/android/chat/ChatManager;->connect(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 208
    :cond_2
    const-class v6, Lcom/youku/network/IHttpRequest;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 209
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getChatTokenUrl()Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "url":Ljava/lang/String;
    const-string v6, "byron"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTokenAndConnect(): url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v6, p0, Lcom/tudou/android/chat/ChatManager;->mUserName:Ljava/lang/String;

    iget-object v7, p0, Lcom/tudou/android/chat/ChatManager;->mUserImg:Ljava/lang/String;

    invoke-static {p1, v6, v7}, Lcom/youku/http/TudouURLContainer;->getChatTokenParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "postString":Ljava/lang/String;
    const-string v6, "byron"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTokenAndConnect(): postString = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v6, "POST"

    const/4 v7, 0x0

    invoke-direct {v0, v4, v6, v7, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 214
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v6, Lcom/tudou/android/chat/ChatManager$2;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/tudou/android/chat/ChatManager$2;-><init>(Lcom/tudou/android/chat/ChatManager;Landroid/content/Context;ZZ)V

    invoke-interface {v1, v0, v6}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mUserImg:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public hasUnreadMessage()Z
    .locals 1

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/tudou/android/chat/ChatManager;->hasUnreadMessage:Z

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 489
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongIM;->setMessageAttachedUserInfo(Z)V

    .line 490
    const-class v1, Lio/rong/imkit/tudou/YTContentMessage;

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageType(Ljava/lang/Class;)V

    .line 491
    new-instance v1, Lio/rong/imkit/tudou/YTContentMessageItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/tudou/YTContentMessageItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 492
    new-instance v1, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;

    invoke-direct {v1}, Lio/rong/imkit/tudou/TudouInfoNotificationMsgItemProvider;-><init>()V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 493
    new-instance v1, Lio/rong/imkit/tudou/YTMessageInputProvider;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/rong/imkit/tudou/YTMessageInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    invoke-static {v1}, Lio/rong/imkit/RongIM;->setSecondaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    .line 494
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatManager;->setOnReceiveUnreadMessageListener()V

    .line 495
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatManager;->setOnMessageClickListener()V

    .line 496
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatManager;->setOnSendButtonClickListener()V

    .line 497
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatManager;->setOnReceiveMessageListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "byron"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isAlreadyJoinedChatRoom()Z
    .locals 1

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/tudou/android/chat/ChatManager;->isAlreadyJoinedChatRoom:Z

    return v0
.end method

.method public isNoRightVideo()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/tudou/android/chat/ChatManager;->isNoRightVideo:Z

    return v0
.end method

.method public joinChatRoom()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mChatRoomNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tudou/android/chat/ChatManager;->joinChatRoom(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public joinChatRoom(Ljava/lang/String;)V
    .locals 3
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 366
    :try_start_0
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager;->mChatRoomNumber:Ljava/lang/String;

    .line 367
    const-string v0, "byron"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "joinChatRoom(): roomId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    const/16 v1, 0xa

    new-instance v2, Lcom/tudou/android/chat/ChatManager$5;

    invoke-direct {v2, p0, p1}, Lcom/tudou/android/chat/ChatManager$5;-><init>(Lcom/tudou/android/chat/ChatManager;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2}, Lio/rong/imkit/RongIMClientWrapper;->joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public quitChatRoom()V
    .locals 6

    .prologue
    .line 91
    :try_start_0
    iget-boolean v3, p0, Lcom/tudou/android/chat/ChatManager;->isAlreadyJoinedChatRoom:Z

    if-nez v3, :cond_0

    .line 117
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v3, "byron"

    const-string v4, "quitChatRoom();"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatManager;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u5df2\u79bb\u5f00\u623f\u95f4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v1

    .line 95
    .local v1, "informationNotificationMessage":Lio/rong/message/InformationNotificationMessage;
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatManager;->getRoomId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {v3, v4, v1}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v2

    .line 97
    .local v2, "message":Lio/rong/imlib/model/Message;
    invoke-virtual {p0, v2}, Lcom/tudou/android/chat/ChatManager;->sendMessage(Lio/rong/imlib/model/Message;)V

    .line 98
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/android/chat/ChatManager;->mChatRoomNumber:Ljava/lang/String;

    new-instance v5, Lcom/tudou/android/chat/ChatManager$1;

    invoke-direct {v5, p0}, Lcom/tudou/android/chat/ChatManager$1;-><init>(Lcom/tudou/android/chat/ChatManager;)V

    invoke-virtual {v3, v4, v5}, Lio/rong/imkit/RongIMClientWrapper;->quitChatRoom(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v1    # "informationNotificationMessage":Lio/rong/message/InformationNotificationMessage;
    .end local v2    # "message":Lio/rong/imlib/model/Message;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "byron"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quitChatRoom(): exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public refreshUserNameAndIcon(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 474
    :try_start_0
    iget-object v3, p0, Lcom/tudou/android/chat/ChatManager;->mUserImg:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 475
    .local v1, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/tudou/android/chat/ChatManager;->mUserId:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "chat_user_id"

    invoke-direct {p0, v3}, Lcom/tudou/android/chat/ChatManager;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/android/chat/ChatManager;->mUserId:Ljava/lang/String;

    .line 477
    :cond_0
    new-instance v0, Lio/rong/imlib/model/UserInfo;

    iget-object v3, p0, Lcom/tudou/android/chat/ChatManager;->mUserId:Ljava/lang/String;

    const-string v4, ""

    const-string v5, ""

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lio/rong/imlib/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 478
    .local v0, "clearUserInfo":Lio/rong/imlib/model/UserInfo;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getUserInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v3

    invoke-virtual {v0}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lio/rong/imkit/cache/RongCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    new-instance v2, Lio/rong/imlib/model/UserInfo;

    iget-object v3, p0, Lcom/tudou/android/chat/ChatManager;->mUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/android/chat/ChatManager;->mUserName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lio/rong/imlib/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 481
    .local v2, "userInfo":Lio/rong/imlib/model/UserInfo;
    const-string v3, "byron"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/android/chat/ChatManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; mUserName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/android/chat/ChatManager;->mUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/rong/imkit/RongIM;->refreshUserInfoCache(Lio/rong/imlib/model/UserInfo;)V

    .line 483
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/rong/imkit/RongIM;->setCurrentUserInfo(Lio/rong/imlib/model/UserInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v0    # "clearUserInfo":Lio/rong/imlib/model/UserInfo;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "userInfo":Lio/rong/imlib/model/UserInfo;
    :goto_0
    return-void

    .line 484
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public resetUnreadMessage()V
    .locals 1

    .prologue
    .line 864
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/android/chat/ChatManager;->hasUnreadMessage:Z

    .line 865
    return-void
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;)V
    .locals 6
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 693
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/tudou/android/chat/ChatManager$12;

    invoke-direct {v5, p0}, Lcom/tudou/android/chat/ChatManager$12;-><init>(Lcom/tudou/android/chat/ChatManager;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/rong/imkit/RongIMClientWrapper;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;)V
    .locals 4
    .param p1, "needDeletedMessage"    # Lio/rong/imlib/model/Message;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 664
    :try_start_0
    const-string v2, "byron"

    const-string v3, "real send message."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-static {p2}, Lio/rong/message/TextMessage;->obtain(Ljava/lang/String;)Lio/rong/message/TextMessage;

    move-result-object v0

    .line 666
    .local v0, "content":Lio/rong/message/TextMessage;
    invoke-direct {p0, p1}, Lcom/tudou/android/chat/ChatManager;->deleteMessage(Lio/rong/imlib/model/Message;)V

    .line 667
    iget-object v2, p0, Lcom/tudou/android/chat/ChatManager;->mChatRoomNumber:Ljava/lang/String;

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {v2, v3, v0}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v1

    .line 668
    .local v1, "message":Lio/rong/imlib/model/Message;
    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatManager;->sendMessage(Lio/rong/imlib/model/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    .end local v0    # "content":Lio/rong/message/TextMessage;
    .end local v1    # "message":Lio/rong/imlib/model/Message;
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setCallBacks(Lcom/tudou/android/chat/ChatManager$CallBacks;)V
    .locals 1
    .param p1, "callBacks"    # Lcom/tudou/android/chat/ChatManager$CallBacks;

    .prologue
    .line 171
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tudou/android/chat/ChatManager;->mWeakRefCallBacks:Ljava/lang/ref/WeakReference;

    .line 172
    return-void
.end method

.method public setChatRoomForground(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 856
    iput-boolean p1, p0, Lcom/tudou/android/chat/ChatManager;->isChatRoomForground:Z

    .line 857
    return-void
.end method

.method public setIsRealConnect(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/tudou/android/chat/ChatManager;->isRealConnect:Z

    .line 73
    return-void
.end method

.method public setOnPlayNoRightVideo(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/tudou/android/chat/ChatManager;->isNoRightVideo:Z

    .line 132
    return-void
.end method

.method public setOnReceiveMessageListener()V
    .locals 1

    .prologue
    .line 744
    :try_start_0
    new-instance v0, Lcom/tudou/android/chat/ChatManager$14;

    invoke-direct {v0, p0}, Lcom/tudou/android/chat/ChatManager$14;-><init>(Lcom/tudou/android/chat/ChatManager;)V

    invoke-static {v0}, Lio/rong/imkit/RongIM;->setOnReceiveMessageListener(Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :goto_0
    return-void

    .line 765
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setOnSendButtonClickListener()V
    .locals 2

    .prologue
    .line 580
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/TextInputProvider;

    .line 581
    .local v0, "textInputProvider":Lio/rong/imkit/widget/provider/TextInputProvider;
    new-instance v1, Lcom/tudou/android/chat/ChatManager$10;

    invoke-direct {v1, p0}, Lcom/tudou/android/chat/ChatManager$10;-><init>(Lcom/tudou/android/chat/ChatManager;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/provider/TextInputProvider;->setOnSendButtonClickListener(Lio/rong/imkit/widget/provider/TextInputProvider$OnSendButtonClick;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    .end local v0    # "textInputProvider":Lio/rong/imkit/widget/provider/TextInputProvider;
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setReceiveMessage(Z)V
    .locals 0
    .param p1, "receiveMessage"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/tudou/android/chat/ChatManager;->isReceiveMessage:Z

    .line 144
    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager;->mChatRoomNumber:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setState(Lcom/tudou/android/chat/ChatManager$State;)V
    .locals 3
    .param p1, "state"    # Lcom/tudou/android/chat/ChatManager$State;

    .prologue
    .line 789
    const-string v0, "byron"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChatManager setState(): state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager;->mState:Lcom/tudou/android/chat/ChatManager$State;

    .line 791
    invoke-virtual {p1}, Lcom/tudou/android/chat/ChatManager$State;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chat_state"

    invoke-direct {p0, v0, v1}, Lcom/tudou/android/chat/ChatManager;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method public setUnreadMessage(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 868
    iput-boolean p1, p0, Lcom/tudou/android/chat/ChatManager;->hasUnreadMessage:Z

    .line 869
    return-void
.end method
