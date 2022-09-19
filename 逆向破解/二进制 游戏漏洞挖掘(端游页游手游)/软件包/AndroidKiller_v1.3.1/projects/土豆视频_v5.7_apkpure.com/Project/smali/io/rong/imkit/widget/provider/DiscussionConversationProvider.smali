.class public Lio/rong/imkit/widget/provider/DiscussionConversationProvider;
.super Lio/rong/imkit/widget/provider/PrivateConversationProvider;
.source "DiscussionConversationProvider.java"

# interfaces
.implements Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/PrivateConversationProvider;",
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider",
        "<",
        "Lio/rong/imkit/model/UIConversation;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ConversationProviderTag;
    conversationType = "discussion"
    portraitPosition = 0x1
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/PrivateConversationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getPortraitUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/RongContext;->getDiscussionInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/Discussion;

    move-result-object v1

    if-nez v1, :cond_0

    .line 15
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_conversation_list_default_discussion_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 17
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/RongContext;->getDiscussionInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/Discussion;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0
.end method
