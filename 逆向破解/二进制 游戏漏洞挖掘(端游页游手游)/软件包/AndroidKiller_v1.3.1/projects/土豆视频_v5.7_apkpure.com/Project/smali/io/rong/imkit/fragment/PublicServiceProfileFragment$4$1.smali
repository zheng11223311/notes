.class Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;
.super Lio/rong/imlib/RongIMClient$OperationCallback;
.source "PublicServiceProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iput-object p2, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 259
    return-void
.end method

.method public onSuccess()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 238
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v3, v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-static {v3}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$400(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 239
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v3, v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-static {v3}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$500(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 240
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v3, v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-static {v3}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$600(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 242
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getPublicServiceInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v0

    .line 243
    .local v0, "cache":Lio/rong/imkit/cache/RongCache;, "Lio/rong/imkit/cache/RongCache<Ljava/lang/String;Lio/rong/imlib/model/PublicServiceProfile;>;"
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v3, v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v3}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v4, v4, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v4}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v1

    .line 244
    .local v1, "key":Lio/rong/imkit/model/ConversationKey;
    invoke-virtual {v1}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 245
    invoke-virtual {v1}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/rong/imkit/cache/RongCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v4, v4, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v4}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v5, v5, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v5}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-static {v4, v5, v6}, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Z)Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 248
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getPublicServiceBehaviorListener()Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;

    move-result-object v2

    .line 249
    .local v2, "listener":Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->val$v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v4, v4, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-interface {v2, v3, v4}, Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;->onUnFollowClick(Landroid/content/Context;Lio/rong/imlib/model/PublicServiceProfile;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v3, v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-virtual {v3}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
