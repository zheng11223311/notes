.class Lio/rong/imkit/fragment/ConversationFragment$1$1;
.super Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;
.source "ConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/fragment/ConversationFragment$1;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationFragment$1;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationFragment$1$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$1;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .param p1, "errorCode"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 143
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment$1$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/ConversationFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v0}, Lio/rong/imkit/fragment/ConversationFragment;->hiddenNotification()V

    .line 144
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment$1$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/ConversationFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$1$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$1;

    iget-object v1, v1, Lio/rong/imkit/fragment/ConversationFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_notice_create_discussion_fail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/fragment/ConversationFragment;->showNotification(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 121
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/ConversationFragment$1$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "discussionId"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rong://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment$1$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$1;

    iget-object v2, v2, Lio/rong/imkit/fragment/ConversationFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v2}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "targetId"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 128
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "createDiscussion"

    invoke-static {p0, v1, p1}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$1$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$1;

    iget-object v1, v1, Lio/rong/imkit/fragment/ConversationFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v1, v0}, Lio/rong/imkit/fragment/ConversationFragment;->setUri(Landroid/net/Uri;)V

    .line 132
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$1$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$1;

    iget-object v1, v1, Lio/rong/imkit/fragment/ConversationFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iget-object v1, v1, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/UriFragment;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$1$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$1;

    iget-object v1, v1, Lio/rong/imkit/fragment/ConversationFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iget-object v1, v1, Lio/rong/imkit/fragment/ConversationFragment;->mListFragment:Lio/rong/imkit/fragment/UriFragment;

    invoke-virtual {v1, v0}, Lio/rong/imkit/fragment/UriFragment;->setUri(Landroid/net/Uri;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$1$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$1;

    iget-object v1, v1, Lio/rong/imkit/fragment/ConversationFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iget-object v1, v1, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/UriFragment;

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$1$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$1;

    iget-object v1, v1, Lio/rong/imkit/fragment/ConversationFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iget-object v1, v1, Lio/rong/imkit/fragment/ConversationFragment;->mInputFragment:Lio/rong/imkit/fragment/UriFragment;

    invoke-virtual {v1, v0}, Lio/rong/imkit/fragment/UriFragment;->setUri(Landroid/net/Uri;)V

    .line 138
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$1$1;->this$1:Lio/rong/imkit/fragment/ConversationFragment$1;

    iget-object v1, v1, Lio/rong/imkit/fragment/ConversationFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationFragment;->hiddenNotification()V

    .line 139
    return-void
.end method
