.class Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "PublicServiceSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/PublicServiceProfileList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;->this$1:Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 82
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;->this$1:Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceSearchFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceSearchFragment;->mLoadingDialogFragment:Lio/rong/imkit/widget/LoadingDialogFragment;

    invoke-virtual {v0}, Lio/rong/imkit/widget/LoadingDialogFragment;->dismiss()V

    .line 83
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/PublicServiceProfileList;)V
    .locals 2
    .param p1, "list"    # Lio/rong/imlib/model/PublicServiceProfileList;

    .prologue
    .line 87
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;->this$1:Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceSearchFragment;

    invoke-static {v0}, Lio/rong/imkit/fragment/PublicServiceSearchFragment;->access$100(Lio/rong/imkit/fragment/PublicServiceSearchFragment;)Lio/rong/imkit/fragment/PublicServiceSearchFragment$PublicServiceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/fragment/PublicServiceSearchFragment$PublicServiceListAdapter;->clear()V

    .line 88
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;->this$1:Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceSearchFragment;

    invoke-static {v0}, Lio/rong/imkit/fragment/PublicServiceSearchFragment;->access$100(Lio/rong/imkit/fragment/PublicServiceSearchFragment;)Lio/rong/imkit/fragment/PublicServiceSearchFragment$PublicServiceListAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfileList;->getPublicServiceData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/fragment/PublicServiceSearchFragment$PublicServiceListAdapter;->addCollection(Ljava/util/Collection;)V

    .line 89
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;->this$1:Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceSearchFragment;

    invoke-static {v0}, Lio/rong/imkit/fragment/PublicServiceSearchFragment;->access$100(Lio/rong/imkit/fragment/PublicServiceSearchFragment;)Lio/rong/imkit/fragment/PublicServiceSearchFragment$PublicServiceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/fragment/PublicServiceSearchFragment$PublicServiceListAdapter;->notifyDataSetChanged()V

    .line 90
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;->this$1:Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1;->this$0:Lio/rong/imkit/fragment/PublicServiceSearchFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceSearchFragment;->mLoadingDialogFragment:Lio/rong/imkit/widget/LoadingDialogFragment;

    invoke-virtual {v0}, Lio/rong/imkit/widget/LoadingDialogFragment;->dismiss()V

    .line 91
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 78
    check-cast p1, Lio/rong/imlib/model/PublicServiceProfileList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/PublicServiceSearchFragment$1$1;->onSuccess(Lio/rong/imlib/model/PublicServiceProfileList;)V

    return-void
.end method
