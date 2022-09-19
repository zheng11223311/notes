.class public Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;
.super Lio/rong/imkit/model/Event$BaseConversationEvent;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PublicServiceFollowableEvent"
.end annotation


# instance fields
.field private isFollow:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Z)V
    .locals 1
    .param p1, "targetId"    # Ljava/lang/String;
    .param p2, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p3, "isFollow"    # Z

    .prologue
    .line 565
    invoke-direct {p0}, Lio/rong/imkit/model/Event$BaseConversationEvent;-><init>()V

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;->isFollow:Z

    .line 566
    invoke-virtual {p0, p1}, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;->setTargetId(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0, p2}, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 568
    invoke-virtual {p0, p3}, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;->setIsFollow(Z)V

    .line 569
    return-void
.end method

.method public static obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Z)Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;
    .locals 1
    .param p0, "targetId"    # Ljava/lang/String;
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "isFollow"    # Z

    .prologue
    .line 572
    new-instance v0, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;

    invoke-direct {v0, p0, p1, p2}, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;-><init>(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Z)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 562
    invoke-super {p0}, Lio/rong/imkit/model/Event$BaseConversationEvent;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    invoke-super {p0}, Lio/rong/imkit/model/Event$BaseConversationEvent;->getTargetId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFollow()Z
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;->isFollow:Z

    return v0
.end method

.method public bridge synthetic setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 562
    invoke-super {p0, p1}, Lio/rong/imkit/model/Event$BaseConversationEvent;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    return-void
.end method

.method public setIsFollow(Z)V
    .locals 0
    .param p1, "isFollow"    # Z

    .prologue
    .line 580
    iput-boolean p1, p0, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;->isFollow:Z

    .line 581
    return-void
.end method

.method public bridge synthetic setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 562
    invoke-super {p0, p1}, Lio/rong/imkit/model/Event$BaseConversationEvent;->setTargetId(Ljava/lang/String;)V

    return-void
.end method
