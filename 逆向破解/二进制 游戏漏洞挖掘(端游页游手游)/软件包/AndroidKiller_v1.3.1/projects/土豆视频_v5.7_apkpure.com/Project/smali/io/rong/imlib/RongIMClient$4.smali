.class Lio/rong/imlib/RongIMClient$4;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

.field final synthetic val$conversationTypes:[Lio/rong/imlib/model/Conversation$ConversationType;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$4;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$4;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$4;->val$conversationTypes:[Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 820
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$4;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v4, v4, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v4, :cond_1

    .line 821
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$4;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v4, :cond_0

    .line 822
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$4;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v5, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v4, v5}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$4;->val$conversationTypes:[Lio/rong/imlib/model/Conversation$ConversationType;

    array-length v4, v4

    if-nez v4, :cond_2

    .line 827
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$4;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 832
    :cond_2
    :try_start_0
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$4;->val$conversationTypes:[Lio/rong/imlib/model/Conversation$ConversationType;

    array-length v4, v4

    new-array v3, v4, [I

    .line 834
    .local v3, "typeValues":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$4;->val$conversationTypes:[Lio/rong/imlib/model/Conversation$ConversationType;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 835
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$4;->val$conversationTypes:[Lio/rong/imlib/model/Conversation$ConversationType;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v4

    aput v4, v3, v2

    .line 834
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 837
    :cond_3
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$4;->this$0:Lio/rong/imlib/RongIMClient;

    iget-object v4, v4, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-interface {v4, v3}, Lio/rong/imlib/IHandler;->getConversationListByType([I)Ljava/util/List;

    move-result-object v0

    .line 838
    .local v0, "conversationList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$4;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v4, :cond_0

    .line 840
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$4;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v4, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 843
    .end local v0    # "conversationList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    .end local v2    # "i":I
    .end local v3    # "typeValues":[I
    :catch_0
    move-exception v1

    .line 844
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 845
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$4;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v4, :cond_0

    .line 846
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$4;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v5, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v4, v5}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method
