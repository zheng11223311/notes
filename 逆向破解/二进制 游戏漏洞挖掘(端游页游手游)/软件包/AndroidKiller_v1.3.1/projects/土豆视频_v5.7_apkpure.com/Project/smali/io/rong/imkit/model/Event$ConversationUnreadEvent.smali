.class public Lio/rong/imkit/model/Event$ConversationUnreadEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationUnreadEvent"
.end annotation


# instance fields
.field targetId:Ljava/lang/String;

.field type:Lio/rong/imlib/model/Conversation$ConversationType;


# direct methods
.method public constructor <init>(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p2, "targetId"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lio/rong/imkit/model/Event$ConversationUnreadEvent;->type:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 115
    iput-object p2, p0, Lio/rong/imkit/model/Event$ConversationUnreadEvent;->targetId:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lio/rong/imkit/model/Event$ConversationUnreadEvent;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lio/rong/imkit/model/Event$ConversationUnreadEvent;->type:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetId"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lio/rong/imkit/model/Event$ConversationUnreadEvent;->targetId:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 123
    iput-object p1, p0, Lio/rong/imkit/model/Event$ConversationUnreadEvent;->type:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 124
    return-void
.end method
