.class Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$2;
.super Ljava/lang/Object;
.source "PublicServiceSubscribeListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$2;->this$0:Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 63
    new-array v1, v5, [Ljava/lang/String;

    .line 64
    .local v1, "item":[Ljava/lang/String;
    iget-object v2, p0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$2;->this$0:Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;

    invoke-static {v2}, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;->access$000(Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;)Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$PublicServiceListAdapter;->getItem(I)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v0

    .line 65
    .local v0, "info":Lio/rong/imlib/model/PublicServiceProfile;
    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v2, v3, :cond_0

    .line 66
    const/4 v2, 0x0

    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$2;->this$0:Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;

    invoke-virtual {v3}, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$string;->rc_pub_service_info_unfollow:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 67
    :cond_0
    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$2$1;

    invoke-direct {v3, p0, v0, p3}, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$2$1;-><init>(Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$2;Lio/rong/imlib/model/PublicServiceProfile;I)V

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment$2;->this$0:Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;

    invoke-virtual {v3}, Lio/rong/imkit/fragment/PublicServiceSubscribeListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 93
    return v5
.end method
