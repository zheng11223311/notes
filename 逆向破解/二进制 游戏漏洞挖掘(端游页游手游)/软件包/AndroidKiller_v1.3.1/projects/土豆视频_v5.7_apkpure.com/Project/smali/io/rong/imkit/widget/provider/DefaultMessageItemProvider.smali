.class public Lio/rong/imkit/widget/provider/DefaultMessageItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "DefaultMessageItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/imlib/model/MessageContent;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    centerInHorizontal = true
    hide = true
    messageContent = Lio/rong/imlib/model/MessageContent;
    showSummaryWithName = false
    showWarning = false
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 23
    return-void
.end method

.method public getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .param p1, "data"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 33
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 38
    return-void
.end method
