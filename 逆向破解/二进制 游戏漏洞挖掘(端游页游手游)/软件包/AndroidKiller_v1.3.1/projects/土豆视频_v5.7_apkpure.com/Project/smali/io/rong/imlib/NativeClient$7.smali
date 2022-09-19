.class Lio/rong/imlib/NativeClient$7;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$AccountInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->searchPublicService(Ljava/lang/String;IILio/rong/imlib/NativeClient$IResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$callback:Lio/rong/imlib/NativeClient$IResultCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lio/rong/imlib/NativeClient$7;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$7;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 990
    iget-object v0, p0, Lio/rong/imlib/NativeClient$7;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$IResultCallback;->onError(I)V

    .line 991
    return-void
.end method

.method public onReceived([Lio/rong/imlib/NativeObject$AccountInfo;)V
    .locals 8
    .param p1, "info"    # [Lio/rong/imlib/NativeObject$AccountInfo;

    .prologue
    .line 969
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 971
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/rong/imlib/model/PublicServiceProfile;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_0

    .line 972
    new-instance v2, Lio/rong/imlib/model/PublicServiceProfile;

    invoke-direct {v2}, Lio/rong/imlib/model/PublicServiceProfile;-><init>()V

    .line 973
    .local v2, "item":Lio/rong/imlib/model/PublicServiceProfile;
    new-instance v5, Ljava/lang/String;

    aget-object v6, p1, v0

    invoke-virtual {v6}, Lio/rong/imlib/NativeObject$AccountInfo;->getAccountId()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v5}, Lio/rong/imlib/model/PublicServiceProfile;->setTargetId(Ljava/lang/String;)V

    .line 974
    new-instance v5, Ljava/lang/String;

    aget-object v6, p1, v0

    invoke-virtual {v6}, Lio/rong/imlib/NativeObject$AccountInfo;->getAccountName()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v5}, Lio/rong/imlib/model/PublicServiceProfile;->setName(Ljava/lang/String;)V

    .line 975
    aget-object v5, p1, v0

    invoke-virtual {v5}, Lio/rong/imlib/NativeObject$AccountInfo;->getAccountType()I

    move-result v5

    invoke-static {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v2, v5}, Lio/rong/imlib/model/PublicServiceProfile;->setPublicServiceType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 976
    new-instance v5, Ljava/lang/String;

    aget-object v6, p1, v0

    invoke-virtual {v6}, Lio/rong/imlib/NativeObject$AccountInfo;->getAccountUri()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Lio/rong/imlib/model/PublicServiceProfile;->setPortraitUri(Landroid/net/Uri;)V

    .line 978
    new-instance v4, Ljava/lang/String;

    aget-object v5, p1, v0

    invoke-virtual {v5}, Lio/rong/imlib/NativeObject$AccountInfo;->getExtra()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 979
    .local v4, "ss":Ljava/lang/String;
    const-string v5, "getPublicAccountInfoList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-virtual {v2, v4}, Lio/rong/imlib/model/PublicServiceProfile;->setExtra(Ljava/lang/String;)V

    .line 981
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 984
    .end local v2    # "item":Lio/rong/imlib/model/PublicServiceProfile;
    .end local v4    # "ss":Ljava/lang/String;
    :cond_0
    new-instance v1, Lio/rong/imlib/model/PublicServiceProfileList;

    invoke-direct {v1, v3}, Lio/rong/imlib/model/PublicServiceProfileList;-><init>(Ljava/util/ArrayList;)V

    .line 985
    .local v1, "infoList":Lio/rong/imlib/model/PublicServiceProfileList;
    iget-object v5, p0, Lio/rong/imlib/NativeClient$7;->val$callback:Lio/rong/imlib/NativeClient$IResultCallback;

    invoke-interface {v5, v1}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 986
    return-void
.end method
