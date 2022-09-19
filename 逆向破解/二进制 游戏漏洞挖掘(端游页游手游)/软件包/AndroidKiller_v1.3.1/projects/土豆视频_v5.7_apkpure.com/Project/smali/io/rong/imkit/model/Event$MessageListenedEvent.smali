.class public Lio/rong/imkit/model/Event$MessageListenedEvent;
.super Lio/rong/imkit/model/Event$BaseConversationEvent;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageListenedEvent"
.end annotation


# instance fields
.field private latestMessageId:I


# direct methods
.method public constructor <init>(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "messageId"    # I

    .prologue
    .line 613
    invoke-direct {p0}, Lio/rong/imkit/model/Event$BaseConversationEvent;-><init>()V

    .line 614
    invoke-virtual {p0, p1}, Lio/rong/imkit/model/Event$MessageListenedEvent;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 615
    invoke-virtual {p0, p2}, Lio/rong/imkit/model/Event$MessageListenedEvent;->setTargetId(Ljava/lang/String;)V

    .line 616
    iput p3, p0, Lio/rong/imkit/model/Event$MessageListenedEvent;->latestMessageId:I

    .line 617
    return-void
.end method


# virtual methods
.method public bridge synthetic getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 610
    invoke-super {p0}, Lio/rong/imkit/model/Event$BaseConversationEvent;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    return-object v0
.end method

.method public getLatestMessageId()I
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lio/rong/imkit/model/Event$MessageListenedEvent;->latestMessageId:I

    return v0
.end method

.method public bridge synthetic getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    invoke-super {p0}, Lio/rong/imkit/model/Event$BaseConversationEvent;->getTargetId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 610
    invoke-super {p0, p1}, Lio/rong/imkit/model/Event$BaseConversationEvent;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    return-void
.end method

.method public setLatestMessageId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 620
    iput p1, p0, Lio/rong/imkit/model/Event$MessageListenedEvent;->latestMessageId:I

    .line 621
    return-void
.end method

.method public bridge synthetic setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 610
    invoke-super {p0, p1}, Lio/rong/imkit/model/Event$BaseConversationEvent;->setTargetId(Ljava/lang/String;)V

    return-void
.end method
