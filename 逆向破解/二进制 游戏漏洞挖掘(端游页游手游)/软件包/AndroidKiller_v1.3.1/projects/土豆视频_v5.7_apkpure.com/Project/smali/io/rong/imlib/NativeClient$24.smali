.class Lio/rong/imlib/NativeClient$24;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$ChatroomInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->queryChatRoomInfo(Ljava/lang/String;IILio/rong/imlib/NativeClient$IResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 0

    .prologue
    .line 1868
    iput-object p1, p0, Lio/rong/imlib/NativeClient$24;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$24;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lio/rong/imlib/NativeClient$24;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 1889
    iget-object v0, p0, Lio/rong/imlib/NativeClient$24;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$IResultCallback;->onError(I)V

    .line 1890
    return-void
.end method

.method public OnSuccess(I[Lio/rong/imlib/NativeObject$UserInfo;)V
    .locals 6
    .param p1, "members"    # I
    .param p2, "users"    # [Lio/rong/imlib/NativeObject$UserInfo;

    .prologue
    .line 1871
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1872
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/ChatRoomMemberInfo;>;"
    if-eqz p2, :cond_0

    .line 1873
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 1874
    new-instance v1, Lio/rong/imlib/model/ChatRoomMemberInfo;

    invoke-direct {v1}, Lio/rong/imlib/model/ChatRoomMemberInfo;-><init>()V

    .line 1875
    .local v1, "info":Lio/rong/imlib/model/ChatRoomMemberInfo;
    aget-object v3, p2, v0

    invoke-virtual {v3}, Lio/rong/imlib/NativeObject$UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/ChatRoomMemberInfo;->setUserId(Ljava/lang/String;)V

    .line 1876
    aget-object v3, p2, v0

    invoke-virtual {v3}, Lio/rong/imlib/NativeObject$UserInfo;->getJoinTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lio/rong/imlib/model/ChatRoomMemberInfo;->setJoinTime(J)V

    .line 1877
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1873
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1880
    .end local v0    # "i":I
    .end local v1    # "info":Lio/rong/imlib/model/ChatRoomMemberInfo;
    :cond_0
    new-instance v1, Lio/rong/imlib/model/ChatRoomInfo;

    invoke-direct {v1}, Lio/rong/imlib/model/ChatRoomInfo;-><init>()V

    .line 1881
    .local v1, "info":Lio/rong/imlib/model/ChatRoomInfo;
    iget-object v3, p0, Lio/rong/imlib/NativeClient$24;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/ChatRoomInfo;->setChatRoomId(Ljava/lang/String;)V

    .line 1882
    invoke-virtual {v1, p1}, Lio/rong/imlib/model/ChatRoomInfo;->setTotalMemberCount(I)V

    .line 1883
    invoke-virtual {v1, v2}, Lio/rong/imlib/model/ChatRoomInfo;->setMemberInfo(Ljava/util/List;)V

    .line 1884
    iget-object v3, p0, Lio/rong/imlib/NativeClient$24;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v3, v1}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1885
    return-void
.end method
