.class Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;
.super Ljava/lang/Object;
.source "PublicServiceProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/PublicServiceProfileFragment;->initData(Lio/rong/imlib/model/PublicServiceProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

.field final synthetic val$info:Lio/rong/imlib/model/PublicServiceProfile;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/PublicServiceProfileFragment;Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    iput-object p2, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "publicServiceType":Lio/rong/imlib/model/Conversation$PublicServiceType;
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-static {v1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$200(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v1, v2, :cond_0

    .line 229
    sget-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    .line 235
    :goto_0
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v2}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;

    invoke-direct {v3, p0, p1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;-><init>(Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;Landroid/view/View;)V

    invoke-virtual {v1, v0, v2, v3}, Lio/rong/imkit/RongIMClientWrapper;->unsubscribePublicService(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 261
    return-void

    .line 230
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-static {v1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$200(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v1, v2, :cond_1

    .line 231
    sget-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    goto :goto_0

    .line 233
    :cond_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v2, "the public service type is error!!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method
