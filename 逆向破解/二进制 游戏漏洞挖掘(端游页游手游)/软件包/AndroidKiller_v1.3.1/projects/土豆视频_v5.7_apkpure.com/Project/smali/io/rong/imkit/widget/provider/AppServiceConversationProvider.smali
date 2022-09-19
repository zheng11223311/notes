.class public Lio/rong/imkit/widget/provider/AppServiceConversationProvider;
.super Lio/rong/imkit/widget/provider/PrivateConversationProvider;
.source "AppServiceConversationProvider.java"

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
    conversationType = "app_public_service"
    portraitPosition = 0x1
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/PrivateConversationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getPortraitUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {p1, v3}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v1

    .line 36
    .local v1, "mKey":Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v1}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/RongContext;->getPublicServiceInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v0

    .line 38
    .local v0, "info":Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v2

    .line 43
    .local v2, "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 41
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {p1, v3}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v1

    .line 22
    .local v1, "mKey":Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v1}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/RongContext;->getPublicServiceInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v0

    .line 24
    .local v0, "info":Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "name":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 27
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_0
.end method
