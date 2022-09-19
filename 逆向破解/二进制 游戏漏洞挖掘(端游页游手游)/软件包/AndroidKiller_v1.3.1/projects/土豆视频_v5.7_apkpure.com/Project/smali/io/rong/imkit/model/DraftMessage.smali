.class public Lio/rong/imkit/model/DraftMessage;
.super Ljava/lang/Object;
.source "DraftMessage.java"


# instance fields
.field private content:Ljava/lang/String;

.field private conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private targetId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/DraftMessage;
    .locals 1
    .param p0, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "msgContent"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v0, Lio/rong/imkit/model/DraftMessage;

    invoke-direct {v0}, Lio/rong/imkit/model/DraftMessage;-><init>()V

    .line 17
    .local v0, "obj":Lio/rong/imkit/model/DraftMessage;
    iput-object p2, v0, Lio/rong/imkit/model/DraftMessage;->content:Ljava/lang/String;

    .line 18
    iput-object p0, v0, Lio/rong/imkit/model/DraftMessage;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 19
    iput-object p1, v0, Lio/rong/imkit/model/DraftMessage;->targetId:Ljava/lang/String;

    .line 20
    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lio/rong/imkit/model/DraftMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lio/rong/imkit/model/DraftMessage;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/rong/imkit/model/DraftMessage;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lio/rong/imkit/model/DraftMessage;->content:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 39
    iput-object p1, p0, Lio/rong/imkit/model/DraftMessage;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 40
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lio/rong/imkit/model/DraftMessage;->targetId:Ljava/lang/String;

    .line 33
    return-void
.end method
