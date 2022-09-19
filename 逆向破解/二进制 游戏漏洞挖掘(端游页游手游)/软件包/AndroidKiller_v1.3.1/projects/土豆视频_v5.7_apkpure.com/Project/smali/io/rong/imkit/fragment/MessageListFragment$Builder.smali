.class public Lio/rong/imkit/fragment/MessageListFragment$Builder;
.super Ljava/lang/Object;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/fragment/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private targetId:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$Builder;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$Builder;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .param p1, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;

    .prologue
    .line 1148
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$Builder;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 1149
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetId"    # Ljava/lang/String;

    .prologue
    .line 1156
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$Builder;->targetId:Ljava/lang/String;

    .line 1157
    return-void
.end method
