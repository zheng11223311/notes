.class public Lio/rong/imkit/widget/provider/PublicServiceConversationProvider;
.super Lio/rong/imkit/widget/provider/PrivateConversationProvider;
.source "PublicServiceConversationProvider.java"

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
    conversationType = "public_service"
    portraitPosition = 0x1
.end annotation


# instance fields
.field private mKey:Lio/rong/imkit/model/ConversationKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/PrivateConversationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/view/View;ILandroid/os/Parcelable;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/os/Parcelable;

    .prologue
    .line 30
    check-cast p3, Lio/rong/imkit/model/UIConversation;

    .end local p3    # "x2":Landroid/os/Parcelable;
    invoke-virtual {p0, p1, p2, p3}, Lio/rong/imkit/widget/provider/PublicServiceConversationProvider;->bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "data"    # Lio/rong/imkit/model/UIConversation;

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3}, Lio/rong/imkit/widget/provider/PrivateConversationProvider;->bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V

    .line 66
    return-void
.end method

.method public getPortraitUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {p1, v2}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v2

    iput-object v2, p0, Lio/rong/imkit/widget/provider/PublicServiceConversationProvider;->mKey:Lio/rong/imkit/model/ConversationKey;

    .line 53
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/widget/provider/PublicServiceConversationProvider;->mKey:Lio/rong/imkit/model/ConversationKey;

    invoke-virtual {v3}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/RongContext;->getPublicServiceInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v0

    .line 55
    .local v0, "info":Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v1

    .line 60
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 58
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {p1, v2}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v2

    iput-object v2, p0, Lio/rong/imkit/widget/provider/PublicServiceConversationProvider;->mKey:Lio/rong/imkit/model/ConversationKey;

    .line 39
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/widget/provider/PublicServiceConversationProvider;->mKey:Lio/rong/imkit/model/ConversationKey;

    invoke-virtual {v3}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/RongContext;->getPublicServiceInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v0

    .line 41
    .local v0, "info":Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "name":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 44
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0
.end method
