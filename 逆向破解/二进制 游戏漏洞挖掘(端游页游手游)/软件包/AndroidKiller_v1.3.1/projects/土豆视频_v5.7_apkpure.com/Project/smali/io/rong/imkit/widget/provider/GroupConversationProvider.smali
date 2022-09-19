.class public Lio/rong/imkit/widget/provider/GroupConversationProvider;
.super Lio/rong/imkit/widget/provider/PrivateConversationProvider;
.source "GroupConversationProvider.java"

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
    conversationType = "group"
    portraitPosition = 0x1
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/PrivateConversationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getPortraitUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/RongContext;->getGroupInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/Group;

    move-result-object v1

    if-nez v1, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 32
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 30
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/RongContext;->getGroupInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/Group;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Group;->getPortraitUri()Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/RongContext;->getGroupInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/Group;

    move-result-object v1

    if-nez v1, :cond_0

    .line 17
    const-string v0, ""

    .line 21
    .local v0, "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 19
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/RongContext;->getGroupInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/Group;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0
.end method
