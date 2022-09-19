.class Lio/rong/imkit/fragment/MessageListFragment$4$2;
.super Lio/rong/imlib/RongIMClient$SendMessageCallback;
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
    .line 268
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$4$2;->this$1:Lio/rong/imkit/fragment/MessageListFragment$4;

    iput-object p2, p0, Lio/rong/imkit/fragment/MessageListFragment$4$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/Integer;
    .param p2, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 271
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$4$2;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 276
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$4$2;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 268
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/MessageListFragment$4$2;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
