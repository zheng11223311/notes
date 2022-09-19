.class Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "TextInputProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable$1;->this$1:Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 218
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable$1;->this$1:Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable;

    iget-object v3, v3, Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    .line 210
    .local v2, "type":I
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable$1;->this$1:Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable;

    iget-object v3, v3, Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable;->conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "targetId":Ljava/lang/String;
    new-instance v0, Lio/rong/imkit/model/Draft;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3, v4, v4}, Lio/rong/imkit/model/Draft;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[B)V

    .line 212
    .local v0, "draft":Lio/rong/imkit/model/Draft;
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable$1;->this$1:Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable;

    iget-object v3, v3, Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable;->this$0:Lio/rong/imkit/widget/provider/TextInputProvider;

    invoke-virtual {v3}, Lio/rong/imkit/widget/provider/TextInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v3

    invoke-virtual {v3, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 206
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
