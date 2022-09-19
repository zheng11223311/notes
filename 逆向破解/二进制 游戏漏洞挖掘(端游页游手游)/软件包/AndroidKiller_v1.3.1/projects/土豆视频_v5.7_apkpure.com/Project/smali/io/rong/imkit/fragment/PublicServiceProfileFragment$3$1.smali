.class Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;
.super Lio/rong/imlib/RongIMClient$OperationCallback;
.source "PublicServiceProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iput-object p2, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 216
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-static {v0}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$300(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Lio/rong/imkit/widget/LoadingDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/widget/LoadingDialogFragment;->dismiss()V

    .line 217
    return-void
.end method

.method public onSuccess()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 195
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v3, v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-static {v3}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$300(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Lio/rong/imkit/widget/LoadingDialogFragment;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/widget/LoadingDialogFragment;->dismiss()V

    .line 196
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v3, v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-static {v3}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$400(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Landroid/widget/Button;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v3, v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-static {v3}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$500(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v3, v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-static {v3}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$600(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getPublicServiceInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v0

    .line 201
    .local v0, "cache":Lio/rong/imkit/cache/RongCache;, "Lio/rong/imkit/cache/RongCache<Ljava/lang/String;Lio/rong/imlib/model/PublicServiceProfile;>;"
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v3, v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v3}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v4, v4, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v4}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v1

    .line 202
    .local v1, "key":Lio/rong/imkit/model/ConversationKey;
    invoke-virtual {v1}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 203
    invoke-virtual {v1}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v4, v4, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v0, v3, v4}, Lio/rong/imkit/cache/RongCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v4, v4, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v4}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v5, v5, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v5}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-static {v4, v5, v6}, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Z)Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getPublicServiceBehaviorListener()Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;

    move-result-object v2

    .line 206
    .local v2, "listener":Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->val$v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v4, v4, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-interface {v2, v3, v4}, Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;->onFollowClick(Landroid/content/Context;Lio/rong/imlib/model/PublicServiceProfile;)Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v3, v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-virtual {v3}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 210
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v4, v4, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-virtual {v4}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v5, v5, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v5}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v6, v6, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v6}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v7, v7, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v7}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lio/rong/imkit/RongIM;->startConversation(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
