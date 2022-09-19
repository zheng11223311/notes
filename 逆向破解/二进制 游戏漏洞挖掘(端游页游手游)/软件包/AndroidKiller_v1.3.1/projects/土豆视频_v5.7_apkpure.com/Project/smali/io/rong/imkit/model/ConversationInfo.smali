.class public Lio/rong/imkit/model/ConversationInfo;
.super Ljava/lang/Object;
.source "ConversationInfo.java"


# instance fields
.field conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field targetId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imkit/model/ConversationInfo;
    .locals 1
    .param p0, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Lio/rong/imkit/model/ConversationInfo;

    invoke-direct {v0}, Lio/rong/imkit/model/ConversationInfo;-><init>()V

    .line 16
    .local v0, "info":Lio/rong/imkit/model/ConversationInfo;
    iput-object p0, v0, Lio/rong/imkit/model/ConversationInfo;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 17
    iput-object p1, v0, Lio/rong/imkit/model/ConversationInfo;->targetId:Ljava/lang/String;

    .line 18
    return-object v0
.end method


# virtual methods
.method public getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/model/ConversationInfo;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lio/rong/imkit/model/ConversationInfo;->targetId:Ljava/lang/String;

    return-object v0
.end method
