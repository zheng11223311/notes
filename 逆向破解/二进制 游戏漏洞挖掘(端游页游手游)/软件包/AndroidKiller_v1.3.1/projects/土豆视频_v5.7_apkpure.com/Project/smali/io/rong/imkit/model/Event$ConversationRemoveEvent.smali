.class public Lio/rong/imkit/model/Event$ConversationRemoveEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationRemoveEvent"
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
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->type:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 160
    iput-object p2, p0, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->targetId:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->type:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetId"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->targetId:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .param p1, "type"    # Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 168
    iput-object p1, p0, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->type:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 169
    return-void
.end method
