.class Lio/rong/imkit/fragment/MessageInputFragment$3;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "MessageInputFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageInputFragment;->setCurrentConversation(Lio/rong/imlib/model/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/PublicServiceProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/MessageInputFragment;

.field final synthetic val$conversation:Lio/rong/imlib/model/Conversation;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imlib/model/Conversation;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageInputFragment$3;->this$0:Lio/rong/imkit/fragment/MessageInputFragment;

    iput-object p2, p0, Lio/rong/imkit/fragment/MessageInputFragment$3;->val$conversation:Lio/rong/imlib/model/Conversation;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 128
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageInputFragment$3;->this$0:Lio/rong/imkit/fragment/MessageInputFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v1

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imkit/widget/InputView;->setInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    .line 130
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 6
    .param p1, "publicServiceProfile"    # Lio/rong/imlib/model/PublicServiceProfile;

    .prologue
    .line 113
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageInputFragment$3;->val$conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/MessageInputFragment$3;->val$conversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v0

    .line 114
    .local v0, "key":Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getPublicServiceInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v2

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lio/rong/imkit/cache/RongCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getMenu()Lio/rong/imlib/model/PublicServiceMenu;

    move-result-object v1

    .line 116
    .local v1, "menu":Lio/rong/imlib/model/PublicServiceMenu;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceMenu;->getMenuItems()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceMenu;->getMenuItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 117
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageInputFragment$3;->this$0:Lio/rong/imkit/fragment/MessageInputFragment;

    iget-object v2, v2, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v3

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v4

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getMenuInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lio/rong/imkit/widget/InputView;->setInputProviderEx(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageInputFragment$3;->this$0:Lio/rong/imkit/fragment/MessageInputFragment;

    iget-object v2, v2, Lio/rong/imkit/fragment/MessageInputFragment;->mInput:Lio/rong/imkit/widget/InputView;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getPrimaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v3

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getSecondaryInputProvider()Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/rong/imkit/widget/InputView;->setInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, Lio/rong/imlib/model/PublicServiceProfile;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/MessageInputFragment$3;->onSuccess(Lio/rong/imlib/model/PublicServiceProfile;)V

    return-void
.end method
