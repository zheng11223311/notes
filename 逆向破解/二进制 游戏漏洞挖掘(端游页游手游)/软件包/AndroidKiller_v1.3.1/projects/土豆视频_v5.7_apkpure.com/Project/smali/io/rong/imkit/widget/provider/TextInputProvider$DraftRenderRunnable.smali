.class Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;
.super Ljava/lang/Object;
.source "TextInputProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/provider/TextInputProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DraftRenderRunnable"
.end annotation


# instance fields
.field conversation:Lio/rong/imlib/model/Conversation;

.field final synthetic this$0:Lio/rong/imkit/widget/provider/TextInputProvider;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/TextInputProvider;Lio/rong/imlib/model/Conversation;)V
    .locals 0
    .param p2, "conversation"    # Lio/rong/imlib/model/Conversation;

    .prologue
    .line 137
    iput-object p1, p0, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;->this$0:Lio/rong/imkit/widget/provider/TextInputProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;->conversation:Lio/rong/imlib/model/Conversation;

    .line 139
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;->conversation:Lio/rong/imlib/model/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable$1;

    invoke-direct {v3, p0}, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable$1;-><init>(Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imlib/RongIMClient;->getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method
