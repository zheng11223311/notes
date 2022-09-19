.class Lio/rong/imkit/fragment/PublicServiceProfileFragment$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "PublicServiceProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/PublicServiceProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 120
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_load_data_fail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->showNotification(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 4
    .param p1, "info"    # Lio/rong/imlib/model/PublicServiceProfile;

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v2, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-static {v2, p1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$000(Lio/rong/imkit/fragment/PublicServiceProfileFragment;Lio/rong/imlib/model/PublicServiceProfile;)V

    .line 110
    iget-object v2, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-static {v2}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$100(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-static {v3}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$200(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v1

    .line 111
    .local v1, "key":Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    .line 112
    .local v0, "context":Lio/rong/imkit/RongContext;
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getPublicServiceInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v2

    invoke-virtual {v1}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lio/rong/imkit/cache/RongCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v0    # "context":Lio/rong/imkit/RongContext;
    .end local v1    # "key":Lio/rong/imkit/model/ConversationKey;
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 105
    check-cast p1, Lio/rong/imlib/model/PublicServiceProfile;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment$1;->onSuccess(Lio/rong/imlib/model/PublicServiceProfile;)V

    return-void
.end method
