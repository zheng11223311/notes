.class Lio/rong/imkit/fragment/ConversationFragment$1;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationFragment;->initFragment(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationFragment;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationFragment;Landroid/net/Uri;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iput-object p2, p0, Lio/rong/imkit/fragment/ConversationFragment$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lio/rong/imkit/fragment/ConversationFragment$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 120
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$color;->rc_notice_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_notice_loading:I

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v3}, Lio/rong/imkit/fragment/ConversationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$string;->rc_notice_create_discussion:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imkit/fragment/ConversationFragment;->showNotification(IILjava/lang/CharSequence;)V

    .line 121
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$1;->val$uri:Landroid/net/Uri;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment$1;->val$list:Ljava/util/List;

    new-instance v3, Lio/rong/imkit/fragment/ConversationFragment$1$1;

    invoke-direct {v3, p0}, Lio/rong/imkit/fragment/ConversationFragment$1$1;-><init>(Lio/rong/imkit/fragment/ConversationFragment$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imkit/RongIMClientWrapper;->createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;)V

    .line 147
    return-void
.end method
