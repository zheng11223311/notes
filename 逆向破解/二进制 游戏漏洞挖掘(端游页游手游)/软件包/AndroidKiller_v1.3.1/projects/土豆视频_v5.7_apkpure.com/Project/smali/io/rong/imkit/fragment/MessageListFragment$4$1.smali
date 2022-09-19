.class Lio/rong/imkit/fragment/MessageListFragment$4$1;
.super Lio/rong/imlib/RongIMClient$SendImageMessageCallback;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageListFragment$4;->onWarningViewClick(ILio/rong/imlib/model/Message;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/fragment/MessageListFragment$4;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/MessageListFragment$4;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$4$1;->this$1:Lio/rong/imkit/fragment/MessageListFragment$4;

    iput-object p2, p0, Lio/rong/imkit/fragment/MessageListFragment$4$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lio/rong/imlib/model/Message;)V
    .locals 0
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 249
    return-void
.end method

.method public onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "code"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 253
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$4$1;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public onProgress(Lio/rong/imlib/model/Message;I)V
    .locals 0
    .param p1, "message"    # Lio/rong/imlib/model/Message;
    .param p2, "progress"    # I

    .prologue
    .line 263
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 2
    .param p1, "message"    # Lio/rong/imlib/model/Message;

    .prologue
    .line 258
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$4$1;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 259
    return-void
.end method
